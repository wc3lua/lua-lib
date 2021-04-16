--============================================================================
-- Blight API

Blight = {}

local m = Blight

---@param whichPlayer player
---@param x real
---@param y real
---@param radius real
---@param addBlight boolean
function m.setBlightCoords(whichPlayer, x, y, radius, addBlight)
    handleHandle('НУЛЕВОЙ ХЕНДЛ ИГРОКА ПРИ УСТАНОВЛЕНИИ ПОРЧИ В КООРДИНАТЫ ТОЧКИ', whichPlayer)
    SetBlight(whichPlayer, x, y, radius, addBlight)
end

---@param whichPlayer player
---@param p point
---@param radius real
---@param addBlight boolean
function m.setBlightPoint(whichPlayer, p, radius, addBlight)
    
end

---@param whichPlayer player
---@param r rect
---@param addBlight boolean
function m.setRect(whichPlayer, r, addBlight)
    handleHandle('НУЛЕВОЙ ХЕНДЛ ИГРОКА ПРИ УСТАНОВЛЕНИИ ПОРЧИ В ОБЛАСТЬ', whichPlayer)
    SetBlightRect(whichPlayer, r, addBlight)
end

---@param whichPlayer player
---@param x real
---@param y real
---@param addBlight boolean
function SetBlightPoint(whichPlayer, x, y, addBlight) end

---@param whichPlayer player
---@param whichLocation location
---@param radius real
---@param addBlight boolean
function SetBlightLoc(whichPlayer, whichLocation, radius, addBlight) end

---@param id player
---@param x real
---@param y real
---@param face real
---@return unit
function CreateBlightedGoldmine(id, x, y, face) end

---@param x real
---@param y real
---@return boolean
function IsPointBlighted(x, y) end