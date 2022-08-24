local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Master Hub 1.1", "Synapse")

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local Visuals = Window:NewTab("Visuals")
local VisualSection = Visuals:NewSection("Visuals")

local Player = Window:NewTab("Local Player")
local PlayerSection = Player:NewSection("Local Player")

MainSection:NewButton("Infinite Yield", "FE Admin Commands", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

PlayerSection:NewSlider("Walkspeed", "Makes you faster.", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MainSection:NewButton("Fly", "Lets you fly around the map", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))() 

    Fly(true)
end)

PlayerSection:NewButton("Reset Walkspeed", "Resets to all defaults", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

VisualSection:NewButton("Esp (Cant Undo)", "Lets you see players through walls", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/kKYdfzCm"))()
end)

MainSection:NewButton("Gear Glitches", "Gui with a bunch of glitches", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/NotKendolaser/Admin-Gui/main/admingui%20thingy'))()
end)

PlayerSection:NewToggle("Headless (Not Working)", "Have no head", function(state)
    if state then
        game.Workspace.Players.LocalPlayer.head.Transparency = 1
        game.Players.Players.LocalPlayer.head.face.Transparency = 1
    else
        game.Workspace.Players.LocalPlayer.head.Transparency = 0
        game.Players.Players.LocalPlayer.head.face.Transparency = 0
    end
end)
