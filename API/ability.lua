Ability = {}

local m = Ability

m.ErrorMessages = {}

local em = m.ErrorMessages

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

em.getBooleanField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ ЛОГИЧЕСКОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A BOOLEAN FIELD'
}
---@param whichAbility ability
---@param whichField abilitybooleanfield
---@return boolean
function m.getBooleanField(whichAbility, whichField)
    handleHandle(em.getBooleanField[LocalizationKey], whichAbility)
    return BlzGetAbilityBooleanField(whichAbility, whichField)
end

em.getIntegerField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ ЦЕЛОЧИСЛЕННОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A INTEGER FIELD'
}
---@param whichAbility ability
---@param whichField abilityintegerfield
---@return integer
function m.getIntegerField(whichAbility, whichField)
    handleHandle(em.getIntegerField[LocalizationKey], whichAbility)
    return BlzGetAbilityIntegerField(whichAbility, whichField)
end

em.getRealField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ ВЕЩЕСТВЕННОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A REAL FIELD'
}
---@param whichAbility ability
---@param whichField abilityrealfield
---@return real
function m.getRealField(whichAbility, whichField)
    handleHandle(em.getRealField[LocalizationKey], whichAbility)
    return BlzGetAbilityRealField(whichAbility, whichField)
end

em.getStringField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ СТРОКОВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A STRING FIELD'
}
---@param whichAbility ability
---@param whichField abilitystringfield
---@return string
function m.getStringField(whichAbility, whichField)
    handleHandle(em.getStringField[LocalizationKey], whichAbility)
    return BlzGetAbilityStringField(whichAbility, whichField)
end

em.getBooleanLevelField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ ЛОГИЧЕСКОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A BOOLEAN LEVEL FIELD'
}
---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@return boolean
function m.getBooleanLevelField(whichAbility, whichField, level)
    handleHandle(em.getBooleanLevelField[LocalizationKey], whichAbility)
    return BlzGetAbilityBooleanLevelField(whichAbility, whichField, level)
end

em.getIntegerLevelField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ ЦЕЛОЧИСЛЕННОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A INTEGER LEVEL FIELD'
}
---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@return integer
function m.getIntegerLevelField(whichAbility, whichField, level)
    handleHandle(em.getIntegerLevelField[LocalizationKey], whichAbility)
    return BlzGetAbilityIntegerLevelField(whichAbility, whichField, level)
end

em.getRealLevelField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ ВЕЩЕСТВЕННОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A REAL LEVEL FIELD'
}
---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@return real
function m.getRealLevelField(whichAbility, whichField, level)
    handleHandle(em.getRealLevelField[LocalizationKey], whichAbility)
    return BlzGetAbilityRealLevelField(whichAbility, whichField, level)
end

em.getStringLevelField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ СТРОКОВОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A STRING LEVEL FIELD'
}
---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@return string
function m.getStringLevelField(whichAbility, whichField, level)
    handleHandle(em.getStringLevelField[LocalizationKey], whichAbility)
    return BlzGetAbilityStringLevelField(whichAbility, whichField, level)
end

em.getBooleanLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ ЛОГИЧЕСКОГО ИНДЕКСНОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A BOOLEAN LEVEL ARRAY FIELD',
}
---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@return boolean
function m.getBooleanLevelArrayField(whichAbility, whichField, level, index)
    handleHandle(em.getBooleanLevelArrayField[LocalizationKey], whichAbility)
    return BlzGetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index)
end

em.getIntegerLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ ЦЕЛОЧИСЛЕННОГО ИНДЕКСНОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A INTEGER LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@return integer
function m.getIntegerLevelArrayField(whichAbility, whichField, level, index)
    handleHandle(em.getIntegerLevelArrayField[LocalizationKey], whichAbility)
    return BlzGetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index)
end

em.getRealLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ ВЕЩЕСТВЕННОГО ИНДЕКСНОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A REAL LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@return real
function m.getRealLevelArrayField(whichAbility, whichField, level, index)
    handleHandle(em.getRealLevelArrayField[LocalizationKey], whichAbility)
    return BlzGetAbilityRealLevelArrayField(whichAbility, whichField, level, index)
end

