game:GetService("RunService"):Set3dRenderingEnabled(false)

repeat task.wait() until game:IsLoaded()

local _ = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()

local scripts = {
    ["735030788"] = game:HttpGet("https://raw.githubusercontent.com/Lixterity/RH/main/TeleportAppartment.lua"),
    ["5589764519"] = game:HttpGet("https://raw.githubusercontent.com/Lixterity/RH/main/TeleportMenu.lua"),
    ["4709927839"] = game:HttpGet("https://raw.githubusercontent.com/Lixterity/RH/main/Apartment.lua"),
    ["1765700510"] = game:HttpGet("https://raw.githubusercontent.com/Lixterity/RH/main/School.lua")
}; coroutine.resume(coroutine.create(loadstring(scripts[tostring(game.PlaceId)])))
    
if game.PlaceId ~= 735030788 then 
    coroutine.resume(coroutine.create(loadstring(game:HttpGet("https://raw.githubusercontent.com/3xpl01t3r/RoyaleHighXPAutoFarm/main/UtilityScripts/SolveCaptcha.lua"))))
    coroutine.resume(coroutine.create(loadstring(game:HttpGet("https://raw.githubusercontent.com/3xpl01t3r/RoyaleHighXPAutoFarm/main/UtilityScripts/AntiAfk.lua"))))
end
