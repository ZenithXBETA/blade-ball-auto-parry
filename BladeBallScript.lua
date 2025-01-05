-- Initialize the GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Button = Instance.new("TextButton")

-- Create the ScreenGui and Parent it to the player's PlayerGui
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "AutoParryGUI"

-- Create a Frame to hold the button
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

-- Create a label on the Frame
TextLabel.Parent = Frame
TextLabel.Size = UDim2.new(1, 0, 0.3, 0)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "Blade Ball Auto Parry Script"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20
TextLabel.TextAlign = Enum.TextAlign.Center

-- Create a button to start enabling features
Button.Parent = Frame
Button.Size = UDim2.new(0, 200, 0, 50)
Button.Position = UDim2.new(0.5, -100, 0.7, 0)
Button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Button.Text = "Enable Features"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 20

-- Button click event to print a message and enable features
Button.MouseButton1Click:Connect(function()
    print("GUI should appear now!")
    -- Here, you will add functionality to enable the auto parry and other features
    -- Example: Enable auto parry
    -- You can later expand it to add more logic as needed
end)

-- Debugging Print (Make sure the script is running)
print("GUI Initialized, ready to show!")
