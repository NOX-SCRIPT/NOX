if not game:IsLoaded() then
game.Loaded:Wait()
end

local BASE = "https://raw.githubusercontent.com/NOX-SCRIPT/NOX/main/GAMES/"

local NOX = {
[825735094] = "sae.lua",
}

local function getScriptPath()
return NOX[game.PlaceId] or NOX[game.CreatorId]
end

local function main()
local file = getScriptPath()

if not file then  
    return  
end

end

pcall(main)
