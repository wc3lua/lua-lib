Ability = {}

local m = Ability

---@param abilCode rawcode
---@param tooltip string
---@param level integer
function m.setTooltip(abilCode, tooltip, level)
    BlzSetAbilityTooltip(formatIntCC(abilCode), tooltip, level)
end

---@param abilCode integer
---@param tooltip string
---@param level integer
function m.setActivatedTooltip(abilCode, tooltip, level)
    BlzSetAbilityActivatedTooltip(formatIntCC(abilCode), tooltip, level)
end

---@param abilCode integer
---@param extendedTooltip string
---@param level integer
function m.setExtendedTooltip(abilCode, extendedTooltip, level)
    BlzSetAbilityExtendedTooltip(formatIntCC(abilCode), extendedTooltip, level)
end

---@param abilCode integer
---@param researchTooltip string
---@param level integer
function m.setResearchTooltip(abilCode, researchTooltip, level)
    BlzSetAbilityResearchTooltip(formatIntCC(abilCode), researchTooltip, level)
end

---@param abilCode integer
---@param researchExtendedTooltip string
---@param level integer
function m.setResearchExtendedTooltip(abilCode, researchExtendedTooltip, level)
    BlzSetAbilityResearchExtendedTooltip(formatIntCC(abilCode), researchExtendedTooltip, level)
end

