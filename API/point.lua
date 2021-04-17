---@class point

Point = {}

local m = Point

---@param x real
---@param y real
---@param z real
---@return point
function m.get(x, y, z)
    return {
        x = x,
        y = y,
        z = z
    }
end

---@param loc location
---@return point
function m.fromLoc(loc)
    return m.get(ModuleLocation.getX(loc), ModuleLocation.getY(loc), ModuleLocation.getZ(loc))
end

---@param whichPoint point
---@return real
function m.getX(whichPoint)
    return whichPoint.x
end

---@param whichPoint point
---@return real
function m.getY(whichPoint)
    return whichPoint.y
end

---@param whichPoint point
---@return real
function m.getZ(whichPoint)
    return whichPoint.z
end

---@param whichPoint point
---@param x real
function m.setX(whichPoint, x)
    whichPoint.x = x
end

---@param whichPoint point
---@param y real
function m.setY(whichPoint, y)
    whichPoint.y = y
end

---@param whichPoint point
---@param z real
function m.setZ(whichPoint, z)
    whichPoint.z = z
end

---@param whichPoint point
---@param x real
---@param y real
---@param z real
function m.setFromCoords(whichPoint, x, y, z)
    m.setX(whichPoint, x)
    m.setY(whichPoint, y)
    m.setZ(whichPoint, z)
end

---@param whichPoint point
---@param whichLoc location
function m.setFromLoc(whichPoint, whichLoc)
    m.setFromCoords(whichPoint, ModuleLocation.getX(whichLoc), ModuleLocation.getY(whichLoc), ModuleLocation.getZ(whichLoc))
end

---@param whichPoint point
---@param newPoint point
function m.setFromPoint(whichPoint, newPoint)
    m.setFromCoords(whichPoint, m.getX(newPoint), m.getY(newPoint), m.getZ(newPoint))
end