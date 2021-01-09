--- 延时游戏时间0.1秒，确保已进入游戏
local startTrigger = cj.CreateTrigger()

cj.TriggerRegisterTimerEvent(startTrigger, 0.1, false)
cj.TriggerAddAction(startTrigger, function()
    cj.DisableTrigger(startTrigger)
    cj.DestroyTrigger(startTrigger)

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
            attack_speed = "+50",
            life = "+2000",
            life_back = "+100",
            attack_white = "+100",
            weight = "+100",
            -- 单位自身的暴击（自身的暴击可降低回避效果，伤害是在原伤害上加成，不独立计算）
            knocking_odds = "+10",
            knocking_extent = "+100",
        }
    })
    onExp(me)
    hattr.set(me, 0, {
        xtras = {
            add = {
                -- 额外特效的暴击（回避可使此暴击无效，伤害独立）
                {
                    on = CONST_EVENT.attack, action = "targetUnit.spec.knocking", val = "triggerUnit.attack",
                    odds = 20, percent = { 100, 500 }, effect = nil
                },
                -- 越暴击，火伤害越高！
                {
                    on = CONST_EVENT.knocking, action = "triggerUnit.attr.e_fire", val = 10, during = 5,
                    odds = 75, percent = 100 --[[默认100]], effect = nil
                },
                -- 攻击分裂！
                {
                    on = CONST_EVENT.attack, action = "targetUnit.spec.split", val = 'triggerUnit.attack',
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
            attack_white = "+150",
            life = "+5000000",
            life_back = "+5000",
            damage_reduction = "+50",
        }
    })
    -- 伤害变成经验
    hevent.onDamage(me, function(evtData)
        haward.forUnitExp(evtData.triggerUnit, evtData.damage)
    end)
    hevent.onKnocking(me, function(evtData)
        print_mb(hunit.getName(evtData.triggerUnit)
            .. "攻击是" .. hattr.get(evtData.triggerUnit, 'attack') .. '点->'
            .. "暴击" .. evtData.damage .. "血")
    end)
end)
