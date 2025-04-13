local ReplicatedStorage = game:GetService("ReplicatedStorage")
local spawnZone = workspace:WaitForChild("SpawnZone")
local template = workspace:WaitForChild("EnemyCubeTemplate")

local score = 0
local lives = 10
local activeCubes = {}

function spawnCube(xPos)
    local cube = template:Clone()
    cube.Parent = workspace
    cube.Position = Vector3.new(xPos, spawnZone.Position.Y, 0)
    cube.Anchored = false
    cube.Name = "EnemyCube"
    table.insert(activeCubes, cube)
end

while true do
    wait(1)
    spawnCube(math.random(-20, 20))

    for i = #activeCubes, 1, -1 do
        local cube = activeCubes[i]
        if cube and cube.Position.Y <= 0 then
            cube:Destroy()
            lives -= 1
            table.remove(activeCubes, i)
        end
    end

    if lives <= 0 then
        print("Game Over!")
        break
    elseif score >= 50 then
        print("You Win!")
        break
    end
end