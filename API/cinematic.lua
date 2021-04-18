Cinematic = {}

local m = Cinematic

---@param cameraModelFile string
function m.setCinematic(cameraModelFile)
    SetCinematicCamera(cameraModelFile)
end

---@param portraitUnitId integer
---@param color playercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration real
---@param voiceoverDuration real
function m.setScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration)
    SetCinematicScene(formatIntCC(portraitUnitId), color, speakerTitle, text, sceneDuration, voiceoverDuration)
end

function m.EndScene()
    EndCinematicScene()
end

---@param flag boolean
function m.forceSubtitles(flag)
    ForceCinematicSubtitles(flag)
end