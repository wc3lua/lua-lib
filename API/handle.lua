---@class Handle:Type

Handle = {}

local m = Handle

---@param handle handle
---@param type string
---@return Handle
function m.new(handle, type)
    local obj = newType(type)
    if handle ~= nil then
        obj.handle = handle
    else
        obj.handle = 0
    end
    return obj
end

---@param handle Handle
---@return integer
function m.getId(handle)
    return GetHandleId(handle.handle)
end