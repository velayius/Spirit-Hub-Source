-- slightly edited for when me and reaperhacks obfuscated this and released a crack <3
getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)

if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Ticket") then
game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Ticket"):Destroy()
end

local LP = game:GetService("Players").LocalPlayer
if LP.PlayerGui:FindFirstChild("Menu") then
LP.PlayerGui:FindFirstChild("Menu"):Destroy()
end

if LP.PlayerGui:FindFirstChild("Agreement") then
LP.PlayerGui:FindFirstChild("Agreement"):Destroy()
end

LP.PlayerGui.Stats.Enabled = true
LP.PlayerGui.twitter.Enabled = false

workspace.CurrentCamera.CameraType = "Custom"
local char = LP.Character or LP.CharacterAdded:Wait()
workspace.CurrentCamera.CameraSubject = char:WaitForChild("Humanoid")

function BypassAntiCheat()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("Script") then
                game.Players.LocalPlayer.Character:FindFirstChild("Script"):Destroy();
            end
        end) pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("lolxd6") then
                game.Players.LocalPlayer.Character:FindFirstChild("lolxd6"):Destroy();
            end
        end) pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("lolxd555") then
                game.Players.LocalPlayer.Character:FindFirstChild("lolxd555"):Destroy();
            end
        end) pcall(function()
            if game.ReplicatedStorage:FindFirstChild("XDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD") then
                game.ReplicatedStorage:FindFirstChild("XDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"):Destroy();
            end
        end)
    end)
end
BypassAntiCheat();

local NeededPart = nil
local PartCFrame = CFrame.new(-23.6783867, 40.0809975, 92.7621765, 1, 0, 0, 0, 1, 0, 0, 0, 1)

for i,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Part") then
        if v.CFrame == PartCFrame then
            NeededPart = v
        end
    end
end

--NeededPart:Destroy()
    

local mainGui = game:GetService("Players").LocalPlayer.PlayerGui.PickUp.TextButton
local ts = game.TweenService

local tweenInf = TweenInfo.new(.5)
local goal = {
    Visible = true
}
local mainTween = ts:Create(mainGui, tweenInf, goal)

function onExecution()
   if game:IsLoaded() then
       game:GetService("Players").LocalPlayer.PlayerGui.PickUp.Enabled = true
       mainTween:Play()
       game:GetService("Players").LocalPlayer.PlayerGui.PickUp.TextButton.TextColor3 = Color3.fromRGB(224, 152, 100)
       game:GetService("Players").LocalPlayer.PlayerGui.PickUp.TextButton.Text = "Welcome to Spirit, enjoy the premium experience!"
       game:GetService("Players").LocalPlayer.PlayerGui.PickUp.TextButton.BackgroundTransparency = 1
       game:GetService("Players").LocalPlayer.PlayerGui.PickUp.TextButton.Font = "Gotham"
       
       task.wait(2)
       game:GetService("Players").LocalPlayer.PlayerGui.PickUp.TextButton.Visible = false 
   end
end

onExecution()

SPIRIT_WHITELISTED = true

if SPIRIT_WHITELISTED then
    game:GetService("Players").LocalPlayer.Character.Head.Gui.MainFrame.Rank.Visible = true;
    game:GetService("Players").LocalPlayer.Character.Head.Gui.MainFrame.IceD.Visible = false;
    game:GetService("Players").LocalPlayer.Character.Head.Gui.MainFrame.Celeb.Visible = false;
    game:GetService("Players").LocalPlayer.Character.Head.Gui.MainFrame.Rank.Text = "Spirit Hub User";
end

function notify(title,text,time)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = time;
    })
end

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/notfrostedwow/baka-test/main/baka"))()
local GUI = Mercury:Create{
    Name = "Spirit Cracked",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://discord.gg/reaperhub"
}
GUI:Notification{
	Title = "SPIRIT HUB CRACKED",
	Text = "Cracked by your boy; integer#0001. Buy reaperhub losers",
	Duration = 20,
	Callback = function() 
    setclipboard("https://discord.gg/reaperhub")
    end
}
    
