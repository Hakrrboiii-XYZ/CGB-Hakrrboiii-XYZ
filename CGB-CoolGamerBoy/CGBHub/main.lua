local CgLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/CGB-CoolGamerBoy/CG-Lib/master/src.lua"))()

local GUI = CgLib:Create{
    Name = "CGB Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = CgLib.Themes.Dark,
    Link = "https://github.com/CGB-CoolGamerBoy/CGBHub"
}

--[[
        LocalPlayer
]]--

local LocalTab = GUI:Tab{
	Name = "LocalPlayer",
	Icon = "rbxassetid://2795572800"
}

LocalTab:Slider{
	Name = "Walk Speed",
	Default = 24,
	Min = 16,
	Max = 200,
	Callback = function(Value) 
		local char = game.Players.LocalPlayer.Character or
                         game.Players.LocalPlayer.CharacterAdded:Wait()
        if char and char:FindFirstChild('Humanoid') then
            char.Humanoid.WalkSpeed = Value
        end
    end
}

LocalTab:Slider{
	Name = "Jump Power",
	Default = 50,
	Min = 50,
	Max = 200,
	Callback = function(Value)
		local char = game.Players.LocalPlayer.Character or
                         game.Players.LocalPlayer.CharacterAdded:Wait()
        if char and char:FindFirstChild('Humanoid') then
            char.Humanoid.JumpPower = Value
        end
	end
}



--[[
        Scripts
]]--

local ScriptsTab = GUI:Tab{
	Name = "Scripts",
	Icon = "rbxassetid://11570895459"
}

ScriptsTab:Button{
	Name = "Fate's Admin",
	Description = "Advanced Admin Commands GUI",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/Scripts/raw/main/Universal/fatesadmin.lua", true))()
		SendNotification(
			"CGB Hub | Fate's Admin",
			"Successfully Executed Fate's Admin",
			5
		)
		_G.discord_invite = "73kFXJysmH"
		loadstring(game:HttpGet("https://cgb-coolgamerboy.github.io/CGB-CoolGamerBoy/CGBHub/Discord.lua", true))()
		wait(3)
		SendNotification(
			"Fate's Admin | Discord",
			"Joining Fate's Discord",
			5
		)
	end
}

ScriptsTab:Button{
	Name = "Vynixius",
	Description = "Vynixius Hub | Many Supported Games",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/Scripts/raw/main/Script_Hubs/Vynixius_Loader.lua", true))()
		SendNotification(
			"CGB Hub | Vynixius",
			"Successfully executed Vynixius",
			5
		)
		_G.discord_invite = "vynixius"
		loadstring(game:HttpGet("https://cgb-coolgamerboy.github.io/CGB-CoolGamerBoy/CGBHub/Discord.lua", true))()
		wait(3)
		SendNotification(
			"Vynixus | Discord",
			"Joining Vynixus Discord",
			5
		)
	end
}

ScriptsTab:Button{
	Name = "Dark Hub",
	Description = "Arsenal",
	Callback = function()
		loadstring(game:HttpGet("https://darkhub.xyz/remote-script.lua", true))()
		SendNotification(
			"CGB Hub | Dark Hub",
			"Successfully Executed Dark Hub",
			5
		)
		_G.discord_invite = "kTt5aGCUDd"
		loadstring(game:HttpGet("https://cgb-coolgamerboy.github.io/CGB-CoolGamerBoy/CGBHub/Discord.lua", true))()
		wait(3)
		SendNotification(
			"Dark Hub | Discord",
			"Joining Dark Discord",
			5
		)
	end
}

--[[
	Functions
]]--

function SendNotification(Title, Text, Duration)
	GUI:Notification{
		Title = Title,
		Text = Text,
		Duration = Duration,
		Callback = function() 
			
		end
	}
end