--============================================================================
-- Blight API

Blight = {}

local m = Blight

---@param whichPlayer Player
---@param x real
---@param y real
---@param radius real
---@param addBlight boolean
function m.setBlightAreaCoords(whichPlayer, x, y, radius, addBlight)
    SetBlight(whichPlayer.handle, x, y, radius, addBlight)
end

---@param whichPlayer Player
---@param p Pointable
---@param radius real
---@param addBlight boolean
function m.setBlightAreaPos(whichPlayer, p, radius, addBlight)
    local module = Pointable.getModule(p)
    m.setBlightCoords(whichPlayer, module.getX(p), module.getY(p), radius, addBlight)
end

---@param whichPlayer Player
---@param r Rect
---@param addBlight boolean
function m.setRect(whichPlayer, r, addBlight)
    SetBlightRect(whichPlayer.handle, r.handle, addBlight)
end

---@param whichPlayer Player
---@param x real
---@param y real
---@param addBlight boolean
function m.setBlightCoords(whichPlayer, x, y, addBlight)
    SetBlightPoint(whichPlayer.handle, x, y, addBlight)
end

---@param whichPlayer Player
---@param p Pointable
---@param addBlight boolean
function m.setBlightPos(whichPlayer, p, addBlight)
    local module = Pointable.getModule(p)
    m.setBlightCoords(whichPlayer, module.getX(p), module.getY(p), addBlight)
end

---@param whichPlayer Player
---@param whichLocation Location
---@param radius real
---@param addBlight boolean
function m.setBlightAreaLoc(whichPlayer, whichLocation, radius, addBlight)
    SetBlightLoc(whichPlayer.handle, whichLocation.handle, radius, addBlight)
end

---@param p Player
---@param x real
---@param y real
---@param face real
---@return unit
function m.createGoldmineCoords(p, x, y, face)
    return CreateBlightedGoldmine(p.handle, x, y, face)
end

---@param p Player
---@param point Pointable
---@param face real
---@return unit
function m.createGoldminePos(p, point, face)
    local module = Pointable.getModule(point)
    return m.createGoldmineCoords(p, module.getX(point), module.getY(point), face)
end

---@param x real
---@param y real
---@return boolean
function m.isCoords(x, y)
    return IsPointBlighted(x, y)
end

---@param p point
---@return boolean
function m.isPos(p)
    local module = Pointable.getModule(p)
    return m.isCoords(module.getX(p), module.getY(p))
end