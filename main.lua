-- KEY SYSTEM START

-- Key database: each has a link and its matching key
local keys = {
    {link = "https://work.ink/1Znx/7ps6e1pf", key = "X9J2-M4VK-P7Q1-Z0RT"}, -- Key 1
    {link = "https://work.ink/1Znx/pcxj638f", key = "B7PQ-2XKL-V9M3-A8WD"}, -- Key 2
    {link = "https://work.ink/1Znx/a8t5i8i4", key = "Q5ZN-K1VX-T7AP-4MRD"}, -- Key 3
    {link = "https://work.ink/1Znx/ay1y3d9n", key = "V3KQ-7NWL-P2XZ-Y9MB"}, -- Key 4
    {link = "https://work.ink/1Znx/tzv4tl0l", key = "A8MR-X5QZ-L0PV-T7KW"}, -- Key 5
}

-- Randomly pick one set
local chosen = keys[math.random(1, #keys)]

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

-- Button Functions
GetKeyButton.MouseButton1Click:Connect(function()
    setclipboard(chosen.link)
    MessageLabel.Text = "Key link copied to clipboard!"
end)

SubmitButton.MouseButton1Click:Connect(function()
    if TextBox.Text == chosen.key then
        MessageLabel.Text = "Key Correct! Loading..."
        Frame.Visible = false
        
        -- Load your main script here
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ishakfatrat34567/Dead-Rails-/refs/heads/main/main.lua"))()
    else
        MessageLabel.Text = "Wrong Key! Try again."
    end
end)

-- KEY SYSTEM END
