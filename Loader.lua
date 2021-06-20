if game.PlaceId == 5023820864 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Saturn-Scripts/Saturn-Hub/main/TradeTower.lua", true))()
end

if game.PlaceId ~= 5023820864 then
    game.Players.LocalPlayer:Kick("Game is not Supported")
end
