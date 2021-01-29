--- 延时游戏时间0.1秒，确保已进入游戏
local startTrigger = cj.CreateTrigger()

cj.TriggerRegisterTimerEvent(startTrigger, 0.1, false)
cj.TriggerAddAction(startTrigger, function()
    cj.DisableTrigger(startTrigger)
    cj.DestroyTrigger(startTrigger)

    hattribute.setThreeBuff({
        primary = 0,
        str = nil,
        agi = nil,
        int = {
            mana = 5,
        }
    })

    -- 初始调试物品
    hitem.create({
        itemId = hitem.n2i("双铁剑"),
        charges = 2,
        x = 400,
        y = 400,
    })
    for _ = 1, 12 do
        hitem.create({
            itemId = hitem.n2i("铁剑"),
            charges = 1,
            x = 156,
            y = 785,
        })
        hitem.create({
            itemId = hitem.n2i("铁盾"),
            charges = 1,
            x = 872,
            y = 551,
        })
    end

    -- 这些ID只要正确使用了slkHelper，就可以根据名称获得ID，极其爽
    local uidMe = hunit.n2i("剑士")
    local uidEnemy = hunit.n2i("骑士")
    -- 创造一个我的剑士打倒敌人骑兵
    local me = hunit.create({
        whichPlayer = hplayer.players[1],
        unitId = uidMe,
        x = 0,
        y = 0,
        attr = {
            e_fire_attack = "+1", -- 附魔1层火
            attack_speed = "+5",
            life = "+5000",
            life_back = "+100",
            weight = "+100",
            -- 单位自身的暴击（自身的暴击可降低回避效果，伤害是在原伤害上加成，不独立计算）
            knocking_odds = "+10",
            knocking_extent = "+100",
        }
    })
    table.insert(hhero.player_heroes[1], me)
    -- 小绵羊信使
    hunit.create({
        whichPlayer = hplayer.players[1],
        unitId = hunit.n2i("冷静的绵羊"),
        x = 100,
        y = 100,
        attr = {
            weight = "+10000", -- 负重
        }
    })
    onExp(me)
    hattr.set(me, 0, {
        xtras = {
            add = {
                -- 额外特效的暴击（回避可使此暴击无效，伤害独立）
                {
                    on = CONST_EVENT.attack, action = "targetUnit.spec.knocking", val = "triggerUnit.attack",
                    odds = 20, percent = { 25, 125 }, effect = nil
                },
                -- 越暴击，火伤害越高！
                {
                    on = CONST_EVENT.knocking, action = "triggerUnit.attr.e_fire", val = 10, during = 5,
                    odds = 75, percent = 100 --[[默认100]], effect = nil
                },
                -- 攻击分裂10%！
                {
                    on = CONST_EVENT.attack, action = "targetUnit.spec.split", val = 'damage',
                    radius = 500, odds = 100, percent = 10, effect = nil
                },
            }
        },
    })
    henemy.create({
        whichPlayer = hplayer.players[1],
        unitId = uidEnemy,
        x = 0,
        y = 0,
        qty = 2,
        attr = {
            attack_white = "+100",
            life = "+500000",
            life_back = "+3000",
            damage_reduction = "+50",
        }
    })
    -- 伤害变成经验
    hevent.onDamage(me, function(evtData)
        haward.forUnitExp(evtData.triggerUnit, evtData.damage / 30)
    end)
    -- 暴击时获得1黄金
    hevent.onKnocking(me, function(evtData)
        haward.forUnitGold(evtData.triggerUnit, 1)
        print_mb(hunit.getName(evtData.triggerUnit)
            .. "攻击是" .. hattr.get(evtData.triggerUnit, 'attack') .. '点->'
            .. "暴击" .. evtData.damage .. "血")
    end)
end)
