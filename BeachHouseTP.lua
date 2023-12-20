local placeId = game.PlaceId
repeat
    game:GetService("ReplicatedStorage").SceptorTeleport:FireServer("BeachHouse")
    task.wait(1)
until game.PlaceId ~= placeId
