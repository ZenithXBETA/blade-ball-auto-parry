-- Function to create the GUI
local function createGUI()
    -- Create your GUI components here
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer.PlayerGui
    
    local frame = Instance.new("Frame")
    frame.Parent = screenGui
    frame.Size = UDim2.new(0, 400, 0, 300)
    frame.Position = UDim2.new(0.5, -200, 0.5, -150)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = frame
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = "Initializing Features..."
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.TextSize = 24
    textLabel.TextXAlignment = Enum.TextXAlignment.Center
    textLabel.TextYAlignment = Enum.TextYAlignment.Center
    
    -- Wait for 2 seconds, then hide the GUI and show features
    wait(2)
    screenGui:Destroy()  -- Hide the initial GUI
    
    -- Now, call the features you want to show
    enableFeatures()  -- This is where you can enable auto parry, spam, etc.
end

-- Function to enable features
local function enableFeatures()
    -- Enable your features here
    print("Features Enabled!")
    -- For example, you can call the function for auto parry, spam, etc.
    autoParry()
    autoSpam()
    manualSpam()
    autoCurve()
    antiCurve()
    enableAutoParryVisualizer()
end

-- Example feature functions
local function autoParry()
    -- Put your code for auto parry here
    print("Auto Parry Enabled")
end

local function autoSpam()
    -- Put your code for auto spam here
    print("Auto Spam Enabled")
end

local function manualSpam()
    -- Put your code for manual spam here
    print("Manual Spam Enabled")
end

local function autoCurve()
    -- Put your code for auto curve here
    print("Auto Curve Enabled")
end

local function antiCurve()
    -- Put your code for anti curve here
    print("Anti Curve Enabled")
end

local function enableAutoParryVisualizer()
    -- Put your code to enable the visualizer here
    print("Auto Parry Visualizer Enabled")
end

-- Start the GUI creation and feature activation
createGUI()
