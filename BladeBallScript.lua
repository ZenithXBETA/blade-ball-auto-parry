-- The script initializes a GUI with features, auto parry, and other functions

-- Define the function to create the initial GUI
local function createGUI()
    -- Create ScreenGui for player
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
    ScreenGui.Name = "AutoParryGUI"

    -- Create main frame
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 300, 0, 200)
    mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
    mainFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    mainFrame.Parent = ScreenGui

    -- Create a label to show the status
    local statusLabel = Instance.new("TextLabel")
    statusLabel.Text = "Initializing features..."
    statusLabel.Size = UDim2.new(0, 280, 0, 40)
    statusLabel.Position = UDim2.new(0, 10, 0, 10)
    statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    statusLabel.BackgroundTransparency = 1
    statusLabel.Parent = mainFrame

    -- Function to hide the GUI after 2 seconds
    wait(2)
    ScreenGui:Destroy()
end

-- Define the function to initialize all features
local function initializeFeatures()
    local autoParry = false
    local autoSpam = false
    local manualSpam = false
    local autoCurve = false
    local antiCurve = false

    -- Add GUI for features
    local featureGui = Instance.new("ScreenGui")
    featureGui.Parent = game.Players.LocalPlayer.PlayerGui
    featureGui.Name = "FeaturesGUI"

    -- Create a frame for the features
    local featuresFrame = Instance.new("Frame")
    featuresFrame.Size = UDim2.new(0, 300, 0, 300)
    featuresFrame.Position = UDim2.new(0.5, -150, 0.5, -150)
    featuresFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    featuresFrame.Parent = featureGui

    -- Create buttons for each feature
    local autoParryButton = Instance.new("TextButton")
    autoParryButton.Text = "Auto Parry"
    autoParryButton.Size = UDim2.new(0, 280, 0, 40)
    autoParryButton.Position = UDim2.new(0, 10, 0, 10)
    autoParryButton.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
    autoParryButton.Parent = featuresFrame
    autoParryButton.MouseButton1Click:Connect(function()
        autoParry = not autoParry
        print("Auto Parry enabled:", autoParry)
    end)

    -- Add other features such as auto spam, manual spam, etc.
    local autoSpamButton = Instance.new("TextButton")
    autoSpamButton.Text = "Auto Spam"
    autoSpamButton.Size = UDim2.new(0, 280, 0, 40)
    autoSpamButton.Position = UDim2.new(0, 10, 0, 60)
    autoSpamButton.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
    autoSpamButton.Parent = featuresFrame
    autoSpamButton.MouseButton1Click:Connect(function()
        autoSpam = not autoSpam
        print("Auto Spam enabled:", autoSpam)
    end)

    -- Add more buttons here for the other features
    -- For example: manualSpamButton, autoCurveButton, antiCurveButton, etc.
end

-- Main logic to start the script
createGUI()
initializeFeatures()

