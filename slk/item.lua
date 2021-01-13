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
            attack_green = "+33",
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
                agi_green = "+33",
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
        _overlie = 2,
        _attr = {
            defend = "+1",
            e_physical_append = '-1',
            str_green = "+1",
            agi_green = "+1",
            int_green = "+1",
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
        _desc = "双倍的铁，双倍的快乐",
        _weight = 4,
        _overlie = 1,
        _attr = {
            e_physical_attack = '+1',
            attack_green = "+50",
            defend = "+2",
            xtras = {
                {
                    on = CONST_EVENT.attack, action = "targetUnit.spec.knocking", val = "triggerUnit.attack",
                    odds = 10, percent = { 300, 2000 }, effect = nil
                },
                {
                    alias = "石像鬼毒光砍",
                    on = CONST_EVENT.attack, action = "targetUnit.spec.paw", val = 'damage',
                    radius = 50, odds = 50, speed = 12, deg = 30, distance = 500, qty = 3,
                    effect = 'Abilities\\Weapons\\GargoyleMissile\\GargoyleMissile.mdl',
                    damageType = { CONST_DAMAGE_TYPE.poison }
                },
            },
        },
    }
}

for _, v in pairs(items) do
    v.race = "human"
    slkHelper.item.normal(v)
end
