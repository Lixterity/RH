repeat task.wait() until game:IsLoaded()
local _ = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()

local scripts = {
    ["735030788"] = game:HttpGet("https://raw.githubusercontent.com/Lixterity/RH/main/TeleportMenu.lua?token=GHSAT0AAAAAACG5G2YO5WPLX2TEO4FZ34POZHOL4SQ"),
    ["4728136927"] = game:HttpGet("https://raw.githubusercontent.com/Lixterity/RH/main/Apartment.lua?token=GHSAT0AAAAAACG5G2YPF3W6OPU6X5NN5DGKZHOL4SA"),
    ["1765700510"] = game:HttpGet("https://raw.githubusercontent.com/Lixterity/RH/main/School.lua?token=GHSAT0AAAAAACG5G2YPST2BOQFFYFCZHWROZHOL4SA")
}; coroutine.resume(coroutine.create(loadstring(scripts[tostring(game.PlaceId)])))
    
if game.PlaceId ~= 735030788 then 
    coroutine.resume(coroutine.create(loadstring(game:HttpGet("https://raw.githubusercontent.com/3xpl01t3r/RoyaleHighXPAutoFarm/main/UtilityScripts/SolveCaptcha.lua"))))
    coroutine.resume(coroutine.create(loadstring(game:HttpGet("https://raw.githubusercontent.com/3xpl01t3r/RoyaleHighXPAutoFarm/main/UtilityScripts/AntiAfk.lua"))))
end
