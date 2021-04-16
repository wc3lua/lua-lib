ModuleLocation = {}

local m = ModuleLocation

m.ErrorMessages = {}

local em = m.ErrorMessages

em.allocate = {
    ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ АЛЛОКАЦИИ',
    en = 'ZERO HANDLE POINT ON ALLOCATION'
}
---@param x real
---@param y real
---@return location
function m.allocate(x, y)
    return handleHandle(em.allocate[LocalizationKey], Location(x, y))
end

em.remove = {
    ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ УДАЛЕНИИ',
    en = 'ZERO HANDLE POINT ON DELETION'
}
---@param whichLocation location
function m.remove(whichLocation)
    handleHandle(em.remove[LocalizationKey], whichLocation)
    RemoveLocation(whichLocation)
end

em.getX = {
    ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ ПОЛУЧЕНИИ КООРДИНАТЫ X',
    en = 'ZERO HANDLE POINT WHEN GETTING THE X COORDINATE'
}
---@param whichLocation location
---@return real
function m.getX(whichLocation)
    handleHandle(em.getX[LocalizationKey], whichLocation)
    return GetLocationX(whichLocation)
end

em.getY = {
    ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ ПОЛУЧЕНИИ КООРДИНАТЫ Y',
    en = 'ZERO HANDLE POINT WHEN GETTING THE Y COORDINATE'
}
---@param whichLocation location
---@return real
function m.getY(whichLocation)
    handleHandle(em.getY[LocalizationKey], whichLocation)
    return GetLocationY(whichLocation)
end

em.getZ = {
    ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ ПОЛУЧЕНИИ КООРДИНАТЫ Z',
    en = 'ZERO HANDLE POINT WHEN GETTING THE Z COORDINATE'
}
---
--- This function is asynchronous. The values it returns are not guaranteed synchronous between each player.
--- If you attempt to use it in a synchronous manner, it may cause a desync.
---@param whichLocation location
---@return real
function m.getZ(whichLocation)
    handleHandle(em.getZ[LocalizationKey], whichLocation)
    return GetLocationZ(whichLocation)
end

em.moveFromCoords = {
    ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ УСТАНОВЛЕНИИ КООРДИНАТ',
    en = 'ZERO HANDLE POINT WHEN SETTING COORDINATES'
}
---@param whichLocation location
---@param newX real
---@param newY real
function m.moveFromCoords(whichLocation, newX, newY)
    handleHandle(em.moveFromCoords[LocalizationKey], whichLocation)
    MoveLocation(whichLocation, newX, newY)
end

em.moveFromLoc = {
    whichLocation = {
        ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ ЗАДАНИИ ЕЙ КООРДИНАТ ДРУГОЙ ХЕНДЛОВОЙ ТОЧКИ',
        en = 'ZERO HANDLE OF A POINT WHEN SETTING THE COORDINATES OF ANOTHER HANDLE POINT TO IT'
    },
    newLocation = {
        ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ, КООРДИНАТЫ КОТОРОЙ ЗАДАЮТСЯ ПЕРВОЙ ХЕНДЛОВОЙ ТОЧКЕ',
        en = 'THE ZERO HANDLE OF A POINT WHOSE COORDINATES ARE SET BY THE FIRST HANDLE POINT'
    }
}
---@param whichLocation location
---@param newLocation location
function m.moveFromLoc(whichLocation, newLocation)
    handleHandle(em.moveFromLoc.whichLocation[LocalizationKey], whichLocation)
    handleHandle(em.moveFromLoc.newLocation[LocalizationKey], newLocation)
    MoveLocation(whichLocation, m.getX(newLocation), m.getY(newLocation))
end

em.moveFromPoint = {
    ru = 'НУЛЕВОЙ ХЕНДЛ ТОЧКИ ПРИ ЗАДАНИИ ЕЙ КООРДИНАТ ТОЧКИ-ПРИМИТИВА',
    en = 'ZERO HANDLE OF A POINT WHEN SETTING THE COORDINATES OF A PRIMITIVE POINT TO IT'
}
---@param whichLocation location
---@param newPoint point
function m.moveFromPoint(whichLocation, newPoint)
    handleHandle(em.moveFromPoint[LocalizationKey], whichLocation)
    MoveLocation(whichLocation, Point.getX(newPoint), Point.getY(newPoint))
end