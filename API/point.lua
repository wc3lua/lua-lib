---@class point

Point = {}

local m = Point

m.ErrorMessages = {}

local em = m.ErrorMessages

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

em.fromLoc = {
    ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ ПРЕОБРАЗОВАНИИ В ТОЧКУ-ПРИМИТИВ',
    en = 'ZERO POINT HANDLE WHEN CONVERTING TO A PRIMITIVE POINT'
}
---@param loc location
---@return point
function m.fromLoc(loc)
    handleHandle(em.fromLoc[LocalizationKey], loc)
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

em.setFromLoc = {
    ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ ЗАДАНИИ ЕЕ КООРДИНАТ ТОЧКЕ-ПРИМИТИВУ',
    en = 'ZERO HANDLE OF A POINT WHEN SETTING ITS COORDINATES TO A PRIMITIVE POINT'
}
---@param whichPoint point
---@param whichLoc location
function m.setFromLoc(whichPoint, whichLoc)
    handleHandle(em.setFromLoc[LocalizationKey], whichLoc)
    m.setFromCoords(whichPoint, ModuleLocation.getX(whichLoc), ModuleLocation.getY(whichLoc), ModuleLocation.getZ(whichLoc))
end

---@param whichPoint point
---@param newPoint point
function m.setFromPoint(whichPoint, newPoint)
    m.setFromCoords(whichPoint, m.getX(newPoint), m.getY(newPoint), m.getZ(newPoint))
end