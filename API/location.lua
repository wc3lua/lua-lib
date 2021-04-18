Types.location = 'location'

---@param loc Type
function isLocation(loc)
    return isType(loc, Types.location)
end

ModuleLocation = {}

local m = ModuleLocation

---@param x real
---@param y real
---@return Location
function m.new(x, y)
    return Handle.new(Location(x, y), Types.location)
end

---@param whichLocation Location
function m.remove(whichLocation)
    RemoveLocation(whichLocation.handle)
end

---@param whichLocation Location
---@return real
function m.getX(whichLocation)
    return GetLocationX(whichLocation.handle)
end

---@param whichLocation Location
---@return real
function m.getY(whichLocation)
    return GetLocationX(whichLocation.handle)
end

--- This function is asynchronous. The values it returns are not guaranteed synchronous between each player.
--- If you attempt to use it in a synchronous manner, it may cause a desync.
---@param whichLocation Location
---@return real
function m.getZ(whichLocation)
    return GetLocationZ(whichLocation.handle)
end

---@param whichLocation Location
---@param x real
---@param y real
function m.moveFromCoords(whichLocation, x, y)
    MoveLocation(whichLocation.handle, x, y)
end

---@param whichLocation Location
---@param x real
function m.setX(whichLocation, x)
    m.moveFromCoords(whichLocation, x, m.getY(whichLocation))
end

---@param whichLocation Location
---@param y real
function m.setY(whichLocation, y)
    m.moveFromCoords(whichLocation, m.getX(whichLocation), y)
end

---@param whichLocation Location
---@param p Pointable
function m.moveFromPos(whichLocation, p)
    local module = Pointable.getModule(p)
    m.moveFromCoords(whichLocation, module.getX(p), module.getY(p))
end