local placeId = game.PlaceId
repeat
    game:GetService("ReplicatedStorage").SceptorTeleport:FireServer("BeachHouse")
    task.wait(5)
    game:GetService("TeleportService"):Teleport(4728136927)
until game.PlaceId ~= placeId
