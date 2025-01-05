-- Auto Parry Script for Blade Ball (No GUI, Just Features)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local parryCooldown = false

-- This is just a placeholder for the ball, adjust according to your game
local ball = game.Workspace:WaitForChild("Ball")

-- Function to detect ball proximity
local function isBallNear()
    local ballPosition = ball.Position
    local playerPosition = character.HumanoidRootPart.Position
    local distance = (ballPosition - playerPosition).magnitude
    return distance < 10 -- Adjust the distance threshold as needed
end

-- Parry function (Executes when ball is near and ready to parry)
local function parryBall()
    if isBallNear() and not parryCooldown then
        -- Logic for parrying, e.g., animation or action
        print("Parrying the ball!")
        parryCooldown = true
        -- Add parry action here, e.g., animating a parry or using an ability
        -- Example: humanoid:MoveTo(ball.Position) (adjust this based on how parry is triggered)
        
        wait(1) -- Cooldown for parry, adjust as needed
        parryCooldown = false
    end
end

-- Run the auto parry loop
while true do
    wait(0.1) -- Check every 0.1 seconds
    parryBall()
end
