
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local BASE = "https://raw.githubusercontent.com/NOX-SCRIPT/NOX/refs/heads/main/GAMES/"

local NOX = {
    [825735094] = "sae.lua",
    [4372130] = "bloxfruits.lua",
}

local function getScriptPath()
    return NOX[game.PlaceId]
end

local function main()
    local file = getScriptPath()

    if not file then
        return
    end

    local url = BASE .. file
    return url
end

local success, result = pcall(main)

if success and result then
    return result
end
