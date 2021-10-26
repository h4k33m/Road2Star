--[[
 ________.__        ___.          .__     
 /  _____/|  |   ____\_ |__ _____  |  |  
/   \  ___|  |  /  _ \| __ \\__  \ |  |   
\    \_\  \  |_(  <_> ) \_\ \/ __ \|  |___
 \______  /____/\____/|___  (____  /____/ 
        \/                \/     \/                                                                                                                                           
--]]
_G.SAEnabled = true

local L_1_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/GlobalXYZ/NotSoLegit/main/IYKYK.txt"))()

local L_2_ = L_1_:AddWindow("Aki X", {
	main_color = Color3.fromRGB(10, 10, 10),
	min_size = Vector2.new(450, 500),
	toggle_key = Enum.KeyCode.RightControl,
	can_resize = true,
})

local L_3_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/GlobalXYZ/NotSoLegit/main/So.lua"))()
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
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),
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
	Title = "Aki X";
	Text = "Aki On Top";
	Icon = "RBXID OR BLANK";
	Duration = "DURATION IN SECONDS";
	callbakc = L_15_;
	Button1 = "Okay :)";
})

local L_16_ = L_2_:AddTab("Aimlock")
local L_17_ = L_2_:AddTab("Esp")
local L_18_ = L_2_:AddTab("Misc")
local L_19_ = L_2_:AddTab("Credits")

L_19_:AddButton("discord.gg/Zeski", function(L_22_arg0)
	setclipboard("https://discord.gg/Zeski")
	wait(1)
	local function L_23_func(L_25_arg0)
		if L_25_arg0 == "Yes" then
			print("User said yes")
		elseif L_25_arg0 == "No" then
			print("User said no")
		end
	end
	local L_24_ = Instance.new("BindableFunction")
	game.StarterGui:SetCore("SendNotification", {
		Title = "Remember No Leaking";
		Text = "Made by 0010 Gang";
		Icon = "RBXID OR BLANK";
		Duration = "DURATION IN SECONDS";
		callbakc = L_24_;
		Button1 = "Okay, Thanks :)";
	})
end)

L_19_:AddButton("Owner : Global", function(L_26_arg0)
	setclipboard("Global Was Here")
	wait(1)
	local function L_27_func(L_29_arg0)
		if L_29_arg0 == "Yes" then
			print("User said yes")
		elseif L_29_arg0 == "No" then
			print("User said no")
		end
	end
	local L_28_ = Instance.new("BindableFunction")
	game.StarterGui:SetCore("SendNotification", {
		Title = "Shoutout Curry";
		Text = "My nigga fr";
		Icon = "RBXID OR BLANK";
		Duration = "DURATION IN SECONDS";
		callbakc = L_28_;
		Button1 = "Lets get it";
	})
end)

