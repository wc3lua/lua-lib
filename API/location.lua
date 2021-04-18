ModuleLocation = {}

local m = ModuleLocation

---@param x real
---@param y real
---@return location
function m.allocate(x, y)
    return {
        handle = Location(x, y),
        __type = 'location'
    }
end

---@param whichLocation location
function m.remove(whichLocation)
    RemoveLocation(whichLocation.handle)
end

---@param whichLocation location
---@return real
function m.getX(whichLocation)
    return GetLocationX(whichLocation)
end

---@param whichLocation location
---@return real
function m.getY(whichLocation)
    return GetLocationY(whichLocation)
end

--- This function is asynchronous. The values it returns are not guaranteed synchronous between each player.
--- If you attempt to use it in a synchronous manner, it may cause a desync.
---@param whichLocation location
---@return real
function m.getZ(whichLocation)
    return GetLocationZ(whichLocation)
end

---@param whichLocation location
---@param newX real
---@param newY real
function m.moveFromCoords(whichLocation, newX, newY)
    MoveLocation(whichLocation, newX, newY)
end

---@param whichLocation location
---@param newLocation location
function m.moveFromLoc(whichLocation, newLocation)
    MoveLocation(whichLocation, m.getX(newLocation), m.getY(newLocation))
end

---@param whichLocation location
---@param newPoint point
function m.moveFromPoint(whichLocation, newPoint)
    MoveLocation(whichLocation, Point.getX(newPoint), Point.getY(newPoint))
end