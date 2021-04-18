---@class Point:Type

Types.point = 'point'

---@param arg Type
function isPoint(arg)
    return isType(arg, Types.point)
end

Point = {}

local m = Point

---@param x real
---@param y real
---@param z real
---@return Point
function m.new(x, y, z)
    local obj = newType(Types.point)
    obj.x = x
    obj.y = y
    obj.z = z
    return obj
end

---@param loc Location
---@return Point
function m.fromLoc(loc)
    return m.new(ModuleLocation.getX(loc), ModuleLocation.getY(loc), ModuleLocation.getZ(loc))
end

---@param p Point
---@return real
function m.getX(p)
    return p.x
end

---@param p Point
---@return real
function m.getY(p)
    return p.y
end

---@param p Point
---@return real
function m.getZ(p)
    return p.z
end

---@param p Point
---@param x real
function m.setX(p, x)
    p.x = x
end

---@param p Point
---@param y real
function m.setY(p, y)
    p.y = y
end

---@param p Point
---@param z real
function m.setZ(p, z)
    p.z = z
end

---@param p Point
---@param x real
---@param y real
---@param z real
function m.moveFromCoords(p, x, y, z)
    m.setX(p, x)
    m.setY(p, y)
    m.setZ(p, z)
end

---@param p Point
---@param newP Pointable
function m.moveFromPos(p, newP)
    local module = Pointable.getModule(newP)
    m.moveFromCoords(p, module.getX(newP), module.getY(newP), module.getZ(newP))
end