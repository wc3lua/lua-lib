--============================================================================
-- Camera API

Camera = {}

local m = Camera

---@param x real
---@param y real
function m.setPosCoords(x, y)
    SetCameraPosition(x, y)
end

---@param p point
function m.setPosPoint(p)
    m.setPosCoords(Point.getX(p), Point.getY(p))
end

---@param loc location
function m.setPosLoc(loc)
    m.setPosCoords(ModuleLocation.getX(loc), ModuleLocation.getY(loc))
end

---@param x real
---@param y real
function m.setQuickPosCoords(x, y)
    SetCameraQuickPosition(x, y)
end

---@param p Pointable
function m.setQuickPos(p)
    local module = Pointable.getModule(p)
    m.setQuickPosCoords(module.getX(p), module.getY(p))
end

---@param x1 real
---@param y1 real
---@param x2 real
---@param y2 real
---@param x3 real
---@param y3 real
---@param x4 real
---@param y4 real
function m.setBoundsCoords(x1, y1, x2, y2, x3, y3, x4, y4)
    SetCameraBounds(x1, y1, x2, y2, x3, y3, x4, y4)
end

---@param p1 Pointable
---@param p2 Pointable
---@param p3 Pointable
---@param p4 Pointable
function m.setBoundsPos(p1, p2, p3, p4)
    local m1 = Pointable.getModule(p1)
    local m2 = Pointable.getModule(p2)
    local m3 = Pointable.getModule(p3)
    local m4 = Pointable.getModule(p4)
    m.setBoundsCoords(m1.getX(p1), m1.getY(p1), m2.getX(p2), m2.getY(p2), m3.getX(p3), m3.getY(p3), m4.getX(p4), m4.getY(p4))
end

---@param x1 real
---@param y1 real
---@param x2 real
---@param y2 real
---@param x3 real
---@param y3 real
---@param x4 real
---@param y4 real
function Camera:setBoundsCoords(x1, y1, x2, y2, x3, y3, x4, y4)
    SetCameraBounds(x1, y1, x2, y2, x3, y3, x4, y4)
    return self
end

---@param p1 Pointable
---@param p2 Pointable
---@param p3 Pointable
---@param p4 Pointable
function Camera:setBoundsPos(p1, p2, p3, p4)
    return self:setBoundsCoords(p1:getX(), p1:getY(), p2:getX(), p2:getY(), p3:getX(), p3:getY(), p4:getX(), p4:getY())
end

function m.stop()
    StopCamera()
end

---@param duration real
function m.resetToGame(duration)
    ResetToGameCamera(duration)
end

---@param x real
---@param y real
function m.panToCoords(x, y)
    PanCameraTo(x, y)
end

---@param p Pointable
function m.panToPos(p)
    local module = Pointable.getModule(p)
    m.panToCoords(module.getX(p), module.getY(p))
end

---@param x real
---@param y real
---@param duration real
function m.panToCoordsTimed(x, y, duration)
    PanCameraToTimed(x, y, duration)
end

---@param p Pointable
---@param duration real
function m.panToPosTimed(p, duration)
    local module = Pointable.getModule(p)
    m.panToCoordsTimed(module.getX(p), module.getY(p), duration)
end

---@param x real
---@param y real
---@param zOffsetDest real
function m.panToCoordsWithZ(x, y, zOffsetDest)
    PanCameraToWithZ(x, y, zOffsetDest)
end

---@param p Pointable
function m.panToPosWithZ(p)
    local module = Pointable.getModule(p)
    m.panToCoordsWithZ(module.getX(p), module.getY(p), module.getZ(p))
end

---@param x real
---@param y real
---@param zOffsetDest real
---@param duration real
function m.panToCoordsTimedWithZ(x, y, zOffsetDest, duration)
    PanCameraToTimedWithZ(x, y, zOffsetDest, duration)
end

