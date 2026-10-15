-- NOX SCRIPT LOADER
-- Repository: NOX-SCRIPT/NOX
-- Routes configured game IDs to script files in GAMES/.

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local BASE = "https://raw.githubusercontent.com/NOX-SCRIPT/NOX/refs/heads/main/GAMES/"

local NOX = {
    [825735094] = "sae.lua",

    -- Blox Fruits place IDs; verify these are the places you intend to support.
    [2753915549] = "bloxfruits.lua",
    [4442272183] = "bloxfruits.lua",
    [7449423635] = "bloxfruits.lua",
}

local function getScriptURL()
    local file = NOX[game.PlaceId]
    if not file then
        return nil
    end
    return BASE .. file
end

local url = getScriptURL()
if not url then
    return
end

-- This loader deliberately resolves the configured URL only.
-- For Roblox experiences you own, use ModuleScripts/require() in Studio
-- rather than executor-based remote code execution.
return url