L_18_:AddButton("Fly (X)", function(L_30_arg0)
	repeat
		wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
	local L_31_ = game.Players.LocalPlayer:GetMouse()
	repeat
		wait()
	until L_31_
	local L_32_ = game.Players.LocalPlayer
	local L_33_ = L_32_.Character.Head
	local L_34_ = false
	local L_35_ = true
	local L_36_ = {
		f = 0,
		b = 0,
		l = 0,
		r = 0
	}
	local L_37_ = {
		f = 0,
		b = 0,
		l = 0,
		r = 0
	}
	local L_38_ = 400
	local L_39_ = 5000
	function G_1_()
		local L_40_ = Instance.new("BodyGyro", L_33_)
		L_40_.P = 9
		L_40_.maxTorque = Vector3.new(9, 9, 9)
		L_40_.cframe = L_33_.CFrame
		local L_41_ = Instance.new("BodyVelocity", L_33_)
		L_41_.velocity = Vector3.new(0, 0.1, 0)
		L_41_.maxForce = Vector3.new(9, 9, 9)
		repeat
			wait()
			L_32_.Character.Humanoid.PlatformStand = true
			if L_36_.l + L_36_.r ~= 0 or L_36_.f + L_36_.b ~= 0 then
				L_39_ = L_39_ + .5 + (L_39_ / L_38_)
				if L_39_ > L_38_ then
					L_39_ = L_38_
				end
			elseif not (L_36_.l + L_36_.r ~= 0 or L_36_.f + L_36_.b ~= 0) and L_39_ ~= 0 then
				L_39_ = L_39_ - 1
				if L_39_ < 0 then
					L_39_ = 0
				end
			end
			if (L_36_.l + L_36_.r) ~= 0 or (L_36_.f + L_36_.b) ~= 0 then
				L_41_.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (L_36_.f + L_36_.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(L_36_.l + L_36_.r, (L_36_.f + L_36_.b) * .2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * L_39_
				L_37_ = {
					f = L_36_.f,
					b = L_36_.b,
					l = L_36_.l,
					r = L_36_.r
				}
			elseif (L_36_.l + L_36_.r) == 0 and (L_36_.f + L_36_.b) == 0 and L_39_ ~= 0 then
				L_41_.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (L_37_.f + L_37_.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(L_37_.l + L_37_.r, (L_37_.f + L_37_.b) * .2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * L_39_
			else
				L_41_.velocity = Vector3.new(0, 0.1, 0)
			end
			L_40_.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((L_36_.f + L_36_.b) * 50 * L_39_ / L_38_), 0, 0)
		until not L_34_
		L_36_ = {
			f = 0,
			b = 0,
			l = 0,
			r = 0
		}
		L_37_ = {
			f = 0,
			b = 0,
			l = 0,
			r = 0
		}
		L_39_ = 0
		L_40_:Destroy()
		L_41_:Destroy()
		L_32_.Character.Humanoid.PlatformStand = false
	end
	L_31_.KeyDown:connect(function(L_42_arg0)
		if L_42_arg0:lower() == "x" then
			if L_34_ then
				L_34_ = false
			else
				L_34_ = true
				Fly()
			end
		elseif L_42_arg0:lower() == "w" then
			L_36_.f = 1
		elseif L_42_arg0:lower() == "s" then
			L_36_.b = -1
		elseif L_42_arg0:lower() == "a" then
			L_36_.l = -1
		elseif L_42_arg0:lower() == "d" then
			L_36_.r = 1
		end
	end)
	L_31_.KeyUp:connect(function(L_43_arg0)
		if L_43_arg0:lower() == "w" then
			L_36_.f = 0
		elseif L_43_arg0:lower() == "s" then
			L_36_.b = 0
		elseif L_43_arg0:lower() == "a" then
			L_36_.l = 0
		elseif L_43_arg0:lower() == "d" then
			L_36_.r = 0
		end
	end)
	Fly()
end)

L_18_:AddButton("Headless", function(L_44_arg0)
	local L_45_ = game.Players.LocalPlayer.Character
	L_45_.Head.Transparency = 1
	game.Workspace.LocalPlayer.Head.face:remove()
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

L_16_:AddSwitch("Silent Aim", function(L_50_arg0)
	L_13_.SilentAim = L_50_arg0
end)

L_16_:AddSwitch("Aim Lock", function(L_51_arg0)
	L_13_.AimLock = L_51_arg0
end)

L_16_:AddSwitch("Webhook Mode", function(L_52_arg0)
	L_13_.Web = L_52_arg0
end)

L_16_:AddSwitch("Notification Mode", function(L_53_arg0)
	L_13_.Not = L_53_arg0
end)

L_16_:AddSwitch("Copy Mode", function(L_54_arg0)
	L_13_.Cop = L_54_arg0
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
if input.KeyCode == Enum.KeyCode.V then
_G.SAEnabled = true
end
end)
--
game:GetService("UserInputService").InputBegan:connect(function(input)
if input.KeyCode == Enum.KeyCode.C then
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
