-- Automation Test
AutomationTest = {}

local m = AutomationTest


---@param testType string
function m.setType(testType)
    AutomationSetTestType(testType)
end

---@param testName string
function m.start(testName)
    AutomationTestStart(testName)
end

function m.End()
    AutomationTestEnd()
end

function m.finish()
    AutomationTestingFinished()
end