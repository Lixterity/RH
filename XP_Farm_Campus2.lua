getgenv().Settings = {
    DisableRendering = true,
    FPSCap = 30
} 

setfpscap(Settings.FPSCap or 60)
local tdrender = not Settings.DisableRendering
RunService:Set3dRenderingEnabled(tdrender)

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    local btn = Instance.new("TextButton", ScreenGui)

    btn.BackgroundColor3 = Color3.fromRGB(18, 21, 28)
    btn.BorderSizePixel = 0
    btn.Text = "3D Render"
    btn.TextColor3 = Color3.new(255, 255, 255)
    btn.TextScaled = true
    btn.Size = UDim2.new(0, 150, 0, 50)
    btn.Position = UDim2.new(0.3, 0, 0.3, 0)
    btn.MouseButton1Click:Connect(function()
        tdrender = not tdrender
        RunService:Set3dRenderingEnabled(tdrender)
    end)

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
