local services = setmetatable({},{__index = function(_,serv) return game:GetService(serv) end})
local localPlayer = services.Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local function sleep()
    local needsScreen = playerGui:WaitForChild("NeedsBar")
    local energyEventHandler = services.ReplicatedStorage.Needs.UpdateEnergy.OnClientEvent
    
    game.Players.LocalPlayer.Character:MoveTo(workspace:WaitForChild("Apartments"):GetChildren()[1]:WaitForChild("ApartmentBuilding"):WaitForChild("Stuff"):WaitForChild("bed"):WaitForChild("BedSeat").Position)
    task.wait(1)   
    game:GetService("ReplicatedStorage").Bed.Anim:FireServer("Sleep", "All Tucked In")
    
    repeat task.wait(2) 
    until getupvalues(getconnections(energyEventHandler)[2].Function)[1] == 1
    game.Players.LocalPlayer.Character:MoveTo(workspace:WaitForChild("Apartments"):GetChildren()[1]:WaitForChild("ApartmentBuilding"):WaitForChild("Stuff"):WaitForChild("bed"):WaitForChild("BedSeat").Position)
    task.wait(2)
    services.ReplicatedStorage.SceptorTeleport:FireServer("New Royale")
end; sleep()
