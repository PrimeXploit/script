local SettingsUniverse = {
	["18172550962"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/PrimeXploit/script/refs/heads/main/script/pixel-blade.lua"))()',
}

local SettingsPlace = {
    ["71793674075007"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/PrimeXploit/script/refs/heads/main/script/kanom-tokyo.lua"))()',
}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local placeId = tostring(game.PlaceId)
local universeId = tostring(game.GameId)

local scriptToRun = SettingsPlace[placeId] or SettingsUniverse[universeId]

if scriptToRun then
	loadstring(scriptToRun)()
else
	Player:Kick("This script isn’t supported yet")
end
