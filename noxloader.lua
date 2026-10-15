if not game:IsLoaded() then
    game.Loaded:Wait()
end

local BASE = 'https://raw.githubusercontent.com/NOX-SCRIPT/NOX/main/GAMES/'

local games = {
    [825735094] = 'sae.lua',
    [4372130] = 'bloxfruits.lua',
    [8818124] = 'vd.lua',
}

local file = games[game.PlaceId] or games[game.CreatorId]

if file then
    task.wait(math.random())
    pcall(function()
        loadstring(game:HttpGet(BASE .. file))()
    end)
end
