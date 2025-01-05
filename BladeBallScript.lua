-- Initialize the temporary welcome GUI
local welcomeGui = Instance.new("ScreenGui")
local welcomeFrame = Instance.new("Frame")
local welcomeTextLabel = Instance.new("TextLabel")

welcomeGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
welcomeGui.Name = "WelcomeGUI"

welcomeFrame.Parent = welcomeGui
welcomeFrame.Size = UDim2.new(0, 300, 0, 200)
welcomeFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
welcomeFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

welcomeTextLabel.Parent = welcomeFrame
welcomeTextLabel.Size = UDim2.new(1, 0, 1, 0)
welcomeTextLabel.Position = UDim2.new(0, 0, 0, 0)
welcomeTextLabel.BackgroundTransparency = 1
welcomeTextLabel.Text = "ZenithXBETA"
welcomeTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
welcomeTextLabel.TextSize = 20
welcomeTextLabel.TextAlign = Enum.TextAlign.Center

-- Remove the welcome GUI after 2 seconds
wait(2)
welcomeGui:Destroy()

-- Initialize the main GUI
local mainGui = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local autoParryButton = Instance.new("TextButton")
local autoSpamButton = Instance.new("TextButton")
local manualSpamButton = Instance.new("TextButton")
local antiCurveButton = Instance.new("TextButton")
local autoCurveButton = Instance.new("TextButton")
local minimizeButton = Instance.new("TextButton")
local exitButton = Instance.new("TextButton")
local maximizeButton = Instance.new("TextButton")
local nameLabel = Instance.new("TextLabel")

mainGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
mainGui.Name = "MainGUI"

mainFrame.Parent = mainGui
mainFrame.Size = UDim2.new(0, 300, 0, 400)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black background
mainFrame.BackgroundTransparency = 0.3 -- Slight transparency

-- Create buttons for each feature
local function createButton(button, text, position, color)
    button.Parent = mainFrame
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.BackgroundColor3 = color or Color3.fromRGB(0, 255, 0)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 20
end

createButton(autoParryButton, "Auto Parry", UDim2.new(0.5, -100, 0.1, 0), Color3.fromRGB(0, 255, 0))
createButton(autoSpamButton, "Auto Spam", UDim2.new(0.5, -100, 0.3, 0), Color3.fromRGB(0, 255, 0))
createButton(manualSpamButton, "Manual Spam", UDim2.new(0.5, -100, 0.5, 0), Color3.fromRGB(0, 255, 0))
createButton(antiCurveButton, "Anti Curve", UDim2.new(0.5, -100, 0.7, 0), Color3.fromRGB(0, 255, 0))
createButton(autoCurveButton, "Auto Curve", UDim2.new(0.5, -100, 0.9, 0), Color3.fromRGB(0, 255, 0))

-- Exit, Minimize, and Maximize Buttons
createButton(minimizeButton, "-", UDim2.new(1, -40, 0, 0), Color3.fromRGB(255, 0, 0))
minimizeButton.TextSize = 30
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
minimizeButton.MouseButton1Click:Connect(function()
    mainGui.Enabled = false
end)

createButton(exitButton, "X", UDim2.new(1, -80, 0, 0), Color3.fromRGB(255, 0, 0))
exitButton.TextSize = 30
exitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exitButton.MouseButton1Click:Connect(function()
    mainGui:Destroy()
end)

createButton(maximizeButton, "□", UDim2.new(1, -120, 0, 0), Color3.fromRGB(0, 0, 255))
maximizeButton.TextSize = 30
maximizeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
maximizeButton.MouseButton1Click:Connect(function()
    mainGui.Enabled = true
end)

-- Display script name at the bottom left
nameLabel.Parent = mainGui
nameLabel.Size = UDim2.new(0, 200, 0, 30)
nameLabel.Position = UDim2.new(0, 0, 1, -30)
nameLabel.BackgroundTransparency = 1
nameLabel.Text = "ZenithXBETA"
nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
nameLabel.TextSize = 15

-- Toggle feature functions (with button color change)
local function toggleAutoParry()
    autoParryButton.BackgroundColor3 = autoParryButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and Color3.fromRGB(0, 0, 255) or Color3.fromRGB(0, 255, 0)
    print("Auto Parry " .. (autoParryButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and "Disabled" or "Enabled"))
    -- Add auto parry functionality here
end

local function toggleAutoSpam()
    autoSpamButton.BackgroundColor3 = autoSpamButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and Color3.fromRGB(0, 0, 255) or Color3.fromRGB(0, 255, 0)
    print("Auto Spam " .. (autoSpamButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and "Disabled" or "Enabled"))
    -- Add auto spam functionality here
end

local function toggleManualSpam()
    manualSpamButton.BackgroundColor3 = manualSpamButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and Color3.fromRGB(0, 0, 255) or Color3.fromRGB(0, 255, 0)
    print("Manual Spam " .. (manualSpamButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and "Disabled" or "Enabled"))
    -- Add manual spam functionality here
end

local function toggleAntiCurve()
    antiCurveButton.BackgroundColor3 = antiCurveButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and Color3.fromRGB(0, 0, 255) or Color3.fromRGB(0, 255, 0)
    print("Anti Curve " .. (antiCurveButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and "Disabled" or "Enabled"))
    -- Add anti curve functionality here
end

local function toggleAutoCurve()
    autoCurveButton.BackgroundColor3 = autoCurveButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and Color3.fromRGB(0, 0, 255) or Color3.fromRGB(0, 255, 0)
    print("Auto Curve " .. (autoCurveButton.BackgroundColor3 == Color3.fromRGB(0, 255, 0) and "Disabled" or "Enabled"))
    -- Add auto curve functionality here
end

-- Connect buttons to their respective toggle functions
autoParryButton.MouseButton1Click:Connect(toggleAutoParry)
autoSpamButton.MouseButton1Click:Connect(toggleAutoSpam)
manualSpamButton.MouseButton1Click:Connect(toggleManualSpam)
antiCurveButton.MouseButton1Click:Connect(toggleAntiCurve)
autoCurveButton.MouseButton1Click:Connect(toggleAutoCurve)

-- Debugging Print (Make sure the script is running)
print("Main GUI Initialized, ready to show features!")
