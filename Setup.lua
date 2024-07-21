--[[!!!]]
--[[!!!]]
--[[IGNORE THIS SCRIPT. THIS SCRIPT IS ONLY IN USE IF YOU DECIDE TO USE QUICK SETUP.]]
--[[!!!]]
--[[!!!]]


local installed = false
local module = {}

local function animateLoad()
	local gradient = game.StarterGui:WaitForChild("ROverlayInstaller.rvr").Frame.Frame.UIGradient
	
		gradient.Offset = Vector2.new(gradient.Offset.X + 0.1, 0)
		if gradient.Offset.X >= 1.1 then
			gradient.Offset = Vector2.new(-1, 0)
		end
		wait(0.1)

	
		
end
function module:Setup()

	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local ROverlayInstallerrvr = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local TextLabel = Instance.new("TextLabel")

	--Properties:

	ROverlayInstallerrvr.Name = "ROverlayInstaller.rvr"
	ROverlayInstallerrvr.Parent = game.StarterGui
	ROverlayInstallerrvr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ROverlayInstallerrvr
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.0143999998, 0, 0.951456308, 0)
	Frame.Size = UDim2.new(0.970000029, 0, 0.0320000015, 0)

	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = Color3.fromRGB(87, 240, 60)
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Size = UDim2.new(0, 0, 0.949999988, 0)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.13, Color3.fromRGB(193, 193, 193)), ColorSequenceKeypoint.new(0.41, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.52, Color3.fromRGB(222, 222, 222)), ColorSequenceKeypoint.new(0.69, Color3.fromRGB(212, 212, 212)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(204, 204, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient.Offset = Vector2.new(0.400000006, 0)
	UIGradient.Parent = Frame_2

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 0, -1.3147248, 0)
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Text = "ROverlay is installing... DO NOT CLOSE ROBLOX STUDIO"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	-- Scripts:

	local function AFLGRMP_fake_script() -- UIGradient.LocalScript 
		local scr = Instance.new('LocalScript', UIGradient)

		local gradient = scr.Parent

		while wait(0.1) do
			gradient.Offset = Vector2.new(gradient.Offset.X + 0.1, 0)
			if gradient.Offset.X >= 1.1 then
				gradient.Offset = Vector2.new(-1, 0)
			end
		end
	end
	coroutine.wrap(AFLGRMP_fake_script)()

	
	task.wait(1)

	Frame_2.Size = UDim2.new(0.1,0,0.95,0)
	--game.Workspace.ROverlay["README.lua"]:Destroy()
	task.wait(1)

	Frame_2.Size = UDim2.new(0.15,0,0.95,0)

	task.wait(5)
	Frame_2.Size = UDim2.new(1,0,0.95,0)

	TextLabel.Text = "Successfully Installed (deletes in 3)"
	wait(1)
	TextLabel.Text = "Successfully Installed (deletes in 2)"
	wait(1)
	TextLabel.Text = "Successfully Installed (deletes in 1)"
	wait(1)
	ROverlayInstallerrvr:Destroy()
	installed = true
	
	--script:Destroy()
end

return module
