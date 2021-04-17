--============================================================================
-- Blight API

Blight = {}

local m = Blight

---@param whichPlayer player
---@param x real
---@param y real
---@param radius real
---@param addBlight boolean
function m.setBlightAreaCoords(whichPlayer, x, y, radius, addBlight)
    SetBlight(whichPlayer, x, y, radius, addBlight)
end

---@param whichPlayer player
---@param p point
---@param radius real
---@param addBlight boolean
function m.setBlightAreaPoint(whichPlayer, p, radius, addBlight)
    m.setBlightCoords(whichPlayer, Point.getX(p), Point.getY(p), radius, addBlight)
end

---@param whichPlayer player
---@param r rect
---@param addBlight boolean
function m.setRect(whichPlayer, r, addBlight)
    SetBlightRect(whichPlayer, r, addBlight)
end

---@param whichPlayer player
---@param x real
---@param y real
---@param addBlight boolean
function m.setBlightCoords(whichPlayer, x, y, addBlight)
    SetBlightPoint(whichPlayer, x, y, addBlight)
end

---@param whichPlayer player
---@param p point
---@param addBlight boolean
function m.setBlightPoint(whichPlayer, p, addBlight)
    m.setBlightCoords(whichPlayer, Point.getX(p), Point.getY(p), addBlight)
end

---@param whichPlayer player
---@param whichLocation location
---@param radius real
---@param addBlight boolean
function m.setBlightAreaLoc(whichPlayer, whichLocation, radius, addBlight)
    SetBlightLoc(whichPlayer, whichLocation, radius, addBlight)
end

---@param p player
---@param x real
---@param y real
---@param face real
---@return unit
function m.createGoldmineCoords(p, x, y, face)
    return CreateBlightedGoldmine(p, x, y, face)
end

---@param p player
---@param point point
---@param face real
---@return unit
function m.createGoldminePoint(p, point, face)
    return m.createGoldmineCoords(p, Point.getX(p), Point.getY(p), face)
end

---@param x real
---@param y real
---@return boolean
function m.isCoords(x, y)
    return IsPointBlighted(x, y)
end

---@param p point
---@return boolean
function m.isPoint(p)
    return m.isCoords(Point.getX(p), Point.getY(p))
end