em.getStringLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ПОЛУЧЕНИИ СТРОКОВОГО ИНДЕКСНОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN GETTING A STRING LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@return string
function m.getStringLevelArrayField(whichAbility, whichField, level, index)
    handleHandle(em.getStringLevelArrayField[LocalizationKey], whichAbility)
    return BlzGetAbilityStringLevelArrayField(whichAbility, whichField, level, index)
end

em.setBooleanField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ ЛОГИЧЕСКОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A BOOLEAN FIELD'
}
---@param whichAbility ability
---@param whichField abilitybooleanfield
---@param value boolean
---@return boolean
function m.setBooleanField(whichAbility, whichField, value)
    handleHandle(em.setBooleanField[LocalizationKey], whichAbility)
    return BlzSetAbilityBooleanField(whichAbility, whichField, value)
end

em.setIntegerField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ ЦЕЛОЧИСЛЕННОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A INTEGER FIELD'
}
---@param whichAbility ability
---@param whichField abilityintegerfield
---@param value integer
---@return boolean
function m.setIntegerField(whichAbility, whichField, value)
    handleHandle(em.setIntegerField[LocalizationKey], whichAbility)
    return BlzSetAbilityIntegerField(whichAbility, whichField, value)
end

em.setRealField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ ВЕЩЕСТВЕННОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A REAL FIELD'
}
---@param whichAbility ability
---@param whichField abilityrealfield
---@param value real
---@return boolean
function m.setRealField(whichAbility, whichField, value)
    handleHandle(em.setRealField[LocalizationKey], whichAbility)
    return BlzSetAbilityRealField(whichAbility, whichField, value)
end

em.setStringField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ СТРОКОВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A STRING FIELD'
}
---@param whichAbility ability
---@param whichField abilitystringfield
---@param value string
---@return boolean
function m.setStringField(whichAbility, whichField, value)
    handleHandle(em.setStringField[LocalizationKey], whichAbility)
    return BlzSetAbilityStringField(whichAbility, whichField, value)
end

em.setBooleanLevelField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ ЛОГИЧЕСКОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A BOOLEAN LEVEL FIELD'
}
---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@param value boolean
---@return boolean
function m.setBooleanLevelField(whichAbility, whichField, level, value)
    handleHandle(em.setBooleanLevelField[LocalizationKey], whichAbility)
    return BlzSetAbilityBooleanLevelField(whichAbility, whichField, level, value)
end

em.setIntegerLevelField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ ЦЕЛОЧИСЛЕННОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A INTEGER LEVEL FIELD'
}
---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@param value integer
---@return boolean
function m.setIntegerLevelField(whichAbility, whichField, level, value)
    handleHandle(em.setIntegerLevelField[LocalizationKey], whichAbility)
    return BlzSetAbilityIntegerLevelField(whichAbility, whichField, level, value)
end

em.setRealLevelField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ ВЕЩЕСТВЕННОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A REAL LEVEL FIELD'
}
---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@param value real
---@return boolean
function m.setRealLevelField(whichAbility, whichField, level, value)
    handleHandle(em.setRealLevelField[LocalizationKey], whichAbility)
    return BlzSetAbilityRealLevelField(whichAbility, whichField, level, value)
end

em.setStringLevelField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ СТРОКОВОГО УРОВНЕВОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A STRING LEVEL FIELD'
}
---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@param value string
---@return boolean
function m.setStringLevelField(whichAbility, whichField, level, value)
    handleHandle(em.setStringLevelField[LocalizationKey], whichAbility)
    return BlzSetAbilityStringLevelField(whichAbility, whichField, level, value)
end

em.setBooleanLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ ЛОГИЧЕСКОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A BOOLEAN LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@param value boolean
---@return boolean
function m.setBooleanLevelArrayField(whichAbility, whichField, level, index, value)
    handleHandle(em.setBooleanLevelArrayField[LocalizationKey], whichAbility)
    return BlzSetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index, value)
end

em.setIntegerLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ ЦЕЛОЧИСЛЕННОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A INTEGER LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@param value integer
---@return boolean
function m.setIntegerLevelArrayField(whichAbility, whichField, level, index, value)
    handleHandle(em.setIntegerLevelArrayField[LocalizationKey], whichAbility)
    return BlzSetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index, value)
end

