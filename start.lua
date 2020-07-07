--- 延时游戏时间0.1秒，确保已进入游戏
local startTrigger = cj.CreateTrigger()
cj.TriggerRegisterTimerEvent(startTrigger, 0.1, false)
cj.TriggerAddAction(startTrigger, function()
    cj.DisableTrigger(startTrigger)
    cj.DestroyTrigger(startTrigger)

    -- 这些ID只要正确使用了slkHelper，就会自动获得，极其爽
    local uidMe = hslk_global.name2Value.unit["剑士"].UNIT_ID
    local uidEnemy = hslk_global.name2Value.unit["骑士"].UNIT_ID

    -- 创造一个我的剑士打倒敌人骑兵
    local me = hunit.create({
        whichPlayer = hplayer.players[1],
        unitId = uidMe,
        x = 0,
        y = 0,
    })
    hattr.set(me, 0, {
        attack_damage_type = "+fire",
        attack_speed = "+500",
        life = "+2000",
        life_back = "+100",
        attack_white = "+10000000",
        attack_effect = {
            add = {
                { attr = "knocking", odds = 10, percent = 30, effect = nil },
                { attr = "knocking", odds = 15, percent = 30, effect = nil },
                { attr = "knocking", odds = 20, percent = 30, effect = nil },
                { attr = "knocking", odds = 25, percent = 30, effect = nil },
                { attr = "knocking", odds = 30, percent = 30, effect = nil },
                { attr = "crack_fly", odds = 20, val = 20, during = 0.6, effect = nil, distance = 100, high = 500 }
            }
        }
    })
    local enemy = henemy.create({
        whichPlayer = hplayer.players[1],
        unitId = uidEnemy,
        x = 0,
        y = 0,
    })
    hattr.set(enemy, 0, {
        attack_white = "+150",
        life = "+5000000",
        life_back = "+100000",
        toughness = "+12000000",
        attack_effect = {
            add = {
                { attr = "swim", odds = 10, val = 10, during = 2, effect = nil },
                { attr = "lightning_chain", odds = 75, val = 30, effect = nil, qty = 1, reduce = 0.0 },
            }
        }
    })
    -- 伤害变成经验
    hevent.onDamage(me, function(evtData)
        haward.forUnitExp(evtData.triggerUnit, evtData.damage)
    end)
    hevent.onDamage(enemy, function(evtData)
        haward.forUnitExp(evtData.triggerUnit, evtData.damage)
    end)
end)
