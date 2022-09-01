-- Made by Kedersiz#5332
local function ez()
plr = game.Players.LocalPlayer
character = plr.Character or plr.CharacterAdded:wait()
HumanoidRootPart = character:WaitForChild('HumanoidRootPart') or character.HumanoidRootPart
for i, v in ipairs(desc) do
	if v.Name == "Runoff" then
		print('ez')
		HumanoidRootPart.Position = v.Position
		HumanoidRootPart.Position += Vector3.new(0, 30, 0)
		task.wait(1)
    	end
	end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("KdrHub", "DarkTheme")
desc = Workspace.Environment:GetDescendants()
local Tab = Window:NewTab("Main by Keder#5332")
local Section = Tab:NewSection("Auto Farms")
Section:NewToggle("Autofarm", "enables auto farm", function(state)
    if state then
		while state do
			ez()
			print(ez())
		end
    else
        auto = false
    end
end)
Section:NewButton("Discord", "Givs discord link", function()
    setclipboard("https://discord.gg/e8U7Z7pCy3")
end)