GUI:Notification{
	Title = "Spirit Keybind",
	Text = "[v] = to close/open gui",
	Duration = 40,
	Callback = function() end
}
local MainTab = GUI:Tab{
    Name = "Main",
    Icon = "rbxassetid://7193212718"
}
local label = MainTab:Label{
    Text = "Hello there " .. game.Players.LocalPlayer.Name .. ".",
    Description =  "Welcome to Spirit | South London 2"
}
local label2 = MainTab:Label{
    Text = "Want to request something?",
    Description = "Suggest it and it most likely will be added!"
}
local label3 = MainTab:Label{
    Text = "Found a bug?",
    Description = "Report it and we will try our best to fix it ASAP."
}
local label4 = MainTab:Label{
    Text = "When did we start?",
    Description = "Spirit started in April 2022, and we are growing so fast!"
}
local label5 = MainTab:Label{
    Text = "Who owns Spirit and devs for it?",
    Description = "A bunch of general skids, reaperhub on top!"
}
local PlrTab = GUI:Tab{
    Name = "LocalPlayer",
    Icon = "rbxassetid://6157200594"
}
PlrTab:Slider{
	Name = "Walkspeed",
    Description = "To cancel walkspeed press SHIFT",
	Default = 16,
	Min = 16,
	Max = 45,
	Callback = function(v) 
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end
}
PlrTab:Button{
	Name = "Movement Bypass",
	Description = "Disables anti cheat.",
	Callback = function() 
        local plr = game:GetService("Players").LocalPlayer
        local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
        
        function bypass()
          if game.Players.LocalPlayer.Character.Humanoid.Sit ~= true then
              rconsoleclear()
            rconsolewarn("Please be seated in any vehicle to inititate Bypass. \n - You can also sit in the passenger seat!")
          end
            
          if game.Players.LocalPlayer.Character.Humanoid.Sit ~= false then
            workspace[plr.Name .. "'s Car"]:MoveTo(roundedPos)
            workspace[plr.Name .. "'s Car"].DriveSeat:Sit(plr.Character.Humanoid)
         end
        end
        
        bypass()
        rconsoleclear()
        rconsolewarn("Successful! \n -If anything bugs out after you stop flying type '/respawn'")
    end
}
PlrTab:Button{
    Name = "Movement Bypass (BIKE)",
    Description = "Disables anti-cheat for people that don't have a car.",
    Callback = function()
        notify("PLEASE WAIT..", 2)
        task.wait(3)
        notify("STARTED!", 5)
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(-175.223297, -463.511993, 77.0274506, -3.6594998e-14, -3.41655877e-08, 1, -1.42903813e-08, 1, 3.41655877e-08, -1, -1.42903813e-08, -3.7083238e-14))
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
        task.wait(1)
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(-175.223297, -463.511993, 77.0274506, -3.6594998e-14, -3.41655877e-08, 1, -1.42903813e-08, 1, 3.41655877e-08, -1, -1.42903813e-08, -3.7083238e-14))
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
        task.wait(1)
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(-175.223297, -463.511993, 77.0274506, -3.6594998e-14, -3.41655877e-08, 1, -1.42903813e-08, 1, 3.41655877e-08, -1, -1.42903813e-08, -3.7083238e-14))
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
        task.wait(1)
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(-175.223297, -463.511993, 77.0274506, -3.6594998e-14, -3.41655877e-08, 1, -1.42903813e-08, 1, 3.41655877e-08, -1, -1.42903813e-08, -3.7083238e-14))
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
        task.wait(1)
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(-175.223297, -463.511993, 77.0274506, -3.6594998e-14, -3.41655877e-08, 1, -1.42903813e-08, 1, 3.41655877e-08, -1, -1.42903813e-08, -3.7083238e-14))
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
        notify("FINISHED. ENJOY!", 5)
    end
}
PlrTab:Button{
    Name = "Fly [X]",
    Description = "Allows you to fly.",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/d2GNUmma'))()
    end
}
PlrTab:Textbox{
	Name = "JumpPower",
	Callback = function(text) 
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = text
    end
}
PlrTab:Button{
    Name = "No Jump Cooldown",
    Description = "Disables the jumping cooldown.",
    Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.JumpCooldown:Destroy()
    end
}
PlrTab:Button{
    Name = "Bring Vehicle",
    Description = "Teleports car to you.",
    Callback = function()
        local findCar = function()

            local plr = game:GetService("Players").LocalPlayer
            local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
            
            workspace[plr.Name .. "'s Car"]:MoveTo(roundedPos)
            task.wait()
            workspace[plr.Name .. "'s Car"].DriveSeat:Sit(plr.Character.Humanoid)
            
            task.wait(2)
            if game.Players.LocalPlayer.Character.Humanoid.Sit ~= true then
            workspace[plr.Name .. "'s Car"]:MoveTo(roundedPos)
            task.wait()
            workspace[plr.Name .. "'s Car"].DriveSeat:Sit(plr.Character.Humanoid)
            end
            end
            
            findCar()
    end
}
PlrTab:Button{
    Name = "Building Bypass",
    Description = "Load all the buildings.",
    Callback = function()
        game.ReplicatedStorage.Places.Parent = game.Workspace
    end
}
PlrTab:Button{
    Name = "Wallhack",
    Description = "See through walls.",
    Callback = function()
        game.Players.LocalPlayer.DevCameraOcclusionMode = 'Invisicam'
        game.Players.LocalPlayer.CameraMaxZoomDistance = 696969
    end
}
PlrTab:Button{
    Name = "Infinite Stats",
    Description = "Doesn't make you run out of hunger/stamina.",
    Callback = function()
        game:GetService"RunService".RenderStepped:Connect(function()
            game.Players.LocalPlayer.Valuestats.Stamina.Value = 100
        end)
        task.wait(1)
        game:GetService"RunService".RenderStepped:Connect(function()
            game.Players.LocalPlayer.Valuestats.Hunger.Value = 100
        end)
    end
}
PlrTab:Button{
    Name = "BTools",
    Description = "Destroy walls to shoot/walk through them.",
    Callback = function()
        GUI:Notification{
            Title = "BTools",
            Text = "LeftControl to destroy.",
            Duration = 5,
            Callback = function() end
        }
        local Plr = game:GetService("Players").LocalPlayer
        local Mouse = Plr:GetMouse()
        
        Mouse.Button1Down:connect(function()
            if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
            if not Mouse.Target then return end
            Mouse.Target:Destroy()
        end)
    end
}
PlrTab:Button{
    Name = "Anti Blur",
    Description = "Removes the annoying blur when you die.",
    Callback = function()
        while wait() do
                for fd, fe in pairs(game:GetService("Workspace").Camera:GetChildren()) do
                    fe:Destroy()
                end
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.Dmg then
            game:GetService("Players").LocalPlayer.PlayerGui.Dmg:Destroy()
        end       
    end
}
PlrTab:Toggle{
	Name = "Auto Pickup Tools",
	StartingState = false,
	Description = "Pickup tools people drop.",
	Callback = function(Value) 
        _G.loop = Value

        while _G.loop do
            wait(1) -- you can change the delay here
            local g = game.Workspace.tools

            for fk, fl in pairs((g:GetChildren())) do
               if fl:IsA("Tool") and fl.Name == "Fist" and fl.Name ~= "Phone" and fl.Name ~= "Crate" then
                   game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(fl)
                   break
               end
            end
        end
    end
}
PlrTab:Button{
    Name = "Rainbow Items",
    Description = "Items turn into rainbow.",
    Callback = function()
        local runservice = game:GetService("RunService")
        local Entities = game:GetService("Players")
        local plr = Entities.LocalPlayer
        
        runservice.Heartbeat:Connect(function()
                game:GetService("Players").LocalPlayer.Character.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    for i,v in pairs(child:GetChildren()) do
                        if v:IsA("Part") or v:IsA("MeshPart") then
                v.Color = Color3.fromHSV(tick()%5/5,1,1)
                            v.Material = Enum.Material.Neon
                        end
                    end
                end
            end)
        end)
    end
}
PlrTab:Toggle{
    Name = "Full Bright",
    StartingState = false,
    Description = "Makes the game more brighter.",
    Callback = function(baka)
        local togle = false

        -- keybind stuf here --
        if togle == false then 
            togle = true
        else
            togle = false
        end
        
        if togle == true then
            if not _G.FullBrightExecuted then

                _G.FullBrightEnabled = false
            
                _G.NormalLightingSettings = {
                    Brightness = game:GetService("Lighting").Brightness,
                    ClockTime = game:GetService("Lighting").ClockTime,
                    FogEnd = game:GetService("Lighting").FogEnd,
                    GlobalShadows = game:GetService("Lighting").GlobalShadows,
                    Ambient = game:GetService("Lighting").Ambient
                }
            
                game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
                    if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                        _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").Brightness = 1
                    end
                end)
            
                game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
                    if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                        _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").ClockTime = 12
                    end
                end)
            
                game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
                    if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                        _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").FogEnd = 786543
                    end
                end)
            
                game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
                    if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                        _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").GlobalShadows = false
                    end
                end)
            
                game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
                    if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                        _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                end)
            
                game:GetService("Lighting").Brightness = 1
                game:GetService("Lighting").ClockTime = 12
                game:GetService("Lighting").FogEnd = 786543
                game:GetService("Lighting").GlobalShadows = false
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            
                local LatestValue = true
                spawn(function()
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                    while wait() do
                        if _G.FullBrightEnabled ~= LatestValue then
                            if not _G.FullBrightEnabled then
                                game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                                game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                                game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                                game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                                game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                            else
                                game:GetService("Lighting").Brightness = 1
                                game:GetService("Lighting").ClockTime = 12
                                game:GetService("Lighting").FogEnd = 786543
                                game:GetService("Lighting").GlobalShadows = false
                                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                            end
                            LatestValue = not LatestValue
                        end
                    end
                end)
            end
            
            _G.FullBrightExecuted = togle
            _G.FullBrightEnabled = not _G.FullBrightEnabled
        else
            print('else')
        end
    end
}
PlrTab:Toggle{
    Name = "Safe Mode",
    StartingState = false,
    Description = "Teleports you to a hidden area if your about to die.",
    Callback = function(value)
    getgenv().toggle = value 

    while getgenv().toggle do 
        local tp = game.Players.LocalPlayer.Character.HumanoidRootPart
            
        task.wait(0.1)
        if game.Players.LocalPlayer.Character.Humanoid.Health > 70 then
        elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 70 then
            local startpos1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
            repeat
                wait(0.05)
            local plr = game:GetService("Players").LocalPlayer
                local char = plr.Character
                for Loop = 1, 10 do
                    local args = {
                        [1] = "Apartments"
                    }
                    game:GetService("ReplicatedStorage").DoorService:FireServer(unpack(args))
                    task.wait(0.025)
                    char.HumanoidRootPart.CFrame = CFrame.new(-99, 4, -115)
                end
                -- end
                task.wait(1)
                char.HumanoidRootPart.CFrame = CFrame.new(-146.748886, 3.85716486, 1330.50427, 0.989451289, 1.18913936e-08, 0.144866109, -1.3166213e-08, 1, 7.84125653e-09, -0.144866109, -9.66587876e-09, 0.989451289) -- Place to TP
            until game.Players.LocalPlayer.Character.Humanoid.Health > 99
            local plr = game:GetService("Players").LocalPlayer
                local char = plr.Character
                for Loop = 1, 10 do
                    local args = {
                        [1] = "Apartments"
                    }
                    game:GetService("ReplicatedStorage").DoorService:FireServer(unpack(args))
                    task.wait(0.025)
                    char.HumanoidRootPart.CFrame = CFrame.new(-99, 4, -115)
                end
                -- end
                task.wait(1)
                char.HumanoidRootPart.CFrame = CFrame.new(startpos1) -- Place to TP
            end
        end
    end
}
PlrTab:Button{
    Name = "Chat Spy",
    Description = "Bring the chat back.",
    Callback = function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/qNMunbP8')))()
    end
}
local CHTab = GUI:Tab{
    Name = "Character",
    Icon = "rbxassetid://3944664684"
}
CHTab:Button{
    Name = "Infinite Petrol",
    Description = "Doesn't run out of petrol for the car.",
    Callback = function()
        game:GetService"RunService".RenderStepped:Connect(function()
            game.Players.LocalPlayer.Valuestats.CarGas.Value = 100
        end)    
    end
}
CHTab:Button{
    Name = "XP Farm",
    Description = "Farm XP for level",
    Callback = function()
        GUI:Notification{
            Title = "XP Farm",
            Text = "Spawn a bike...",
            Duration = 5,
            Callback = function() end
        }
        local plr = game:GetService("Players").LocalPlayer
        local char = plr.Character
        for Loop = 1, 10 do
            local args = {
                [1] = "Apartments"
            }
            game:GetService("ReplicatedStorage").DoorService:FireServer(unpack(args))
            task.wait(0.025)
            char.HumanoidRootPart.CFrame = CFrame.new(-99, 4, -115)
        end
        -- end
        task.wait(1)
        char.HumanoidRootPart.CFrame =
            CFrame.new(-146.748886, 3.85716486, 1330.50427, 0.989451289, 1.18913936e-08, 0.144866109, -1.3166213e-08, 1, 7.84125653e-09, -0.144866109, -9.66587876e-09, 0.989451289) -- Place to TP
    
        local CoreGui = game:GetService("StarterGui")

        function xpFarm()
                local GC = getconnections or get_signal_cons
                if GC then
                for i,v in pairs(GC(game:GetService("Players").LocalPlayer.Idled)) do
                if v["Disable"] then
                v["Disable"](v)
                elseif v["Disconnect"] then
                v["Disconnect"](v)
                end
            end
        end

        game:GetService("RunService").Stepped:Connect(function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-146.748886, 3.85716486, 1330.50427, 0.989451289, 1.18913936e-08, 0.144866109, -1.3166213e-08, 1, 7.84125653e-09, -0.144866109, -9.66587876e-09, 0.989451289)
        end)
        end
        xpFarm()
    end
}
CHTab:Slider{
	Name = "Field Of View",
	Default = 50,
	Min = 50,
	Max = 120,
	Callback = function(v) 
        while task.wait() do
            game.Workspace.CurrentCamera.FieldOfView = v
        end
    end
}
CHTab:Button{
    Name = "Infinite Skittles",
    Description = "Allows you to take more damage and run faster.",
    Callback = function()
        pcall(function()
            while wait() do
                game:GetService("Players").LocalPlayer.PlayerGui.Run.Value.Value = true
                game.Players.LocalPlayer.Character.Resistance.Value = true
                game:GetService("Workspace").LocalPlayer.Resistance = true
            end
        end)
    end
}
CHTab:Button{
    Name = "Anti Camera Bob",
    Description = "Remove the annoying shaking whilst running.",
    Callback = function()
        repeat
            wait()
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Camera_Bob") then
                game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Camera_Bob"):Destroy()
            end
        until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Camera_Bob")
    end
}
CHTab:Button{
    Name = "Anti Ragdoll",
    Description = "Remove the ragdoll whenever you get hit by a car.",
    Callback = function()
        game:GetService("ReplicatedStorage").Modules.RagdollHandler:Destroy()
        game.ReplicatedStorage.RemoteEvents.SetPlayerRagdolled:Destroy()
        game.Workspace.Ragdoller:Destroy()
        
        while task.wait(1) do 
        if game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") then
            game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled"):Destroy()
        end 
        end
    end
}
CHTab:Button{
    Name = "Steal Masks",
    Description = "Steal peoples mask.",
    Callback = function()
        local Target = nil
        for i,v in pairs(game.Players:GetChildren()) do
            if v.TeamColor == BrickColor.new("Medium stone grey") then
                Target = v.Name
            end
        end
        for i,v in pairs(game.Players[Target].Backpack:GetChildren()) do
            if v.Name == "Mask" then
                v:Clone().Parent = game.Players.LocalPlayer.Backpack
            end
        end
    end
}
local CbTab = GUI:Tab{
    Name = "Combat",
    Icon = "rbxassetid://7485051715"
}
CbTab:Toggle{
    Name = "One Shot",
    Description = "Kill the person in one shot.",
    Callback = function(value)
        getgenv().toggle = value
        if getgenv().toggle == true then
            local settings = {repeatamount = 20}
            local mt = getrawmetatable(game)
            local old = mt.__namecall
        
            setreadonly(mt, false)
        
                task.spawn(function()
                mt.__namecall = function(self, ...)
                    local args = {...}
                    local method = getnamecallmethod();
                    if method == "FireServer" and self.Name == "Impact" then
                        for i = 1, settings.repeatamount do
                            old(self, ...)
                        end;
                    end;
                    return old(self, ...)
                end
                end)
                setreadonly(mt, true)
        end
        if getgenv().toggle == false then
            print('off.')
        end
    end
}
CbTab:Toggle{
    Name = "Lag Player",
    Description = "Get a gun and shoot near them.",
    Callback = function(value)
        getgenv().toggle = value
        if getgenv().toggle == true then
            local settings = {repeatamount = 5000}
            local mt = getrawmetatable(game)
            local old = mt.__namecall
            
            setreadonly(mt, false)
            
            task.spawn(function()
                mt.__namecall = function(self, ...)
                    local args = {...}
                    local method = getnamecallmethod();
                    if method == "FireServer" and self.Name == "Impact" then
                        for i = 1, settings.repeatamount do
                            old(self, ...)
                        end;
                    end;
                    return old(self, ...)
                end
            end)
            setreadonly(mt, true)
        end
        if getgenv().toggle == false then
            print('off.')
        end
    end
}
CbTab:Toggle{
    Name = "Infinite Ammo",
    Description = "Shoot infinitely.",
    Callback = function(value)
        getgenv().toggle = value
        if getgenv().toggle == true then
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                if v:IsA("Tool") and v:FindFirstChild("Stats") then
                    task.spawn(function()
                        while task.wait(5) do
                            if v.Stats.ClipSize.Value ~= v.Stats.ClipSize.Original.Value then
                                v.Stats.ClipSize.Value = math.huge
                                v.Stats.ClipSize.Original.Value = math.huge
                            end
                         end
                    end)
                end
            end
        end
        if getgenv().toggle == false then
            print('off.')
        end
    end
}
CbTab:Toggle{
    Name = "Fire Rate",
    Description = "Shoot super fast.",
    Callback = function(value)
        getgenv().toggle = value
        if getgenv().toggle == true then
            local old = nil

            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.ClassName == "Tool" and v:FindFirstChild("Pistol") then
                old = v
            end
            end
            local new = getsenv(old:FindFirstChild("Pistol"))
            local hookOld = function(number)
            debug.setconstant(new.OnFire, 70, number)
            end
        
            local script = nil
    
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.ClassName == "Tool" then
                    script = v
                end
            end
            
            local senv = getsenv(script)
            local constant = debug.getconstant(senv.OnFire, 15)
            debug.setconstant(senv.OnFire, 15, -1)
        end
        if getgenv().toggle == false then
            print('off.')
        end
    end
}
CbTab:Toggle{
    Name = "Anti Recoil",
    Description = "No recoil in gun.",
    Callback = function(value)
        getgenv().toggle = value
        if getgenv().toggle == true then
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.ClassName == "Tool" then
                    print(v.Name .. "Was Found")
                    gun = v
                end
            end
            
            
            local get = gun:FindFirstChild("Pistol")
            get.Parent.Recoil.AnimationId = "rbxassetid://1234567"
            
            local hook
            hook = hookfunction(getrenv().delay, newcclosure(function(...)
                local args = {...}
                local caller = getcallingscript()
                
                if caller == get then
                    if typeof(args[2]) == "function" then
                        args[2] = function()
                            print("hooked")
                        end
                    end
                end
                return hook(table.unpack(args))
            end))
        end
        if getgenv().toggle == false then
            print('off.')
        end
    end
}
CbTab:Toggle{
    Name = "Auto Pistol Fire",
    Description = "Gun shoots automatically.",
    Callback = function(value)
        getgenv().toggle = value
        if getgenv().toggle == true then
            local function
                autoGun()
               for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                   if v:IsA("Tool") and v:FindFirstChild("Stats") then
                        v.Stats.GunType.Value = "Auto"
                       end
                   end
                end
            
            autoGun()
        end
        if getgenv().toggle == false then
            print('off.')
        end
    end
}