em.setRealLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ ВЕЩЕСТВЕННОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A REAL LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@param value real
---@return boolean
function m.setRealLevelArrayField(whichAbility, whichField, level, index, value)
    handleHandle(em.setRealLevelArrayField[LocalizationKey], whichAbility)
    return BlzSetAbilityRealLevelArrayField(whichAbility, whichField, level, index, value)
end

em.setStringLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УСТАНОВЛЕНИИ СТРОКОВОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN SETTING A STRING LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@param value string
---@return boolean
function m.setStringLevelArrayField(whichAbility, whichField, level, index, value)
    handleHandle(em.setStringLevelArrayField[LocalizationKey], whichAbility)
    return BlzSetAbilityStringLevelArrayField(whichAbility, whichField, level, index, value)
end

em.addBooleanLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ДОБАВЛЕНИИ ЛОГИЧЕСКОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN ADDING A BOOLEAN LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function m.addBooleanLevelArrayField(whichAbility, whichField, level, value)
    handleHandle(em.addBooleanLevelArrayField[LocalizationKey], whichAbility)
    return BlzAddAbilityBooleanLevelArrayField(whichAbility, whichField, level, value)
end

em.addIntegerLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ДОБАВЛЕНИИ ЦЕЛОЧИСЛЕННОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN ADDING A INTEGER LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function m.addIntegerLevelArrayField(whichAbility, whichField, level, value)
    handleHandle(em.addIntegerLevelArrayField[LocalizationKey], whichAbility)
    return BlzAddAbilityIntegerLevelArrayField(whichAbility, whichField, level, value)
end

em.addRealLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ДОБАВЛЕНИИ ВЕЩЕСТВЕННОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN ADDING A REAL LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return boolean
function m.addRealLevelArrayField(whichAbility, whichField, level, value)
    handleHandle(em.addRealLevelArrayField[LocalizationKey], whichAbility)
    return BlzAddAbilityRealLevelArrayField(whichAbility, whichField, level, value)
end

em.addStringLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ ДОБАВЛЕНИИ СТРОКОВОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN ADDING A STRING LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function m.addStringLevelArrayField(whichAbility, whichField, level, value)
    handleHandle(em.addStringLevelArrayField[LocalizationKey], whichAbility)
    return BlzAddAbilityStringLevelArrayField(whichAbility, whichField, level, value)
end

em.removeBooleanLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УДАЛЕНИИ ЛОГИЧЕСКОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN REMOVING A BOOLEAN LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function m.removeBooleanLevelArrayField(whichAbility, whichField, level, value)
    handleHandle(em.removeBooleanLevelArrayField[LocalizationKey], whichAbility)
    return BlzRemoveAbilityBooleanLevelArrayField(whichAbility, whichField, level, value)
end

em.removeIntegerLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УДАЛЕНИИ ЦЕЛОЧИСЛЕННОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN REMOVING A INTEGER LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function m.removeIntegerLevelArrayField(whichAbility, whichField, level, value)
    handleHandle(em.removeIntegerLevelArrayField[LocalizationKey], whichAbility)
    return BlzRemoveAbilityIntegerLevelArrayField(whichAbility, whichField, level, value)
end

em.removeRealLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УДАЛЕНИИ ВЕЩЕСТВЕННОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN REMOVING A REAL LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return boolean
function m.removeRealLevelArrayField(whichAbility, whichField, level, value)
    handleHandle(em.removeRealLevelArrayField[LocalizationKey], whichAbility)
    return BlzRemoveAbilityRealLevelArrayField(whichAbility, whichField, level, value)
end

em.removeStringLevelArrayField = {
    ru = 'НУЛЕВОЙ ХЕНДЛ СПОСОБНОСТИ ПРИ УДАЛЕНИИ СТРОКОВОГО УРОВНЕВОГО ИНДЕКСНОГО ПОЛЯ',
    en = 'ZERO ABILITY HANDLE WHEN REMOVING A STRING LEVEL ARRAY FIELD'
}
---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function m.removeStringLevelArrayField(whichAbility, whichField, level, value)
    handleHandle(em.removeStringLevelArrayField[LocalizationKey], whichAbility)
    return BlzRemoveAbilityStringLevelArrayField(whichAbility, whichField, level, value)
end