local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBoxTemplate = Instance.new("Frame")
local WindowTitle_2 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local ToggleTemplate = Instance.new("Frame")
local Click_2 = Instance.new("TextButton")
local WindowTitle_3 = Instance.new("TextLabel")
local UIGridLayout_2 = Instance.new("UIGridLayout")

ScreenGui.Name = "UILIB_1"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.00493522501, 0, 0.0133689838, 0)
Frame.Size = UDim2.new(1, 0, 0.39, 0)

UIGridLayout_2.Parent = Frame
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellSize = UDim2.new(0.119999997, 0, 1, 0)



local library = {}

function library:CreateWindow(Title)
	local WindowTemplate = Instance.new("Frame")
	local WindowTitle = Instance.new("TextLabel")
	
	WindowTemplate.Name = Title
	WindowTemplate.Parent = Frame
	WindowTemplate.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	WindowTemplate.BackgroundTransparency = 1.000
	WindowTemplate.Size = UDim2.new(1, 0, 0, 47)

	WindowTitle.Name = "WindowTitle"
	WindowTitle.Parent = WindowTemplate
	WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WindowTitle.BackgroundTransparency = 1.000
	WindowTitle.Size = UDim2.new(1, 0, 0.0973782763, 0)
	WindowTitle.ZIndex = 2
	WindowTitle.Font = Enum.Font.Gotham
	WindowTitle.Text = Title
	WindowTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	WindowTitle.TextScaled = true
	WindowTitle.TextSize = 14.000
	WindowTitle.TextWrapped = true
	
	local Line = Instance.new("Frame")
	local Background = Instance.new("Frame")
	
	Line.Name = "Line"
	Line.Parent = WindowTemplate
	Line.BackgroundColor3 = Color3.fromRGB(0, 255, 140)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 0.0973782763, 0)
	Line.Size = UDim2.new(1, 0, 0.00800000038, 0)
	Line.ZIndex = 2

	Background.Name = "Background"
	Background.Parent = WindowTemplate
	Background.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Background.Size = UDim2.new(1, 0, 1, 0)
	
	local List = Instance.new("Frame")
	local UIGridLayout = Instance.new("UIGridLayout")
	
	List.Name = "List"
	List.Parent = Background
	List.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	List.BorderSizePixel = 0
	List.Position = UDim2.new(0, 0, 0.130200967, 0)
	List.Size = UDim2.new(1, 0, 0.869799018, 0)

	UIGridLayout.Parent = List
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(1, 0, 0.0900000036, 0)
end

function library:CreateButton(WindowName, ButtonName, callback)
	local callback = callback or function() end
	
	local ButtonTemplate = Instance.new("Frame")
	local Click = Instance.new("TextButton")
	
	ButtonTemplate.Name = "ButtonTemplate"
	ButtonTemplate.Parent = game.Players.LocalPlayer.PlayerGui.UILIB_1.Frame[WindowName].Background.List
	ButtonTemplate.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	ButtonTemplate.BorderSizePixel = 0
	ButtonTemplate.Size = UDim2.new(1, 0, 0.100000001, 0)

	Click.Name = "Click"
	Click.Parent = ButtonTemplate
	Click.AnchorPoint = Vector2.new(0.5, 0.5)
	Click.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Click.BorderColor3 = Color3.fromRGB(200, 200, 200)
	Click.Position = UDim2.new(0.5, 0, 0.5, 0)
	Click.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
	Click.Font = Enum.Font.Gotham
	Click.Text = ButtonName
	Click.TextColor3 = Color3.fromRGB(255, 255, 255)
	Click.TextScaled = true
	Click.TextSize = 14.000
	Click.TextWrapped = true
	
	Click.MouseButton1Down:Connect(function()
		pcall(callback)
	end)
end

function library:CreateTextBox(WindowName, TextBoxName, StandartText)
    local TextBoxTemplate = Instance.new("Frame")
    local WindowTitle_2 = Instance.new("TextLabel")
    local TextBox = Instance.new("TextBox")
    
    TextBoxTemplate.Name = "TextBoxTemplate"
    TextBoxTemplate.Parent = game.Players.LocalPlayer.PlayerGui.UILIB_1.Frame[WindowName].Background.List
    TextBoxTemplate.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    TextBoxTemplate.BorderSizePixel = 0
    TextBoxTemplate.Size = UDim2.new(1, 0, 0.100000001, 0)
    
    WindowTitle_2.Name = "WindowTitle"
    WindowTitle_2.Parent = TextBoxTemplate
    WindowTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WindowTitle_2.BackgroundTransparency = 1.000
    WindowTitle_2.Position = UDim2.new(0.0500000082, 0, 0, 0)
    WindowTitle_2.Size = UDim2.new(0.638000011, 0, 0.899999976, 0)
    WindowTitle_2.ZIndex = 2
    WindowTitle_2.Font = Enum.Font.Gotham
    WindowTitle_2.Text = TextBoxName
    WindowTitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    WindowTitle_2.TextScaled = true
    WindowTitle_2.TextSize = 14.000
    WindowTitle_2.TextWrapped = true
    WindowTitle_2.TextXAlignment = Enum.TextXAlignment.Left
    
    TextBox.Parent = TextBoxTemplate
    TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
    TextBox.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    TextBox.BorderColor3 = Color3.fromRGB(200, 200, 200)
    TextBox.BorderSizePixel = 2
    TextBox.Position = UDim2.new(0.840336442, 0, 0.464750051, 0)
    TextBox.Size = UDim2.new(0.213327169, 0, 0.87049979, 0)
    TextBox.Font = Enum.Font.Gotham
    TextBox.Text = StandartText
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextScaled = true
    TextBox.TextSize = 14.000
    TextBox.TextWrapped = true
    
    -- later an text changed callback etc.
end