local ALTab = GUI:Tab{
    Name = "Aimlock",
    Icon = "rbxassetid://6157097229"
}

ALTab:dropdown({
	Name = "Aim Part",
	StartingText = "HumanoidRootPart",
	Items = {
		"Head",
		"HumanoidRootPart",
	},
	Description = "Which part the aimbot will aim at.",
	Callback = function(part)
        getgenv().AimPart = part
        getgenv().AimlockToggleKey = "L"
        getgenv().AimRadius = 50
        getgenv().ThirdPerson = false
        getgenv().FirstPerson = true
        getgenv().TeamCheck = false
        getgenv().PredictMovement = false
        getgenv().PredictionVelocity = 10

        getgenv().UniversalAimbotLoadingTime = tick()
        if UniversalAimbotLoaded == true then
            Notify("Spirit", "Script Loaded Already", "", 3)
            return 
        end

        local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
        local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
        local Aimlock, MousePressed, CanNotify = true, false, false;
        local AimlockTarget;
        getgenv().UniversalAimbotLoaded = true

        getgenv().SeparateNotify = function(title, text, icon, time) 
            SGui:SetCore("SendNotification",{
                Title = title;
                Text = text;
                Icon = "rbxassetid://7528719395";
                Duration = time;
            })
        end

        getgenv().Notify = function(title, text, icon, time)
            if CanNotify == true then 
                if not time or not type(time) == "number" then time = 3 end
                SGui:SetCore("SendNotification",{
                    Title = title;
                    Text = text;
                    Icon = "rbxassetid://7528719395";
                    Duration = time;
                }) 
            end
        end

        getgenv().WorldToViewportPoint = function(P)
            return Camera:WorldToViewportPoint(P)
        end

        getgenv().WorldToScreenPoint = function(P)
            return Camera.WorldToScreenPoint(Camera, P)
        end

        getgenv().GetObscuringObjects = function(T)
            if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then 
                local RayPos = workspace:FindPartOnRay(RNew(
                    T[getgenv().AimPart].Position, Client.Character.Head.Position)
                )
                if RayPos then return RayPos:IsDescendantOf(T) end
            end
        end

        getgenv().GetNearestTarget = function()
            -- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
            local players = {}
            local PLAYER_HOLD  = {}
            local DISTANCES = {}
            for i, v in pairs(Players:GetPlayers()) do
                if v ~= Client then
                    table.insert(players, v)
                end
            end
            for i, v in pairs(players) do
                if v.Character ~= nil then
                    local AIM = v.Character:FindFirstChild("Head")
                    if getgenv().TeamCheck == true and v.Team ~= Client.Team then
                        local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                        local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                        local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                        local DIFF = math.floor((POS - AIM.Position).magnitude)
                        PLAYER_HOLD[v.Name .. i] = {}
                        PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                        PLAYER_HOLD[v.Name .. i].plr = v
                        PLAYER_HOLD[v.Name .. i].diff = DIFF
                        table.insert(DISTANCES, DIFF)
                    elseif getgenv().TeamCheck == false and v.Team == Client.Team then 
                        local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                        local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                        local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                        local DIFF = math.floor((POS - AIM.Position).magnitude)
                        PLAYER_HOLD[v.Name .. i] = {}
                        PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                        PLAYER_HOLD[v.Name .. i].plr = v
                        PLAYER_HOLD[v.Name .. i].diff = DIFF
                        table.insert(DISTANCES, DIFF)
                    end
                end
            end

            if unpack(DISTANCES) == nil then
                return nil
            end

            local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
            if L_DISTANCE > getgenv().AimRadius then
                return nil
            end

            for i, v in pairs(PLAYER_HOLD) do
                if v.diff == L_DISTANCE then
                    return v.plr
                end
            end
            return nil
        end



        Uis.InputBegan:Connect(function(Key)
            if not (Uis:GetFocusedTextBox()) then 
                if Key.UserInputType == Enum.UserInputType.MouseButton2 then 
                    pcall(function()
                        if MousePressed ~= true then MousePressed = true end 
                        local Target;Target = GetNearestTarget()
                        if Target ~= nil then 
                            AimlockTarget = Target
                            Notify("Spirit", "Aimlock Target: "..tostring(AimlockTarget), "", 3)
                        end
                    end)
                end
                if Key.KeyCode == Enum.KeyCode[AimlockToggleKey] then 
                    Aimlock = not Aimlock
                    Notify("Spirit", "Aimlock: "..tostring(Aimlock), "", 3)
                end
            end
        end)
        Uis.InputEnded:Connect(function(Key)
            if not (Uis:GetFocusedTextBox()) then 
                if Key.UserInputType == Enum.UserInputType.MouseButton2 then 
                    if AimlockTarget ~= nil then AimlockTarget = nil end
                    if MousePressed ~= false then 
                        MousePressed = false 
                    end
                end
            end
        end)

        RService.RenderStepped:Connect(function()
            if getgenv().FirstPerson == true and getgenv().ThirdPerson == false then 
                if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
                    CanNotify = true 
                else 
                    CanNotify = false 
                end
            elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then 
                if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then 
                    CanNotify = true 
                else 
                    CanNotify = false 
                end
            end
            if Aimlock == true and MousePressed == true then 
                if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then 
                    if getgenv().FirstPerson == true then
                        if CanNotify == true then
                            if getgenv().PredictMovement == true then 
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                            elseif getgenv().PredictMovement == false then 
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                            end
                        end
                    elseif getgenv().ThirdPerson == true then 
                        if CanNotify == true then
                            if getgenv().PredictMovement == true then 
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                            elseif getgenv().PredictMovement == false then 
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                            end
                        end 
                    end
                end
            end
        end)

        SeparateNotify("Spirit", "Universal Aimbot loaded in: "..string.format("%.7f", tostring(tick() - UniversalAimbotLoadingTime)), "", 3)
	end,
})
ALTab:Toggle{
    Name = "Silent Aim",
    Description = "Legit aim.",
    Callback = function(value)
    
        local Config = {
            Enabled = value,
            TeamCheck = false,
            HitPart = "HumanoidRootPart",
            Method = "Raycast",
            FieldOfView = {
                Enabled = true,
                Radius = 180
            }
        }
        
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        
        local Camera = workspace.CurrentCamera
        local Players = game:GetService("Players")
        
        local LocalPlayer = Players.LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        
        local GetChildren = game.GetChildren
        local WorldToScreen = Camera.WorldToScreenPoint
        local FindFirstChild = game.FindFirstChild
        
        local function getPositionOnScreen(Vector)
            local Vec3, OnScreen = WorldToScreen(Camera, Vector)
            return Vector2.new(Vec3.X, Vec3.Y), OnScreen
        end
        
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * 1000
        end
        
        local function getMousePosition()
            return Vector2.new(Mouse.X, Mouse.Y)
        end
        
        local function getClosestPlayer()
            if not Config.HitPart then return end
            local Closest
            local DistanceToMouse
            for _, Player in next, GetChildren(Players) do
                if Player == LocalPlayer then continue end
                if Config.TeamCheck and Player.Team == LocalPlayer.Team then continue end
        
                local Character = Player.Character
        
                if not Character then continue end
        
                local HumanoidRootPart = FindFirstChild(Character, "HumanoidRootPart")
                local Humanoid = FindFirstChild(Character, "Humanoid")
        
                if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end
        
                local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)
        
                if not OnScreen then continue end
        
                local Distance = (getMousePosition() - ScreenPosition).Magnitude
                if Distance <= (DistanceToMouse or (Config.FieldOfView.Enabled and Config.FieldOfView.Radius) or 2000) then
                    Closest = Character[Config.HitPart]
                    DistanceToMouse = Distance
                end
            end
            return Closest
        end
        
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
        
            if Config.Enabled and self == workspace then
                if Method == "FindPartOnRayWithIgnoreList" and Config.Method == Method then
                    if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithIgnoreList) then
                        local A_Ray = Arguments[2]
        
                        local HitPart = getClosestPlayer()
                        if HitPart then
                            local Origin = A_Ray.Origin
                            local Direction = getDirection(Origin, HitPart.Position)
                            Arguments[2] = Ray.new(Origin, Direction)
        
                            return oldNamecall(unpack(Arguments))
                        end
                    end
                elseif Method == "FindPartOnRayWithWhitelist" and Config.Method == Method then
                    if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithWhitelist) then
                        local A_Ray = Arguments[2]
        
                        local HitPart = getClosestPlayer()
                        if HitPart then
                            local Origin = A_Ray.Origin
                            local Direction = getDirection(Origin, HitPart.Position)
                            Arguments[2] = Ray.new(Origin, Direction)
        
                            return oldNamecall(unpack(Arguments))
                        end
                    end
                elseif (Method == "FindPartOnRay" or Method == "findPartOnRay") and Config.Method:lower() == Method:lower() then
                    if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRay) then
                        local A_Ray = Arguments[2]
        
                        local HitPart = getClosestPlayer()
                        if HitPart then
                            local Origin = A_Ray.Origin
                            local Direction = getDirection(Origin, HitPart.Position)
                            Arguments[2] = Ray.new(Origin, Direction)
        
                            return oldNamecall(unpack(Arguments))
                        end
                    end
                elseif Method == "Raycast" and Config.Method == Method then
                    if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                        local A_Origin = Arguments[2]
        
                        local HitPart = getClosestPlayer()
                        if HitPart then
                            Arguments[3] = getDirection(A_Origin, HitPart.Position)
        
                            return oldNamecall(unpack(Arguments))
                        end
                    end
                end
            end
            return oldNamecall(...)
        end)
    end
}
ALTab:Button{
    Name = "Hitbox Expander",
    Description = "Expands head hitbox.",
    Callback = function()
        function getplrsname()
            for i,v in pairs(game:GetChildren()) do
                if v.ClassName == "Players" then
                    return v.Name
                end
            end
        end
        local players = getplrsname()
        local plr = game[players].LocalPlayer
    
        while  wait(1) do
            coroutine.resume(coroutine.create(function()
                for _,v in pairs(game[players]:GetPlayers()) do
                    if v.Name ~= plr.Name and v.Character then
                        v.Character.Head.CanCollide = false
                        v.Character.Head.Material = "Plastic"
                        v.Character.Head.Transparency = 0.4
                        v.Character.Head.Size = Vector3.new(4.1,4.1,4.1)
                    end
                end
            end))
        end
    end
}
local espp = ALTab:Label{
    Text = "ESP's",
    Description =  "Reveal all players around the map."
}
ALTab:Button{
    Name = "Chams ESP",
    Description = "Displays all players name and position.",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/frosted13/didactic-rotary-phone/main/main'))()
    end
}
ALTab:Button{
    Name = "Rainbow ESP",
    Description = "Displays a rainbow box around all players.",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/frosted13/didactic-rotary-phone/main/ranbow'))()
    end
}
ALTab:Button{
    Name = "Skeleton ESP",
    Description = "Displays a outline around all players body.",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/frosted13/didactic-rotary-phone/main/skelton'))()
    end
}
ALTab:Button{
    Name = "Name ESP",
    Description = "Displays all players name above their head.",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/frosted13/didactic-rotary-phone/main/name'))()
    end
}
local TargetTab = GUI:Tab{
    Name = "Target",
    Icon = "rbxassetid://6034452643"
}
TargetTab:Textbox{
    Name = "Send 10,000",
    Description = "Send 10,000 to a person of your choice.",
    Callback = function(text)
    for i,v in pairs(game.Players:GetChildren()) do
        if (string.sub(string.lower(v.Name),1,string.len(text))) == string.lower(text) then
        text = v.Name
        end
        end
        -- main script under
        local A_1 = "10000"
        local A_2 = game.Players[text]
        local Event = game:GetService("ReplicatedStorage").Send
        Event:FireServer(A_1, A_2)
    end
}
TargetTab:Textbox{
    Name = "Check Player",
    Description = "Check a player Stats, Backpack and Safe",
    Callback = function(text)
        for i, v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name), 1, string.len(text))) == string.lower(text) then
                text = v.Name
            end
        end

        local name = text

        for i, v in pairs(game:GetService("Players")[name].Backpack:GetChildren()) do
            if v:IsA("Tool") then
                rconsoleprint("@@LIGHT_MAGENTA@@")
                rconsoleclear()
                rconsolename("Spirit")
                rconsoleprint("@@LIGHT_RED@@")
                rconsoleprint("\n" .. name .. " has the following items:")
                rconsoleprint("\n" .. "Backpack: " .. v.name)
                rconsoleprint("\n")
            end
        end
        
        for i, v in pairs(game:GetService("Players")[name].Valuestats:GetChildren()) do
            if v:IsA("IntValue") then
                rconsoleprint("@@CYAN@@")
                rconsoleprint("Stats: " .. v.name .. ": " .. v.Value)
                rconsoleprint("\n")
            end
        end
        
        for i, v in pairs(game:GetService("Players")[name].SafeStats:GetChildren()) do
            if v:IsA("StringValue") then
                rconsoleprint("@@LIGHT_BLUE@@")
                rconsoleprint("Safe: " .. v.name .. ": " .. v.Value)
                rconsoleprint("\n")
            end
        end

        task.wait(10)
        rconsoleclear()
    end
}
TargetTab:Button{
    Name = "Admin Guns Search",
    Description = "Search for admin guns in your game.",
    Callback = function()
        local admin_guns = {
            "MultiSkittle",
            "MultiSkittles",
            "MultiSkittle",
            "RPG",
            "Mop",
            "DracoD",
            "GlockE",
            "Draco",
            "ZombieTool",
            "PinkRevolver",
            "Purple",
            "S&W Revolver",
            "KnifeG",
            "Katana",
            "BigMacheteG",
            "BigMachete",
            "M24",
            "M24S"
        }
        
        rconsoleclear()
        rconsoleprint('@@LIGHT_MAGENTA@@')
        rconsoleprint(string.rep('-', 25))
        
        local found = false
        
        for i,v in pairs(game:service'Players':GetPlayers()) do
            if v:FindFirstChild("SafeStats") then
                local user_admin_guns = {}
                for itemIndex, item in pairs(v.SafeStats:GetChildren()) do
                    if table.find(admin_guns, item.Value) then
                        if item["SS" .. string.sub(item.Name, 2)].Value == -1 then
                            table.insert(user_admin_guns, item.Value)
                        else
                            table.insert(user_admin_guns, item.Value .. " - " .. item["SS" .. string.sub(item.Name, 2)].Value .. " clips")
                        end
                    end
                end
                if #user_admin_guns > 0 then
                    rconsoleprint("\n"..v.Name .. " has " .. #user_admin_guns .. " admin item(s) admin items found; \n" .. table.concat(user_admin_guns, "\n") .. "")
                    rconsoleprint("\n")
                    rconsoleprint(string.rep('-', 25))
                    found = true
                end
            end
        end
    end
}
TargetTab:Textbox{
    Name = "Silent Kill",
    Description = "Kill the person in silent.",
    Callback = function(text)
        for i, v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name), 1, string.len(text))) == string.lower(text) then
                text = v.Name
            end
        end
        local Target = text
        local dead

        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fist") then
            return notify("No fists found!", 10)
        end

        if not game.Players.LocalPlayer.Character:FindFirstChild("Fist") then
            game.Players.LocalPlayer.Backpack.Fist.Parent = game.Players.LocalPlayer.Character
        end

        if game.Players[Target].Character.Humanoid.Health >= 1 then
            dead = false
        end

        if game.Players[Target].Character.Humanoid.Health <= 1 then
            dead = true
        end

        local ohInstance1 = game.Players[Target].Character.Humanoid
        local ohNil2 = nil
        local ohNumber3 = 0
        local ohInstance4 = game.Players.LocalPlayer.Character.Head
        local ohBoolean5 = true
        local ohVector36 = game.Players[Target].Character.HumanoidRootPart.Position
        local ohBoolean7 = false

        while dead ~= true do
            task.wait(.04)
            game.Players.LocalPlayer.Character.Fist.LocalScript.Script.e:FireServer(
                ohInstance1,
                ohNil2,
                ohNumber3,
                ohInstance4,
                ohBoolean5,
                ohVector36,
                ohBoolean7
            )
        end
    end
}
TargetTab:Textbox{
    Name = "Teleport To Player",
    Description = "Teleport to a Player of your choice.",
    Callback = function(text)
        for i,v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name),1,string.len(text))) == string.lower(text) then
            text = v.Name
            end
            end
            -- main script
            local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
            local p2 = text
            local pos = p1.CFrame
            
            local plr = game.Players.LocalPlayer
            local hum = game.Players.LocalPlayer.Character.Humanoid
            local char = plr.Character
             for Loop = 1, 10 do
                local args = {
                    [1] = "Apartments"
                }
                game:GetService("ReplicatedStorage").DoorService:FireServer(unpack(args))
                task.wait(0.025)
                char.HumanoidRootPart.CFrame = CFrame.new(-99, 4, -115)
            end
            task.wait(0.3)
            
            p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
		
    end
}
TargetTab:Textbox{
    Name = "Kill Player",  
    Description = "Teleport to Player and kill them.",
    Callback = function(text)
        for i,v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name),1,string.len(text))) == string.lower(text) then
            text = v.Name
            end
            end
            -- main scirpt under
            if not game.Players.LocalPlayer.Character:FindFirstChild("Fist") then
               game.Players.LocalPlayer.Backpack.Fist.Parent = game.Players.LocalPlayer.Character
            end
            
            local alive = true
            local name = text
            local kid = game.Players.LocalPlayer.Character
            local kiddie = game.Players[name].Character
            local startpos1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            
            local plr = game:GetService("Players").LocalPlayer
            local char = plr.Character
            --tp bypass 
            for Loop = 1, 10 do
                local args = {
                    [1] = "Apartments"
                }
                game:GetService("ReplicatedStorage").DoorService:FireServer(unpack(args))
                task.wait(0.025)
                char.HumanoidRootPart.CFrame = CFrame.new(-99, 4, -115)
            end
            -- end
            task.wait(1)
            char.HumanoidRootPart.CFrame = startpos1
            
            local ohInstance1 = game.Players[name].Character.Humanoid
            local ohNil2 = nil
            local ohNumber3 = 1
            local ohInstance4 = game.Players[name].Character.Head
            local ohBoolean5 = true
            local ohVector36 = Vector3.new()
            local ohBoolean7 = false
            while alive do
                task.wait(0.05)
            game.Players.LocalPlayer.Character.Fist.LocalScript.Script.e:FireServer(ohInstance1, ohNil2, ohNumber3, ohInstance4, ohBoolean5, ohVector36, ohBoolean7)
            kid.HumanoidRootPart.CFrame = kiddie.HumanoidRootPart.CFrame
        end
    end
}
TargetTab:Textbox{
    Name = "CBring Player",
    Description = "[CS] Bring Player",
    Callback = function(text)
    for i,v in pairs(game.Players:GetChildren()) do
        if (string.sub(string.lower(v.Name),1,string.len(text))) == string.lower(text) then
        text = v.Name
        end
        end
        local name = text
        function cbringTarget()
        repeat
            task.wait()
            game.Players[name].Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 3.6)
            until game.Players[name].Character.Humanoid.Health == 0
        end
        
        cbringTarget()
    end
}
TargetTab:Textbox{
    Name = "View Player",
    Description = "View a player.",
    Callback = function(text)
        for i,v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name),1,string.len(text))) == string.lower(text) then
            text = v.Name
            end
            end
            game.Workspace.CurrentCamera.CameraSubject = game.Players[text].Character
            task.wait(15)
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    end
}

