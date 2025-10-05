local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        for _, item in pairs(character:GetDescendants()) do
            if item:IsA("BasePart") then
                item.Transparency = 1
                item.CanCollide = false
            elseif item:IsA("Accessory") then
                local handle = item:FindFirstChild("Handle")
                if handle then
                    handle.Transparency = 1
                    handle.CanCollide = false
                end
            end
        end
    end)
end)
