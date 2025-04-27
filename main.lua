-- KEY SYSTEM PATCH START

-- Create the UI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local GetKeyButton = Instance.new("TextButton")
local SubmitButton = Instance.new("TextButton")
local MessageLabel = Instance.new("TextLabel")

ScreenGui.Parent = game:GetService("CoreGui")

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

TextBox.Parent = Frame
TextBox.PlaceholderText = "Enter Key Here"
TextBox.Size = UDim2.new(0, 200, 0, 40)
TextBox.Position = UDim2.new(0.5, -100, 0, 30)
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)

GetKeyButton.Parent = Frame
GetKeyButton.Text = "Get Key"
GetKeyButton.Size = UDim2.new(0, 100, 0, 30)
GetKeyButton.Position = UDim2.new(0.5, -110, 0, 90)
GetKeyButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)

SubmitButton.Parent = Frame
SubmitButton.Text = "Submit Key"
SubmitButton.Size = UDim2.new(0, 100, 0, 30)
SubmitButton.Position = UDim2.new(0.5, 10, 0, 90)
SubmitButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)

MessageLabel.Parent = Frame
MessageLabel.Text = ""
MessageLabel.Size = UDim2.new(0, 280, 0, 30)
MessageLabel.Position = UDim2.new(0.5, -140, 0, 140)
MessageLabel.BackgroundTransparency = 1
MessageLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
MessageLabel.TextScaled = true

-- Variables
local correctKey = "9A7B-3F2K-X1Z9"
local RealScript = function()
    -- YOUR MAIN SCRIPT CODE GOES HERE
    -- Or call a loadstring if you want it to be clean
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ishakfatrat34567/Dead-Rails/refs/heads/main/Main.lua"))()
end

-- Functionality
GetKeyButton.MouseButton1Click:Connect(function()
    setclipboard("https://work.ink/1Znx/ybu99gtb")
    MessageLabel.Text = "Link copied to clipboard!"
end)

SubmitButton.MouseButton1Click:Connect(function()
    if TextBox.Text == correctKey then
        MessageLabel.Text = "Key Correct! Loading..."
        Frame.Visible = false
        RealScript()
    else
        MessageLabel.Text = "Wrong Key! Try again."
    end
end)

-- KEY SYSTEM PATCH END
