--[[

                _ 
     /\        (_)
    /  \    _____ 
   / /\ \  |_  / |
  / ____ \  / /| |
 /_/    \_\/___|_|
                                                                                                                                                   
--]]
_G.SAEnabled = true

local L_1_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/azirunning/Road2Star/main/IYKYK.txt"))()

local L_2_ = L_1_:AddWindow("Xanity", {
	main_color = Color3.fromRGB(255, 0, 0),
	min_size = Vector2.new(450, 500),
	toggle_key = Enum.KeyCode.RightControl,
	can_resize = true,
})

local L_3_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/azirunning/Road2Star/main/So.lua"))()
-- // Mains
local UserInputService = game:GetService("UserInputService")

UserInputService.InputEnded:Connect(function(input, gameProcessed)
    if input.UserInputType == Enum.UserInputType.Keyboard then
        local keyPressed = input.KeyCode
        if keyPressed.Name == 'RightBracket' then
            L_3_.FOV = L_3_.FOV + 1
        end
        if keyPressed.Name == 'LeftBracket' then
            L_3_.FOV = L_3_.FOV - 1
        end
    end
end)
local L_4_ = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
L_4_:Toggle(false)
L_4_.Tracers = false
L_4_.Names = false
L_4_.Boxes = false
L_3_.TeamCheck(false)
L_3_.VisibleCheck = true
L_3_.Airshots = true
-- // Dependencies

local L_5_ = game:GetService("Workspace")
local L_6_ = game:GetService("Players")
local L_7_ = game:GetService("RunService")
local L_8_ = game:GetService("UserInputService")

local L_9_ = L_6_.LocalPlayer
local L_10_ = L_9_:GetMouse()
local L_11_ = L_5_.CurrentCamera

local L_12_ = {
	Background = Color3.fromRGB(0, 0, 0),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(0, 0, 0),
	LightContrast = Color3.fromRGB(0, 0, 0),
	DarkContrast = Color3.fromRGB(0, 0, 0),
	TextColor = Color3.fromRGB(255, 255, 255)
}

local L_13_ = {
	SilentAim = false,
	AimLock = true, 
	Prediction = 0.165
}

getgenv().DaHoodSettings = L_13_

local function L_14_func(L_21_arg0)
	if L_21_arg0 == "Yes" then
		print("User said yes")
	elseif L_21_arg0 == "No" then
		print("User said no")
	end
end

local L_15_ = Instance.new("BindableFunction")

game.StarterGui:SetCore("SendNotification", {
	Title = "Xanity X";
	Text = "Xamity On Top";
	Icon = "RBXID OR BLANK";
	Duration = "DURATION IN SECONDS";
	callbakc = L_15_;
	Button1 = "Okay :)";
})

local L_16_ = L_2_:AddTab("Aimlock")
local L_17_ = L_2_:AddTab("Esp")
local L_18_ = L_2_:AddTab("TPS")
local L_20_ = L_2_:AddTab("FOV")
local L_21_ = L_2_:AddTab("Extra")

L_21_:AddButton("Shit Talk (Home)", function(L_30_arg0)
    local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "this all u got";
    "bros my son";
    "ez";
    "my dog has more skill";
    "seed";
    "sit son";
    "trash";
    "LOL";
    "pls try";
    "xd";
    "don't try LOL";
    "you lose";
    "why do you even try";
    "how you miss me";
    "leave";
    "no skill";
    "so sad man.";
    "bad";
    "no aim xd";
    "lol";
    "so trash";
    "so bad";
    "ur salty";
    "salty";
    "look he's mad";
    "cry more";
    "keep crying";
    "cry baby";
    "hahaha I won";
    "no one likes u";
    "run 1s seed";
    "thank you for your time";
    "you almost had me";
    "try harder next time";
    "rodent";
    "HAHA";
    "ill 5-0";
    "just quit";
    "bro got tossed";
    "werent you better";
    "I'm surprised you haven't quit yet";
    "bro what you aiming at";
    "kids mad hes bad";
    "get airshot xd";
    "log if you cant take it";
    "lowkey kinda sad";
    "get clipped lol";
    "do a flip ahaha";



















}

function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Home and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)
end)

L_21_:AddButton("Rejoin Server", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)

L_21_:AddButton("Made By Azi")
 
L_18_:AddButton("Speed (Q)", function(L_44_arg0)
local L_45_ = game:GetService('Players').LocalPlayer
down = true
 
function onButton1Down(mouse)
    down = true
    while down do
        if not down then break end
        local char = L_45_.Character
        char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * 190
        wait()
    end
end
 
function onButton1Up(mouse)
    down = false
end
 
function onSelected(mouse)
    mouse.KeyDown:connect(function(q) if q:lower()=="q"then onButton1Down(mouse)end end)
    mouse.KeyUp:connect(function(q) if q:lower()=="q"then onButton1Up(mouse)end end)
end
onSelected(game.Players.LocalPlayer:GetMouse())
end)


L_20_:AddButton("Field of View (70)", function(L_32_arg0)
    workspace.CurrentCamera.FieldOfView = (70)
end)
L_20_:AddButton("Field of View (100)", function(L_32_arg0)
    workspace.CurrentCamera.FieldOfView = (100)
end)
L_20_:AddButton("Field of View (120)", function(L_32_arg0)
    workspace.CurrentCamera.FieldOfView = (120)
end)