---@param abilCode integer
---@param level integer
---@return string
function m.getTooltip(abilCode, level)
    return BlzGetAbilityTooltip(formatIntCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function m.getActivatedTooltip(abilCode, level)
    return BlzGetAbilityActivatedTooltip(formatIntCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function m.getExtendedTooltip(abilCode, level)
    return BlzGetAbilityExtendedTooltip(formatIntCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function m.getActivatedExtendedTooltip(abilCode, level)
    return BlzGetAbilityActivatedExtendedTooltip(formatIntCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function m.getResearchTooltip(abilCode, level)
    return BlzGetAbilityResearchTooltip(formatIntCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function m.getResearchExtendedTooltip(abilCode, level)
    return BlzGetAbilityResearchExtendedTooltip(formatIntCC(abilCode), level)
end

---@param abilCode integer
---@param iconPath string
function m.setIcon(abilCode, iconPath)
    BlzSetAbilityIcon(formatIntCC(abilCode), iconPath)
end

---@param abilCode integer
---@return string
function m.getIcon(abilCode)
    return BlzGetAbilityIcon(formatIntCC(abilCode))
end

---@param abilCode integer
---@param iconPath string
function m.setActivatedIcon(abilCode, iconPath)
    BlzSetAbilityActivatedIcon(formatIntCC(abilCode), iconPath)
end

---@param abilCode integer
---@return string
function m.getActivatedIcon(abilCode)
    return BlzGetAbilityActivatedIcon(formatIntCC(abilCode))
end

---@param abilCode integer
---@return integer
function m.getPosX(abilCode)
    return BlzGetAbilityPosX(formatIntCC(abilCode))
end

---@param abilCode integer
---@return integer
function m.getPosY(abilCode)
    return BlzGetAbilityPosY(formatIntCC(abilCode))
end

---@param abilCode integer
---@param x integer
function m.setPosX(abilCode, x)
    BlzSetAbilityPosX(formatIntCC(abilCode), x)
end

---@param abilCode integer
---@param y integer
function m.setPosY(abilCode, y)
    BlzSetAbilityPosY(formatIntCC(abilCode), y)
end

---@param abilCode integer
---@return integer
function m.getActiavatedPosX(abilCode)
    return BlzGetAbilityActivatedPosX(formatIntCC(abilCode))
end

---@param abilCode integer
---@return integer
function m.getActivatedPosY(abilCode)
    return BlzGetAbilityActivatedPosY(formatIntCC(abilCode))
end

---@param abilCode integer
---@param x integer
function m.setActivatedPosX(abilCode, x)
    BlzSetAbilityActivatedPosX(formatIntCC(abilCode), x)
end

---@param abilCode integer
---@param y integer
function m.setActivatedPosY(abilCode, y)
    BlzSetAbilityActivatedPosY(formatIntCC(abilCode), y)
end

---@param abilId integer
---@param level integer
---@return integer
function m.getManaCost(abilId, level)
    return BlzGetAbilityManaCost(formatIntCC(abilId), level)
end

---@param abilId integer
---@param level integer
---@return real
function m.getCooldown(abilId, level)
    return BlzGetAbilityCooldown(formatIntCC(abilId), level)
end

-- Intanced Object Operations
-- Ability

---@param whichAbility ability
---@param whichField abilitybooleanfield
---@return boolean
function m.getBooleanField(whichAbility, whichField)
    return BlzGetAbilityBooleanField(whichAbility, whichField)
end

---@param whichAbility ability
---@param whichField abilityintegerfield
---@return integer
function m.getIntegerField(whichAbility, whichField)
    return BlzGetAbilityIntegerField(whichAbility, whichField)
end

---@param whichAbility ability
---@param whichField abilityrealfield
---@return real
function m.getRealField(whichAbility, whichField)
    return BlzGetAbilityRealField(whichAbility, whichField)
end


---@param whichAbility ability
---@param whichField abilitystringfield
---@return string
function m.getStringField(whichAbility, whichField)
    return BlzGetAbilityStringField(whichAbility, whichField)
end

---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@return boolean
function m.getBooleanLevelField(whichAbility, whichField, level)
    return BlzGetAbilityBooleanLevelField(whichAbility, whichField, level)
end

---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@return integer
function m.getIntegerLevelField(whichAbility, whichField, level)
    return BlzGetAbilityIntegerLevelField(whichAbility, whichField, level)
end

---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@return real
function m.getRealLevelField(whichAbility, whichField, level)
    return BlzGetAbilityRealLevelField(whichAbility, whichField, level)
end

---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@return string
function m.getStringLevelField(whichAbility, whichField, level)
    return BlzGetAbilityStringLevelField(whichAbility, whichField, level)
end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@return boolean
function m.getBooleanLevelArrayField(whichAbility, whichField, level, index)
    return BlzGetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index)
end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@return integer
function m.getIntegerLevelArrayField(whichAbility, whichField, level, index)
    return BlzGetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index)
end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@return real
function m.getRealLevelArrayField(whichAbility, whichField, level, index)
    return BlzGetAbilityRealLevelArrayField(whichAbility, whichField, level, index)
end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@return string
function m.getStringLevelArrayField(whichAbility, whichField, level, index)
    return BlzGetAbilityStringLevelArrayField(whichAbility, whichField, level, index)
end

---@param whichAbility ability
---@param whichField abilitybooleanfield
---@param value boolean
---@return boolean
function m.setBooleanField(whichAbility, whichField, value)
    return BlzSetAbilityBooleanField(whichAbility, whichField, value)
end

---@param whichAbility ability
---@param whichField abilityintegerfield
---@param value integer
---@return boolean
function m.setIntegerField(whichAbility, whichField, value)
    return BlzSetAbilityIntegerField(whichAbility, whichField, value)
end

---@param whichAbility ability
---@param whichField abilityrealfield
---@param value real
---@return boolean
function m.setRealField(whichAbility, whichField, value)
    return BlzSetAbilityRealField(whichAbility, whichField, value)
end

---@param whichAbility ability
---@param whichField abilitystringfield
---@param value string
---@return boolean
function m.setStringField(whichAbility, whichField, value)
    return BlzSetAbilityStringField(whichAbility, whichField, value)
end

---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@param value boolean
---@return boolean
function m.setBooleanLevelField(whichAbility, whichField, level, value)
    return BlzSetAbilityBooleanLevelField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@param value integer
---@return boolean
function m.setIntegerLevelField(whichAbility, whichField, level, value)
    return BlzSetAbilityIntegerLevelField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@param value real
---@return boolean
function m.setRealLevelField(whichAbility, whichField, level, value)
    return BlzSetAbilityRealLevelField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@param value string
---@return boolean
function m.setStringLevelField(whichAbility, whichField, level, value)
    return BlzSetAbilityStringLevelField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@param value boolean
---@return boolean
function m.setBooleanLevelArrayField(whichAbility, whichField, level, index, value)
    return BlzSetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index, value)
end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@param value integer
---@return boolean
function m.setIntegerLevelArrayField(whichAbility, whichField, level, index, value)
    return BlzSetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index, value)
end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@param value real
---@return boolean
function m.setRealLevelArrayField(whichAbility, whichField, level, index, value)
    return BlzSetAbilityRealLevelArrayField(whichAbility, whichField, level, index, value)
end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@param value string
---@return boolean
function m.setStringLevelArrayField(whichAbility, whichField, level, index, value)
    return BlzSetAbilityStringLevelArrayField(whichAbility, whichField, level, index, value)
end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function m.addBooleanLevelArrayField(whichAbility, whichField, level, value)
    return BlzAddAbilityBooleanLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function m.addIntegerLevelArrayField(whichAbility, whichField, level, value)
    return BlzAddAbilityIntegerLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return boolean
function m.addRealLevelArrayField(whichAbility, whichField, level, value)
    return BlzAddAbilityRealLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function m.addStringLevelArrayField(whichAbility, whichField, level, value)
    return BlzAddAbilityStringLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function m.removeBooleanLevelArrayField(whichAbility, whichField, level, value)
    return BlzRemoveAbilityBooleanLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function m.removeIntegerLevelArrayField(whichAbility, whichField, level, value)
    return BlzRemoveAbilityIntegerLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return boolean
function m.removeRealLevelArrayField(whichAbility, whichField, level, value)
    return BlzRemoveAbilityRealLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function m.removeStringLevelArrayField(whichAbility, whichField, level, value)
    return BlzRemoveAbilityStringLevelArrayField(whichAbility, whichField, level, value)
end