---@param p Pointable
---@param duration real
function m.panToPosTimedWithZ(p, duration)
    local module = Pointable.getModule(p)
    m.panToCoordsTimedWithZ(module.getX(p), module.getY(p), module.getZ(p), duration)
end

---@param x real
---@param y real
---@param radiansToSweep real
---@param duration real
function m.setRotateModeCoords(x, y, radiansToSweep, duration)
    SetCameraRotateMode(x, y, radiansToSweep, duration)
end

---@param p Pointable
---@param radiansToSweep real
---@param duration real
function m.setRotateModePos(p, radiansToSweep, duration)
    local module = Pointable.getModule(p)
    m.setRotateModeCoords(module.getX(p), module.getY(p), radiansToSweep, duration)
end

---@param whichField camerafield
---@param value real
---@param duration real
function m.setField(whichField, value, duration)
    SetCameraField(whichField, value, duration)
end

---@param whichField camerafield
---@param offset real
---@param duration real
function m.afjustField(whichField, offset, duration)
    AdjustCameraField(whichField, offset, duration)
end

---@param whichUnit Unit
---@param xoffset real
---@param yoffset real
---@param inheritOrientation boolean
function m.setTargetController(whichUnit, xoffset, yoffset, inheritOrientation)
    SetCameraTargetController(whichUnit.handle, xoffset, yoffset, inheritOrientation)
end

---@param whichUnit unit
---@param xoffset real
---@param yoffset real
function m.setOrientController(whichUnit, xoffset, yoffset)
    SetCameraOrientController(whichUnit.handle, xoffset, yoffset)
end


---@param mag real
---@param velocity real
function CameraSetTargetNoise(mag, velocity) end

---@param mag real
---@param velocity real
function CameraSetSourceNoise(mag, velocity) end


---@param mag real
---@param velocity real
---@param vertOnly boolean
function CameraSetTargetNoiseEx(mag, velocity, vertOnly) end

---@param mag real
---@param velocity real
---@param vertOnly boolean
function CameraSetSourceNoiseEx(mag, velocity, vertOnly) end


---@param factor real
function CameraSetSmoothingFactor(factor) end


---@param filename string
function SetCineFilterTexture(filename) end

---@param whichMode blendmode
function SetCineFilterBlendMode(whichMode) end

---@param whichFlags texmapflags
function SetCineFilterTexMapFlags(whichFlags) end

---@param minu real
---@param minv real
---@param maxu real
---@param maxv real
function SetCineFilterStartUV(minu, minv, maxu, maxv) end

---@param minu real
---@param minv real
---@param maxu real
---@param maxv real
function SetCineFilterEndUV(minu, minv, maxu, maxv) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetCineFilterStartColor(red, green, blue, alpha) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetCineFilterEndColor(red, green, blue, alpha) end

---@param duration real
function SetCineFilterDuration(duration) end

---@param flag boolean
function DisplayCineFilter(flag) end

---@return boolean
function IsCineFilterDisplayed() end


---@param whichMargin integer
---@return real
function GetCameraMargin(whichMargin) end


-- These return values for the local players camera only...
---@return real
function GetCameraBoundMinX() end

---@return real
function GetCameraBoundMinY() end

---@return real
function GetCameraBoundMaxX() end

---@return real
function GetCameraBoundMaxY() end

---@param whichField camerafield
---@return real
function GetCameraField(whichField) end

---@return real
function GetCameraTargetPositionX() end

---@return real
function GetCameraTargetPositionY() end

---@return real
function GetCameraTargetPositionZ() end

---@return location
function GetCameraTargetPositionLoc() end

---@return real
function GetCameraEyePositionX() end

---@return real
function GetCameraEyePositionY() end

---@return real
function GetCameraEyePositionZ() end

---@return location
function GetCameraEyePositionLoc() end

---@param whichSetup camerasetup
---@param doPan boolean
---@param forcedDuration real
---@param easeInDuration real
---@param easeOutDuration real
---@param smoothFactor real
function BlzCameraSetupApplyForceDurationSmooth(whichSetup, doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor) end