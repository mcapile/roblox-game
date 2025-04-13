local player = game.Players.LocalPlayer
local score = 0

workspace.ChildAdded:Connect(function(obj)
    if obj.Name == "EnemyCube" then
        obj.Touched:Connect(function(hit)
            if hit and hit:IsDescendantOf(player.Character) then
                obj:Destroy()
                score += 1
                print("Score:", score)
            end
        end)
    end
end)