TargetTab:Textbox{
    Name = "Kick Player",
    Description = "Kick a player you don't like.",
    Callback = function(text)
        for i,v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name),1,string.len(text))) == string.lower(text) then
            text = v.Name
            end
            end
            -- main scirpt under
            if not game.Players.LocalPlayer.Character:FindFirstChild("Fist") then
               game.Players.LocalPlayer.Backpack.Fist.Parent = game.Players.LocalPlayer.Character
            end

            
            local alive = true
            local name = text
            local kid = game.Players.LocalPlayer.Character
            local kiddie = game.Players[name].Character
            local startpos1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            
            local plr = game:GetService("Players").LocalPlayer
            local char = plr.Character
            --tp bypass 
            for Loop = 1, 10 do
                local args = {
                    [1] = "Apartments"
                }
                game:GetService("ReplicatedStorage").DoorService:FireServer(unpack(args))
                task.wait(0.025)
                char.HumanoidRootPart.CFrame = CFrame.new(-99, 4, -115)
            end
            -- end
            task.wait(1)
            char.HumanoidRootPart.CFrame = startpos1
            
            local ohInstance1 = game.Players[name].Character.Humanoid
            local ohNil2 = nil
            local ohNumber3 = 1
            local ohInstance4 = game.Players[name].Character.Head
            local ohBoolean5 = true
            local ohVector36 = Vector3.new()
            local ohBoolean7 = false
            while alive do
                task.wait(0.05)
            game.Players.LocalPlayer.Character.Fist.LocalScript.Script.e:FireServer(ohInstance1, ohNil2, ohNumber3, ohInstance4, ohBoolean5, ohVector36, ohBoolean7)
            kid.HumanoidRootPart.CFrame = kiddie.HumanoidRootPart.CFrame
    
            if game.Players[name].Character.Humanoid.Health <= 25 or alive == false then
               local args = {
                   [1] = game:GetService("Players")[name]
               }
               game:GetService("ReplicatedStorage").CarryingServer:FireServer(unpack(args))
            
            repeat
               task.wait(0.2)
               --tp bypass
            local plr = game:GetService("Players").LocalPlayer
            local char = plr.Character
            for Loop = 1, 10 do
                local args = {
                    [1] = "Apartments"
                }
                game:GetService("ReplicatedStorage").DoorService:FireServer(unpack(args))
                task.wait(0.025)
                char.HumanoidRootPart.CFrame = CFrame.new(-99, 4, -115)
            end
            -- end
            task.wait(1)
            char.HumanoidRootPart.CFrame = CFrame.new(-2740.23071, -184.292358, -2930.51563, -0.684846103, 0.106422901, -0.720874488, 1.90580485e-09, 0.989277601, 0.146047324, 0.728687763, 0.100019939, -0.677502871) -- Place to TP
                local args = {
       [1] = game:GetService("Players")[name]
   }
   game:GetService("ReplicatedStorage").CarryingServer:FireServer(unpack(args))
               task.wait(0.9)
               game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = startpos1
               task.wait(0.2)
               game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = startpos1
               task.wait(.2)
               until not game.Players:FindFirstChild(name)
            end
        end
    end
}
TargetTab:Toggle{
    Name = "Push Aura",
    StartingState = false,
	Description = "Push people that come near you.",
    Callback = function(bool)
        _G.Push = bool
        while _G.Push == true do
            wait()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("Fist") then
                local Event = char.Fist.LocalScript.Script.legma
                Event:FireServer()
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v ~= game.Players.LocalPlayer then
                        local all = v
                        local Event = char.Fist.LocalScript.p
                        Event:FireServer(all)
                    end
                end
            end
        end
    end
}
local CarTab = GUI:Tab{
    Name = "Car Mods",
    Icon = "rbxassetid://6034754441"
}
CarTab:Button{
    Name = "Rainbow Car",
    Description = "Car turns rainbow",
    Callback = function()
        local runservice = game:GetService("RunService")
        local Entities = game:GetService("Players")
        local plr = Entities.LocalPlayer
        
        runservice.Heartbeat:Connect(function()
            for _,v in pairs(game:GetService("Workspace")[plr.Name.."'s Car"]:GetDescendants()) do
                if v:IsA("Part") or v:IsA("MeshPart") then
                    v.Color = Color3.fromHSV(tick()%5/5,1,1)
                    v.Material = Enum.Material.Neon
                end
            end
        end)
    end
}
CarTab:ColorPicker{
    Name = "Body Color",
	Style = Mercury.ColorPickerStyles.Legacy,
    Description = "Change body color of your car",
	Callback = function(t) 
        local plr = game:GetService("Players").LocalPlayer
        game:GetService("Workspace")[plr.Name .. "'s Car"].Body.Paint.Color = t
    end
}
CarTab:ColorPicker{
    Name = "Front Head Lights",
	Style = Mercury.ColorPickerStyles.Legacy,
    Description = "Change Front Head Lights of your car",
	Callback = function(t) 
        local plr = game:GetService("Players").LocalPlayer
        game:GetService("Workspace")[plr.Name .. "'s Car"].Body.Lights.FrontLights.Color = t
    end
}
CarTab:ColorPicker{
    Name = "Rear Head Lights",
	Style = Mercury.ColorPickerStyles.Legacy,
    Description = "Change Rear Head Lights of your car",
	Callback = function(t) 
        local plr = game:GetService("Players").LocalPlayer
        game:GetService("Workspace")[plr.Name .. "'s Car"].Body.Lights.RearLights.Color = t
    end
}
CarTab:Button{
	Name = "Neon Car",
	Description = "Car turns into neon.",
	Callback = function() 
    	local plr = game:GetService("Players").LocalPlayer
        game:GetService("Workspace")[plr.Name .. "'s Car"].Body.Paint.Material = "Neon"
    end
}
CarTab:Button{
    Name = "Transparent Car",
    Description = "Car turns invisible",
    Callback = function()
        local runservice = game:GetService("RunService")
        local Entities = game:GetService("Players")
        local plr = Entities.LocalPlayer
        
        runservice.Heartbeat:Connect(function()
            for _,v in pairs(game:GetService("Workspace")[plr.Name.."'s Car"]:GetDescendants()) do
                if v:IsA("Part") or v:IsA("MeshPart") then
                v.Transparency = 1
                end
            end
        end)
    end
}
CarTab:Button{
    Name = "Loud Screeching Sound (SPAWN CAR)",
    Description = "Makes a loud sound.",
    Callback = function()
        local args = {
            [1] = workspace:FindFirstChild(game.Players.LocalPlayer.Name .. "'s Car")
        }
        
        game:GetService("ReplicatedStorage").TireSmoke:FireServer(unpack(args))
        
        local args = {
            [1] = game.Workspace[game.Players.LocalPlayer.Name .. "'s Car"],
            [2] = 1000,
            [3] = 1000,
            [4] = false,
            [5] = 1000,
            [6] = 1000,
            [7] = 0,
            [8] = 1000,
            [9] = false
        }
        
        game:GetService("ReplicatedStorage").CarSound:FireServer(unpack(args))
    end
}
local MiscTab = GUI:Tab{
    Name = "Misc",
    Icon = "rbxassetid://6034509993"
}
MiscTab:Textbox{
	Name = "Change RP Name",
    Description = "Change your roleplay name to something else.",
	Callback = function(text) 
        game.Players.LocalPlayer.Character.Head.Gui.MainFrame.NameLabel.Text = text
    end
}
MiscTab:TextBox{
    Name = "Change RP Level",
    Description = "Change your roleplay lvl to something else.",
    Callback = function(text)
        game.Players.LocalPlayer.Character.Head.Gui.MainFrame.Age.Text = text
    end
}
MiscTab:Textbox{
	Name = "Change RP Rank",
    Description = "Change your roleplay rank to something else.",
	Callback = function(text) 
        game.Players.LocalPlayer.Character.Head.Gui.MainFrame.Rank.Text = text
    end
}
MiscTab:Button{
    Name = "Faceless",
    Description = "Remove your face.",
    Callback = function()
        for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
            if (v:IsA("Decal")) then
            v:Destroy()
            end
        end
    end
}
MiscTab:Button{
    Name = "No Name",
    Description = "Remove your name.",
    Callback = function()
        if game:GetService("Players").LocalPlayer.Character.Head.Gui then
            game:GetService("Players").LocalPlayer.Character.Head.Gui:Destroy()
        end
    end
}
MiscTab:Button{
    Name = "No Legs",
    Description = "Remove your legs.",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.LeftUpperLeg:Destroy()
        game:GetService("Players").LocalPlayer.Character.LeftLowerLeg:Destroy()
        game:GetService("Players").LocalPlayer.Character.RightUpperLeg:Destroy()
        game:GetService("Players").LocalPlayer.Character.RightLowerLeg:Destroy()
    end
}
MiscTab:Button{
    Name = "No Arms",
    Description = "Remove your arms.",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.RightUpperArm:Destroy()
        game:GetService("Players").LocalPlayer.Character.RightLowerArm:Destroy()
        game:GetService("Players").LocalPlayer.Character.LeftUpperArm:Destroy()
        game:GetService("Players").LocalPlayer.Character.LeftLowerArm:Destroy()
    end
}
MiscTab:Button{
    Name = "Fake Korblox",
    Description = "Gives you fake korblox.",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.LeftUpperLeg:Destroy()
        game:GetService("Players").LocalPlayer.Character.LeftLowerLeg:Destroy()
    end
}
MiscTab:Button{
    Name = "No Head",
    Description = "Remove your head.",
    Callback = function()
        game.Players.LocalPlayer.Character.Head.Neck:Destroy()
        game.Players.LocalPlayer.Character.UpperTorso.NeckAttachment:Destroy()
        game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
        game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0, 0, 0)
        game.Players.LocalPlayer.Character.Head.Massless = true
        game.Players.LocalPlayer.Character.Head.CanCollide = false
        heazd = true
         while heazd == true do
           pcall(function()
             game.Players.LocalPlayer.Character.Head.NeckRigAttachment.CFrame = CFrame.new(0, 100000,473632813, 0)
             game.Players.LocalPlayer.Character.UpperTorso.NeckRigAttachment.CFrame = CFrame.new(0, 100000,473632813, 0)
             game.Players.LocalPlayer.Character.Head.CFrame = CFrame.new(0, 100000,473632813, 0)
           end)
           wait()
         end
    end
}
MiscTab:Button{
    Name = "Stunned",
    Description = "Stunned Tag above your head.",
    Callback = function()
       local args = {
            [1] = 5,
            [2] = "*Stunned*"
        }

        game:GetService("ReplicatedStorage").ApeR:FireServer(unpack(args))
    end
}
MiscTab:Button{
    Name = "Tazed",
    Description = "Stunned Tag above your head.",
    Callback = function()
       local args = {
            [1] = 5,
            [2] = "*Tazed*"
        }

        game:GetService("ReplicatedStorage").ApeR:FireServer(unpack(args))
    end
}
MiscTab:Button{
    Name = "Celebrity Tag",
    Description = "Celebrity Tag above your head.",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.Head.Gui.MainFrame.Celeb.Visible = true
    end
}
MiscTab:Button{
    Name = "Blocky Head",
    Description = "Head turns blocky.",
    Callback = function()
        function heady()
            pcall(function()
           game.Players.LocalPlayer.Character.Head.Mesh:Destroy()
           game.Players.LocalPlayer.Character.Head.ear2.Mesh:Destroy()
           game.Players.LocalPlayer.Character.Head.ear.Mesh:Destroy()
           end)
        end
        heady()
    end
}
MiscTab:Button{
    Name = "New Player Notifier",
    Description = "Alert you when theres a new player.",
    Callback = function()    
        game:GetService("Players").PlayerAdded:Connect(function(player)
            notify(player.Name, "joined the server!", 5)
        end) 
    end
}
MiscTab:Button{
    Name = "Free camera",
    Description = "Spectator mode.",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/mfrMFUcJ"))()
    end
}
MiscTab:Button{
    Name = "Reset",
    Description = "Resets character.",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
}
MiscTab:Button{
    Name = "Bypass Zoom",
    Description = "Zoom as far as you like.",
    Callback = function()
        game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
    end
}
MiscTab:Button{
    Name = "MET Radio",
    Description = "Troll the MET.",
    Callback = function()
        local Target = nil
        for i,v in pairs(game.Players:GetChildren()) do
            if v.TeamColor == BrickColor.new("Navy blue") then
                Target = v.Name
            end
        end
        for i,v in pairs(game.Players[Target].Backpack:GetChildren()) do
            if v.Name == "Radio" then
                v:Clone().Parent = game.Players.LocalPlayer.Backpack
            end
        end
    end
}
local TeleportsTab = GUI:Tab{
    Name = "Teleports",
    Icon = "rbxassetid://6157099647"
}
local label = TeleportsTab:Label{
    Text = "Teleporting.",
    Description = "YOU MUST SPAWN A BIKE BEFORE USING!"
}
TeleportsTab:Button{
    Name = "Apartment 1",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            -176,
            -456,
            -70
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Apartment 2",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            -176,
            -457, 
            -493
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Apartment 3",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            -0.532082677,
            -457.913483,
            -112.602715
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Sports Direct",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
       
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            -195.589691,
            -463.662384,
            92.2535934
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Tescos",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            983.751831, 
            -446.635803,
            103.678848, 
            -0.381174803, 
            -9.88733646e-08, 
            -0.924502969, 
            -2.49378118e-08, 
            1, 
            -9.66656728e-08, 
            0.924502969, 
            -1.37914373e-08, 
            -0.381174803
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "New Londons",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            612.033203, 
            -400.384491,
            -106.705254,
            -0.0193231795,
            -7.59797825e-09,
            0.999813318,
            1.18716381e-09,
            1, 7.62234187e-09,
            -0.999813318,
            1.33423006e-09,
            -0.0193231795
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Ultimate Drip",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            479.154602, 
            -395.400482, 
            -91.1273499, 
            0.216078922, 
            1.49673074e-08, 
            0.976375878, 
            -1.26980304e-09, 
            1, 
            -1.50484354e-08, 
            -0.976375878, 
            2.01184469e-09, 
            0.216078922
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Gun/Melee Dealer",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            55.4791451,
            4.1782546, 
            -126.901131,
            0.997650862, 
            -1.03924357e-07, 
            0.0685039684, 
            1.04001337e-07, 
            1, 
            2.44261367e-09, 
            -0.0685039684, 
            4.68762895e-09, 
            0.997650862
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Ammo Dealer",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
                -379.645508,
                4.23412943,
                -12.8362045,
                0.999731362, 
                -9.61060564e-08,
                -0.0231769681, 
                9.66814468e-08, 
                1,
                2.37053221e-08,
                0.0231769681,
                -2.59397357e-08,
                0.999731362
            )
        )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Mask Dealer",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
                -176.336624,
                -0.500741839,
                146.262192,
                0.00358911627,
                3.95761042e-08,
                -0.999993563,
                3.16052393e-08,
                1, 3.96897946e-08, 
                0.999993563, 
                -3.174749e-08, 
                0.00358911627
            )
        )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Turkish Barbershop",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            223.995895, 
            -347.569946, 
            874.736816, 
            0.89640069, 
            6.32670947e-08, 
            -0.443244576, 
            -2.20718714e-08, 
            1, 
            9.8099008e-08, 
            0.443244576, 
            -7.81527802e-08, 
            0.89640069
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Tattoo Parlor",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            -286.175018, 
            -347.569946, 
            1316.57288, 
            0.954570174, 
            8.2568512e-08, 
            -0.29798618, 
            -8.18485191e-08, 
            1, 
            1.48945078e-08, 
            0.29798618, 
            1.01718758e-08, 
            0.954570174
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
TeleportsTab:Button{
    Name = "Car Dealership",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local hum = plr.Character.Humanoid
    
        game:GetService("Workspace")[plr.Name .. "'s Car"]:MoveTo(Vector3.new(
            -186.654739, 
            -463.662415, 
            1174.18298, 
            0.130901337, 
            5.79686592e-08, 
            -0.991395414, 
            5.18117593e-09, 
            1, 
            5.91558944e-08, 
            0.991395414, 
            -1.28801796e-08, 
            0.130901337
        )
    )
        game:GetService("Workspace")[plr.Name .. "'s Car"].DriveSeat:Sit(hum)
    end
}
local label2 = TeleportsTab:Label{
    Text = "Teleporting.",
    Description = "If you don't have a bike use this."
}
TeleportsTab:Button{
    Name = "Apartment 1 Outside",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local workspace = game.Workspace
        local xd = game.Players.LocalPlayer
        local xdd = game.TweenService
    
        local lol = CFrame.new(-100.356308, 4.15790749, -113.69944, 0.687698901, -6.61349802e-08, 0.725996017, 8.09533915e-08, 1, 1.44125085e-08, -0.725996017, 4.88603753e-08, 0.687698901)
        local bruh = xdd:Create(xd.Character.HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Quad), {CFrame = lol})
        bruh:Play()
    end
}
TeleportsTab:Button{
    Name = "Apartment 2 Outside",
    Callback = function()
        local xd = game.Players.LocalPlayer
        local xdd = game.TweenService
    
        local lol = CFrame.new(-207.040543, 4.09925461, -36.2843094, 0.996846497, -2.60123034e-08, -0.0793542936, 1.90378753e-08, 1, -8.8646317e-08, 0.0793542936, 8.68560335e-08, 0.996846497)
        local bruh = xdd:Create(xd.Character.HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Quad), {CFrame = lol})
        bruh:Play()
    end
}
TeleportsTab:Button{
    Name = "Apartment 3 Outside",
    Callback = function()
        local xd = game.Players.LocalPlayer
        local xdd = game.TweenService
    
        local lol = CFrame.new(25.9424191, 4.15715504, -213.753693, -0.0356137939, 1.35851588e-08, -0.999365628, -6.58316921e-08, 1, 1.59397864e-08, 0.999365628, 6.63576074e-08, -0.0356137939)
        local bruh = xdd:Create(xd.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Quad), {CFrame = lol})
        bruh:Play()
    end
}
