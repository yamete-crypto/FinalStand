-- AutoBroly Z

-- Made by yamete_#3109


Move1 = "Meteor Crash"		
Move2 = "Anger Rush"
Move3 = "Deadly Dance"
Move4 = "Wolf Fang Fist"
Move5 = "Neo Wolf Fang Fist"
Move6 = "Sweep Kick"
Move7 = "TS Molotov"
Move8 = "Vital Strike"

AllowOthers = false			-- true to join with other players
AutoHit = true
EarthJoin = false

--[[

	This has auto transform, and auto Beans/Jars spam
						
	Always check new scripts on alt before using them, because you can get your account banned!
						
	I suggest leaving the loadstring and not changing it with the code from the link, so you won't miss any updates
]]--

if not game:IsLoaded() then
	game.Loaded:Wait()
	wait(LoadInTime)
end

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local dcimage = Instance.new("ImageLabel")
local broly = Instance.new("ImageLabel")
local pavadinimas = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local dc = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local planeta = Instance.new("TextLabel")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.800
Frame.Position = UDim2.new(0.485714287, 0, 0.335543782, 0)
Frame.Size = UDim2.new(0, 382, 0, 248)
Frame.Active = true
Frame.Draggable = true

dcimage.Name = "dcimage"
dcimage.Parent = Frame
dcimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dcimage.BackgroundTransparency = 1.000
dcimage.Position = UDim2.new(0.560448647, 0, 0.793010831, 0)
dcimage.Size = UDim2.new(0, 39, 0, 34)
dcimage.Image = "rbxassetid://6807076348"

broly.Name = "broly"
broly.Parent = Frame
broly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
broly.BackgroundTransparency = 1.000
broly.Position = UDim2.new(0.0443673544, 0, 0.0651074946, 0)
broly.Size = UDim2.new(0, 126, 0, 215)
broly.Image = "rbxassetid://6806073619"

pavadinimas.Name = "pavadinimas"
pavadinimas.Parent = Frame
pavadinimas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pavadinimas.BackgroundTransparency = 0.800
pavadinimas.BorderColor3 = Color3.fromRGB(0, 0, 0)
pavadinimas.BorderSizePixel = 0
pavadinimas.Position = UDim2.new(0.403141379, 0, 0.112903222, 0)
pavadinimas.Size = UDim2.new(0, 200, 0, 50)
pavadinimas.Font = Enum.Font.SciFi
pavadinimas.Text = "AutoBroly Z"
pavadinimas.TextColor3 = Color3.fromRGB(0, 0, 0)
pavadinimas.TextSize = 35.000
pavadinimas.TextWrapped = true

UICorner.CornerRadius = UDim.new(0.400000006, 0)
UICorner.Parent = pavadinimas

dc.Name = "dc"
dc.Parent = Frame
dc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dc.BackgroundTransparency = 1.000
dc.BorderSizePixel = 0
dc.Position = UDim2.new(0.6806283, 0, 0.793010831, 0)
dc.Size = UDim2.new(0, 94, 0, 28)
dc.Font = Enum.Font.SciFi
dc.Text = "yamete_#3109"
dc.TextColor3 = Color3.fromRGB(0, 0, 0)
dc.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0.150000006, 0)
UICorner_2.Parent = Frame

planeta.Name = "planeta"
planeta.Parent = Frame
planeta.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
planeta.BackgroundTransparency = 1.000
planeta.BorderSizePixel = 0
planeta.Position = UDim2.new(0.403141379, 0, 0.435483873, 0)
planeta.Size = UDim2.new(0, 200, 0, 50)
planeta.Font = Enum.Font.SciFi
planeta.Text = "Loading..."
planeta.TextColor3 = Color3.fromRGB(0, 0, 0)
planeta.TextSize = 22.000
planeta.TextWrapped = true


local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
	Title = "AutoBroly Z";
	Text = "Made by yamete_#3109";
	Duration = 5;})
CoreGui:SetCore("SendNotification", {
	Title = "Credits";
	Text = "NabilDr#4888";
	Duration = 5;})

if game.PlaceId == 536102540 and EarthJoin == false then
	planeta.Text = "Teleporting to Queue..."
	game:GetService("TeleportService"):Teleport(3565304751, game.Players.LocalPlayer)
elseif game.PlaceId == 3565304751 then
	planeta.Text = "Joining Broly Raid..."
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/yamete-crypto/FinalStand/main/WaterMarkJoinBroly.lua"),true))()
elseif game.PlaceId == 2050207304 then
	planeta.Text = "Fighting Broly..."
	getgenv().Moves = {
		Move1,
		Move2,
		Move3,
		Move4,
		Move5,
		Move6,
		Move7,
		Move8
	}

	getgenv().AntiLeech = not AllowOthers
	getgenv().AutoHit = AutoHit
	getgenv().TimeUntilRejoin = 400 -- Recommended 350 - 450. (broly world)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/yamete-crypto/FinalStand/main/brolyEngine.lua", true))()
end