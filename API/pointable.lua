---@alias Pointable Location|Point

---@param p Type
---@return boolean
function isPointable(p)
    return isPoint(p) or isLocation(p)
end

Pointable = {}

local m = Pointable

---@param p Pointable
---@return real
function m.getX(p)
    if  isPoint(p) then
        return p.x
    elseif isLocation(p) then
        return GetLocationX(p.handle)
    end
end

---@param p Pointable
---@return real
function m.getY(p)
    if  isPoint(p) then
        return p.y
    elseif isLocation(p) then
        return GetLocationY(p.handle)
    end
end

--- This function is asynchronous for location. The values it returns are not guaranteed synchronous between each player.
--- If you attempt to use it in a synchronous manner, it may cause a desync.
---@param p Pointable
---@return real
function m.getZ(p)
    if  isPoint(p) then
        return p.z
    elseif isLocation(p) then
        return GetLocationZ(p.handle)
    end
end

---@param p Pointable
---@param x real
---@param y real
---@param z real|null
function m.moveFromCoords(p, x, y, z)
    if  isPoint(p) then
        p.x = x
        p.y = y
        p.z = z
    elseif isLocation(p) then
        MoveLocation(p.handle, x, y)
    end
end

---@param p Pointable
---@param x real
function m.setX(p, x)
    if  isPoint(p) then
        p.x = x
    elseif isLocation(p) then
        MoveLocation(p.handle, x, m.getY(p))
    end
end

---@param p Pointable
---@param y real
function m.setY(p, y)
    if  isPoint(p) then
        p.y = y
    elseif isLocation(p) then
        MoveLocation(p.handle, m.getX(p), y)
    end
end

---@param p Pointable
---@param newP Pointable
function m.moveFromPos(p, newP)
    m.moveFromCoords(p, m.getX(newP), m.getY(newP), m.getZ(newP))
end

---@param p Pointable
---@return table
function m.getModule(p)
    if  isPoint(p) then
        return Point
    elseif isLocation(p) then
        return ModuleLocation
    end
end