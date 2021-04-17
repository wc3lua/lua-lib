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