L_18_:AddButton("Rev Building (TP)", function(L_32_arg0)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-674.19891357422, 47.272911071777, -144.78526306152, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

L_18_:AddButton("Admin Guns (TP)", function(L_32_arg0)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-871.79370117188, -32.65198135376, -526.53021240234)
end)

L_18_:AddButton("Cheap RPG (TP)", function(L_32_arg0)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-787.27734375, -39.65198135376, -934.00939941406)
end)

L_18_:AddButton("Food (TP)", function(L_32_arg0)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(187.03312683105, 25.127229690552, -967.68676757813)
end)

L_18_:AddButton("Db Building (TP)", function(L_35_arg0)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1046.0380859375, 80.410621643066, -243.91618347168, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

L_18_:AddButton("High Armor (TP)", function(L_39_arg0)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-917.8759765625, -25.160543441772, 555.62518310547, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

L_18_:AddButton("Mask Food(TP)", function(L_39_arg0)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-677.11364746094, 21.997995376587, 312.50341796875, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

L_18_:AddButton("Key (TP)", function(L_39_arg0)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-250.18479919434, 21.747999191284, -213.42314147949, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

L_16_:AddSwitch("Silent Aim", function(L_50_arg0)
	L_13_.SilentAim = L_50_arg0
end)

L_16_:AddSwitch("FOV Circle", function(L_55_arg0)
	L_3_.ShowFOV = L_55_arg0
end)

L_16_:AddSlider("FOV Size", function(L_56_arg0)
	L_3_.FOV = L_56_arg0
end, {
	["min"] = 0,
	["max"] = 400,
	["readonly"] = false,
})

L_16_:AddSlider("Hitchance", function(L_57_arg0)
	L_13_.Prediction = tonumer("0." .. L_57_arg0)
end, {
	["min"] = 0,
	["max"] = 500,
	["readonly"] = false,
})

L_16_:AddSwitch("Visible Check", function(L_58_arg0)
	L_3_.VisibleCheck = L_58_arg0
end)

L_16_:AddSwitch("Hit all Airshots", function(L_59_arg0)
	L_3_.Airshots = true
end)

L_17_:AddSwitch("Enable ESP", function(L_46_arg0)
	L_4_:Toggle(L_46_arg0)
end)

L_17_:AddSwitch("Enable Tracers", function(L_47_arg0)
	L_4_.Tracers = L_47_arg0
end)

L_17_:AddSwitch("Enable Names", function(L_48_arg0)
	L_4_.Names = L_48_arg0
end)

L_17_:AddSwitch("Enable Boxes", function(L_49_arg0)
	L_4_.Boxes = L_49_arg0
end)

function L_3_.Check()
    -- // Check A
	if not (L_3_.Enabled == true and L_3_.Selected ~= L_9_ and L_3_.SelectedPart ~= nil) then
		return false
	end

	local L_60_ = L_3_.Character(L_3_.Selected)
	local L_61_ = L_60_:WaitForChild("BodyEffects")["K.O"].Value
	local L_62_ = L_60_:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

	if (L_61_ or L_62_) then
		return false
	end

	return true
end

local L_20_
L_20_ = hookmetamethod(game, "__index", function(L_63_arg0, L_64_arg1)
    -- // Check if it trying to get our mouse's hit or target and see if we can use it
	if (L_63_arg0:IsA("Mouse") and (L_64_arg1 == "Hit" or L_64_arg1 == "Target") and L_3_.Check()) and _G.SAEnabled then
        -- // Vars
		local L_65_ = L_3_.SelectedPart

        -- // Hit/Target
		if (L_13_.SilentAim and (L_64_arg1 == "Hit" or L_64_arg1 == "Target")) then
            -- // Hit to account prediction
			local L_66_ = L_65_.CFrame + (L_65_.Velocity * L_13_.Prediction)

            -- // Return modded val
			return (L_64_arg1 == "Hit" and L_66_ or L_65_)
		end
	end

	return L_20_(L_63_arg0, L_64_arg1)
end)

L_7_:BindToRenderStep("AimLock", 0, function()
	if (L_13_.AimLock and L_3_.Check() and L_8_:IsKeyDown(Enum.KeyCode[string.upper(AimlockKey)])) then
        -- // Vars
		local L_67_ = L_3_.SelectedPart

        -- // Hit to account prediction
		local L_68_ = L_67_.CFrame + (L_67_.Velocity * L_13_.Prediction)

        -- // Set the camera to face towards the Hit
		L_11_.CFrame = CFrame.lookAt(L_11_.CFrame.Position, L_68_.Position)
	end
end)
-- // Mains
game:GetService("UserInputService").InputBegan:connect(function(input)
if input.KeyCode == Enum.KeyCode.Insert then
_G.SAEnabled = true
end
end)
--
game:GetService("UserInputService").InputBegan:connect(function(input)
if input.KeyCode == Enum.KeyCode.Delete then
_G.SAEnabled = false
end
end)
-- // Fov
game:GetService("UserInputService").InputBegan:connect(function(input)
if input.KeyCode == Enum.KeyCode.Minus then
L_3_.ShowFOV = L_3_.ShowFOV == true
end
end)
--
game:GetService("UserInputService").InputBegan:connect(function(input)
if input.KeyCode == Enum.KeyCode.Equals then
L_3_.ShowFOV = L_3_.ShowFOV == false
end
end)
