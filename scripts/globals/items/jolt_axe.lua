-----------------------------------------
-- ID: 17954
-- Item: jolt_axe
-- Item Effect: Attack +3
-- Duration: 30 Minutes
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local effect = target:getStatusEffect(tpz.effect.ENCHANTMENT)
    if effect ~= nil and effect:getSubType() == 17954 then
        target:delStatusEffect(tpz.effect.ENCHANTMENT)
    end
    return 0
end

function onItemUse(target)
    target:addStatusEffect(tpz.effect.ENCHANTMENT, 0, 0, 1800, 17954)
end

function onEffectGain(target, effect)
    target:addMod(tpz.mod.ATT, 3)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.ATT, 3)
end
