local services = setmetatable({},{__index = function(_,serv) return game:GetService(serv) end})
local localPlayer = services.Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local function sleep()
    local needsScreen = playerGui:WaitForChild("NeedsBar")
    local energyEventHandler = services.ReplicatedStorage.Needs.UpdateEnergy.OnClientEvent
    
    localPlayer.Character:MoveTo(workspace:WaitForChild("Apartments"):GetChildren()[1]:WaitForChild("ApartmentBuilding"):WaitForChild("Stuff"):WaitForChild("bed"):WaitForChild("BedSeat").Position)
    
    repeat task.wait(5)
        services.ReplicatedStorage.Bed.Anim:FireServer("Sleep", "All Tucked In")
        print("sleeping")
    until getupvalues(getconnections(energyEventHandler)[2].Function)[1] == 1

    localPlayer.Character.Humanoid.Jump = true
    localPlayer.Character:MoveTo(workspace:WaitForChild("Apartments"):GetChildren()[1]:WaitForChild("ApartmentBuilding"):WaitForChild("Stuff"):WaitForChild("KitchenLightSwitch"):WaitForChild("Switch").Position)
    
    repeat task.wait(5)
        services.ReplicatedStorage.SceptorTeleport:FireServer("New Royale")
        print("tping")
    until game.PlaceId == 1765700510
end; sleep()