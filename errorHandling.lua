local getHandledCallback = function(callback)
	return function()
		if callback == nil then return end
		local status, err = pcall(callback)
		if not status then
			print('ERROR: '..err)
		end
	end
end

local realTimerStart = TimerStart
TimerStart = function(timer, duration, repeating, callback)
	realTimerStart(timer, duration, repeating, getHandledCallback(callback))
end

local realTriggerAddAction = TriggerAddAction
TriggerAddAction = function(trig, callback)
	realTriggerAddAction(trig, getHandledCallback(callback))
end

ErrorHandlingOn = true

---@param message string
function handleHandle(message, handle)
    if not handle and ErrorHandlingOn then
        print('ERROR:', message)
    end
    return handle
end

-- Работа закончена

local error = 'Работа завершена'




------- добавлены новые строчки