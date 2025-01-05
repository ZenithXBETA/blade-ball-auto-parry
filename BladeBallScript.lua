-- Auto Parry Script for Blade Ball

-- Constants for the game
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local mouse = player:GetMouse()

-- Settings
local autoParryEnabled = true -- Toggle auto parry on/off
local parryDelay = 0.1 -- Delay between each parry attempt (in seconds)

-- Function to detect incoming ball
local function detectBall()
    local closestBall = nil
    local closestDistance = math.huge
    for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("Part") and obj.Name == "Ball" then
            local ballPosition = obj.Position
            local playerPosition = character.HumanoidRootPart.Position
            local distance = (ballPosition - playerPosition).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestBall = obj
            end
        end
    end
    return closestBall
end

-- Function to perform the parry action
local function performParry()
    local ball = detectBall()
    if ball then
        -- Check if the ball is near and if the angle is right for a perfect parry
        local ballDirection = (ball.Position - character.HumanoidRootPart.Position).Unit
        local playerFacing = character.HumanoidRootPart.CFrame.LookVector
        local angle = math.acos(ballDirection:Dot(playerFacing))

        -- If the ball is coming at a good angle to parry, perform the parry
        if angle < math.rad(30) then
            humanoid:MoveTo(ball.Position)  -- Move toward the ball for perfect parry
            -- You can add more actions here to simulate the parry or hit the ball
            print("Parrying!")
        end
    end
end

-- Main loop to keep the auto parry running
while autoParryEnabled do
    performParry()
    wait(parryDelay) -- Delay to avoid overloading the server
end
