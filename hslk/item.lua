slkHelper.item.synthesis({
    "双铁剑=铁剑x3+铁盾x3", -- 等于 { { "双铁剑", 1 }, { "铁剑", 3 }, { "铁盾", 3 } }
})

local items = {
    {
        Name = "铁剑",
        Art = "ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp",
        goldcost = 1000,
        lumbercost = 0,
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Hotkey = "Q",
        _desc = "精铁铸造的大剑，是武斗者必备的武器",
        _weight = 2.3,
        _overlie = 2,
        _active = "主动演示（效果需要自己处理，本图无效果）",
        _passive = "被动演示（效果需要自己处理，本图无效果）",
        _attr = {
            attack_white = "+10",
            xtras = {
                {
                    on = CONST_EVENT.attack, action = "targetUnit.spec.knocking", val = "triggerUnit.attack",
                    odds = 10, percent = { 300, 2000 }, effect = nil
                },
            },
        },
        _ring = {
            effect = "Abilities\\Spells\\Orc\\CommandAura\\CommandAura.mdl",
            effectTarget = "Abilities\\Spells\\NightElf\\BattleRoar\\RoarTarget.mdl",
            attachTarget = "overhead",
            radius = 600,
            target = "air,ground,friend,self,vuln,invu",
            attr = {
                life = "+50",
                attack_range = "+200",
            }
        },
    },
    {
        Name = "铁盾",
        Art = "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne.blp",
        goldcost = 1000,
        lumbercost = 0,
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Hotkey = "W",
        _desc = "普通的铁盾",
        _weight = 3.1,
        _overlie = 1,
        _attr = {
            e_physical_append = '-1',
            defend_green = "+1",
            str_green = "+10",
            agi_green = "+10",
            int_green = "+10",
        },
    },
    {
        Name = "双铁剑",
        Art = "ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp",
        goldcost = 2000,
        lumbercost = 0,
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Hotkey = "E",
        cooldown = 2,
        cooldownTarget = CONST_ABILITY_TARGET.location.value,
        Rng1 = 1000,
        uses = 3,
        _active = "跳跳跳",
        _desc = "双倍的铁，双倍的快乐",
        _weight = 4,
        _overlie = 1,
        _attr = {
            e_physical_attack = '+1',
            attack_green = "+50",
            defend_white = "+5",
            xtras = {
                {
                    on = CONST_EVENT.attack, action = "targetUnit.spec.knocking", val = "triggerUnit.attack",
                    odds = 10, percent = { 300, 2000 }, effect = nil
                },
                {
                    alias = "水蛇湍乱",
                    on = CONST_EVENT.attack, action = "targetUnit.spec.paw", val = 'damage',
                    height = 70, tokenArrowHeight = 30, shake = 'random',
                    radius = 50, odds = 50, speed = 5, deg = 45, distance = 600, qty = 3,
                    effect = 'Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl',
                    damageType = { CONST_DAMAGE_TYPE.water }
                },
            },
        },
    },
}

for _, v in pairs(items) do
    v.race = "human"
    v._shadow = true
    slkHelper.item.normal(v)
end
