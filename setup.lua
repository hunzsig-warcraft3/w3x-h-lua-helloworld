-- 设定玩家
hplayer.qty_max = 1 -- 最大玩家数
hplayer.convert_ratio = 1000000 -- 换算比率，100金 -> 1木

-- 设定敌军
henemy.set("怪物", nil, { 2 }, false)

-- 调试去除迷雾
if (HLUA_DEBUG == true) then
    henv.setFogStatus(false, false)
else
    henv.setFogStatus(true, true)
end

--- 设定获得黄金木头特效
hevent.onPlayerResourceChange(function(evtData)
    if (evtData.triggerUnit ~= nil and evtData.value > 0) then
        local u = evtData.triggerUnit
        local val = math.floor(evtData.value)
        if (evtData.type == 'gold') then
            htextTag.style(htextTag.create2Unit(u, "+" .. val .. " 金", 6, "ffcc00", 1, 1.70, 60.00), "toggle", 0, 0.20)
            hsound.sound2Unit(cg.gg_snd_ReceiveGold, 100, u)
        elseif (evtData.type == 'lumber') then
            htextTag.style(htextTag.create2Unit(u, "+" .. val .. " 木", 7, "80ff80", 1, 1.70, 60.00), "toggle", 0, 0.20)
            hsound.sound2Unit(cg.gg_snd_BundleOfLumber, 100, u)
        end
    end
end)

--- 经验获取
onExp = function(u)
    hevent.onExp(u, function(evtData)
        htextTag.style(htextTag.create2Unit(
            evtData.triggerUnit,
            "+" .. evtData.value .. " 经验", 7, "c4c4ff", 1, 1.70, 60.00
        ), "toggle", 0, 0.20)
    end)
end

-- 配置一个双火爆破附魔环境
henchant.enableAppend(true) -- 先启用附魔附着
henchant.setAppendAttachEffect('fire', {
    { attach = 'origin', effect = 'Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl' },
    { attach = 'left hand', effect = 'Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl' },
    { attach = 'right hand', effect = 'Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl' },
    { attach = 'head', effect = 'Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl' },
})
henchant.setEnvReaction('fire', 'fire', function(evtData)
    if (evtData.type[1] == 'fire' and evtData.type[2] == 'fire') then
        htextTag.style(htextTag.create2Unit(
            evtData.targetUnit,
            "火火反应爆炸X" .. evtData.level, 10, "dc143c", 1, 1.70, 60.00
        ), "scale", 0, 0.20)
        hunit.setRGBA(evtData.targetUnit, math.random(55, 255), 0, 0, nil, 0.5)
        if (math.random(1, 10) == 5) then
            hskill.damageRange({
                radius = 100,
                frequency = 0.25,
                times = 3,
                effectSingle = "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl",
                filter = function(filterUnit)
                    return his.enemy(evtData.sourceUnit, filterUnit) and his.alive(filterUnit)
                end,
                x = hunit.x(evtData.targetUnit),
                y = hunit.y(evtData.targetUnit),
                damage = 666,
                sourceUnit = evtData.sourceUnit,
                damageSrc = CONST_DAMAGE_SRC.skill,
                damageType = { CONST_DAMAGE_TYPE.thunder }
            })
        end
    end
end)

