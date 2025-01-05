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

mainGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
mainGui.Name = "MainGUI"

mainFrame.Parent = mainGui
mainFrame.Size = UDim2.new(0, 300, 0, 400)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

-- Create buttons for each feature
local function createButton(button, text, position)
    button.Parent = mainFrame
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 20
end

createButton(autoParryButton, "Auto Parry", UDim2.new(0.5, -100, 0.1, 0))
createButton(autoSpamButton, "Auto Spam", UDim2.new(0.5, -100, 0.3, 0))
createButton(manualSpamButton, "Manual Spam", UDim2.new(0.5, -100, 0.5, 0))
createButton(antiCurveButton, "Anti Curve", UDim2.new(0.5, -100, 0.7, 0))
createButton(autoCurveButton, "Auto Curve", UDim2.new(0.5, -100, 0.9, 0))

-- Variables to keep track of enabled features
local autoParryEnabled = false
local autoSpamEnabled = false
local manualSpamEnabled = false
local antiCurveEnabled = false
local autoCurveEnabled = false

-- Feature logic implementation
local function activateAutoParry()
    -- Simulate auto parry action, this could be a loop that checks and parries when needed
    print("Auto Parry Activated!")
    while autoParryEnabled do
        -- Add auto parry logic, e.g., check for incoming attacks and automatically parry
        -- For example, pressing the parry button when conditions are met
        wait(0.5) -- Simulate waiting for the action to trigger
    end
end

local function deactivateAutoParry()
    -- Stop auto parry logic
    print("Auto Parry Deactivated!")
end

local function activateAutoSpam()
    -- Simulate auto spam, press a button repeatedly at intervals
    print("Auto Spam Activated!")
    while autoSpamEnabled do
        -- Add auto spam logic, e.g., simulate pressing the spam button
        wait(0.2) -- Simulate auto pressing the spam button at intervals
    end
end

local function deactivateAutoSpam()
    -- Stop auto spam logic
    print("Auto Spam Deactivated!")
end

local function activateManualSpam()
    -- Simulate manual spam (this could be pressing the button repeatedly by the user)
    print("Manual Spam Activated!")
    -- Assume you have a manual button for the user to press
end

local function deactivateManualSpam()
    -- Stop manual spam logic
    print("Manual Spam Deactivated!")
end

local function activateAntiCurve()
    -- Implement anti-curve feature
    print("Anti Curve Activated!")
    while antiCurveEnabled do
        -- Anti-curve logic here, preventing curves or bad angles
        wait(0.3)
    end
end

local function deactivateAntiCurve()
    -- Stop anti-curve logic
    print("Anti Curve Deactivated!")
end

local function activateAutoCurve()
    -- Implement auto-curve feature
    print("Auto Curve Activated!")
    while autoCurveEnabled do
        -- Auto-curve logic here
        wait(0.3)
    end
end

local function deactivateAutoCurve()
    -- Stop auto-curve logic
    print("Auto Curve Deactivated!")
end

-- Toggle feature functions
local function toggleAutoParry()
    autoParryEnabled = not autoParryEnabled
    if autoParryEnabled then
        activateAutoParry()
    else
        deactivateAutoParry()
    end
end

local function toggleAutoSpam()
    autoSpamEnabled = not autoSpamEnabled
    if autoSpamEnabled then
        activateAutoSpam()
    else
        deactivateAutoSpam()
    end
end

local function toggleManualSpam()
    manualSpamEnabled = not manualSpamEnabled
    if manualSpamEnabled then
        activateManualSpam()
    else
        deactivateManualSpam()
    end
end

local function toggleAntiCurve()
    antiCurveEnabled = not antiCurveEnabled
    if antiCurveEnabled then
        activateAntiCurve()
    else
        deactivateAntiCurve()
    end
end

local function toggleAutoCurve()
    autoCurveEnabled = not autoCurveEnabled
    if autoCurveEnabled then
        activateAutoCurve()
    else
        deactivateAutoCurve()
    end
end

-- Connect buttons to their respective toggle functions
autoParryButton.MouseButton1Click:Connect(toggleAutoParry)
autoSpamButton.MouseButton1Click:Connect(toggleAutoSpam)
manualSpamButton.MouseButton1Click:Connect(toggleManualSpam)
antiCurveButton.MouseButton1Click:Connect(toggleAntiCurve)
autoCurveButton.MouseButton1Click:Connect(toggleAutoCurve)

-- Debugging Print (Make sure the script is running)
print("Main GUI Initialized, ready to show features!")
