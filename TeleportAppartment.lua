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

game:GetService("ReplicatedStorage").SceptorTeleport:FireServer("ApartmentsLobby")
