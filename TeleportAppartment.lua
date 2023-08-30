game:GetService("ReplicatedStorage").TPScepterNetwork.StartTeleport:FireServer("ApartmentsLobby", 2)
task.wait(5)
FireProximityPrompt(game:GetService("Workspace").TeleportPortals:GetChildren()[1].PromptAttachment.ProximityPrompt)
