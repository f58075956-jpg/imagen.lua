
    -- 🔥 TU SCRIPT VA ACÁ 🔥
local player = game.Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local muscleEvent = player:WaitForChild("muscleEvent")
local leaderstats = player:WaitForChild("leaderstats")
local rebirthsStat = leaderstats:WaitForChild("Rebirths")

local function getCharacter()
    return player.Character or player.CharacterAdded:Wait()
end

-- prevenir nil en leaderstats
-- ✅ CÓDIGO ARREGLADO:
local leaderstats = player:WaitForChild("leaderstats") -- Espera infinito hasta que aparezca
local rebirthsStat = leaderstats and leaderstats:FindFirstChild("Rebirths")

-- Si no encuentra leaderstats, el script no debe seguir intentando cargar las stats
if not leaderstats then 
    warn("Error: No se encontró leaderstats. El script se detendrá.")
    return -- Detiene el script aquí
end
local Players = game:GetService("Players")
local player = game.Players.LocalPlayer

local title = ("ZIX DOM")


local library = loadstring(game:HttpGet("https://pastebin.com/raw/wqJ8PvkW", true))()

local window = library:AddWindow(title, {
    main_color = Color3.fromRGB(0, 0, 0),
    min_size = Vector2.new(300, 450),
    can_resize = true,
})

local farmTab = window:AddTab("Rock")
farmTab:AddLabel("Rock Farming")

getgenv().autoFarm = false

-- 🔥 TOOL + REMOTE MEJORADO
local function gettool()
    local LP = game.Players.LocalPlayer
    local char = LP.Character
    local bp = LP.Backpack

    if not char then return end

    local tool = char:FindFirstChildOfClass("Tool") or bp:FindFirstChildOfClass("Tool")
    if tool then
        tool.Parent = char
    end

    local remote = LP:FindFirstChild("muscleEvent")

    if remote then
        -- 💥 golpes reales
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
		remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "leftHand")
		remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
		remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
		remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "rightHand")
		remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
		remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
		remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
		remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "rightHand")
        remote:FireServer("punch", "leftHand")
		remote:FireServer("punch", "leftHand")
        remote:FireServer("punch", "rightHand")
	end
end

-- ⚡ FUNCIÓN BASE DE FARM (MEJORADA)
local function farmRock(targetDurability)
    spawn(function()
        while getgenv().autoFarm do
            local LP = game.Players.LocalPlayer
            local char = LP.Character

            if char and char:FindFirstChild("RightHand") and char:FindFirstChild("LeftHand") then
                local right = char.RightHand
                local left = char.LeftHand

                for _, v in pairs(workspace.machinesFolder:GetDescendants()) do
                    if v.Name == "neededDurability" and v.Value == targetDurability then
                        local rock = v.Parent:FindFirstChild("Rock")

                        if rock then
                            -- 💀 MULTI TOUCH (RANGE BOOST)
                            for i = 1000, 1200 do
                                firetouchinterest(rock, right, 0)
                                firetouchinterest(rock, right, 1)
                                firetouchinterest(rock, left, 0)
                                firetouchinterest(rock, left, 1)
								firetouchinterest(rock, right, 0)
                                firetouchinterest(rock, right, 1)
                                firetouchinterest(rock, left, 0)
                                firetouchinterest(rock, left, 1)
							    firetouchinterest(rock, left, 0)
							    firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
								firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
								firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
                                firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
								firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
                                firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
								firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
                                firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
								firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
                                firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
								firetouchinterest(rock, left, 1)
								firetouchinterest(rock, left, 0)
                            end

                            -- 🔥 punch real
                            gettool()
                        end
                    end
                end
            end

           task.wait(0)  -- ⚡ velocidad óptima
        end
    end)
end

-- 🔘 SWITCHES (todos arreglados)
farmTab:AddSwitch("Tiny Island Rock", function(bool)
    getgenv().autoFarm = bool
    if bool then farmRock(0) end
end)

farmTab:AddSwitch("Starter Island Rock", function(bool)
    getgenv().autoFarm = bool
    if bool then farmRock(100) end
end)

farmTab:AddSwitch("Legend Beach Rock", function(bool)
    getgenv().autoFarm = bool
    if bool then farmRock(5000) end
end)

farmTab:AddSwitch("Frost Gym Rock", function(bool)
    getgenv().autoFarm = bool
    if bool then farmRock(150000) end
end)

farmTab:AddSwitch("Mythical Gym Rock", function(bool)
    getgenv().autoFarm = bool
    if bool then farmRock(400000) end
end)

farmTab:AddSwitch("Eternal Gym Rock", function(bool)
    getgenv().autoFarm = bool
    if bool then farmRock(750000) end
end)

farmTab:AddSwitch("Legend Gym Rock", function(bool)
    getgenv().autoFarm = bool
    if bool then farmRock(1000000) end
end)

farmTab:AddSwitch("Muscle King Gym Rock", function(bool)
    getgenv().autoFarm = bool
    if bool then farmRock(5000000) end
end)

farmTab:AddSwitch("Ancient Jungle Rock", function(bool)
    getgenv().autoFarm = bool
    if bool then farmRock(10000000) end
end)

farmTab:AddSwitch("Anti AFK", function(state)
    if state then
       
        if getgenv().AntiAfkExecuted and thisoneissocoldww then 
            getgenv().AntiAfkExecuted = false
            getgenv().zamanbaslaticisi = false
            game.CoreGui.thisoneissocoldww:Destroy()
        end
        getgenv().AntiAfkExecuted = true

        local thisoneissocoldww = Instance.new("ScreenGui")
        local madebybloodofbatus = Instance.new("Frame")
        local UICornerw = Instance.new("UICorner")
        local DestroyButton = Instance.new("TextButton")
        local uselesslabelone = Instance.new("TextLabel")
        local timerlabel = Instance.new("TextLabel")
        local uselesslabeltwo = Instance.new("TextLabel")
        local fpslabel = Instance.new("TextLabel")
        local uselesslabelthree = Instance.new("TextLabel")
        local pinglabel = Instance.new("TextLabel")
        local uselessframeone = Instance.new("Frame")
        local UICornerww = Instance.new("UICorner")
        local uselesslabelfour = Instance.new("TextLabel")

        thisoneissocoldww.Name = "thisoneissocoldww"
        thisoneissocoldww.Parent = game.CoreGui
        thisoneissocoldww.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        madebybloodofbatus.Name = "madebybloodofbatus"
        madebybloodofbatus.Parent = thisoneissocoldww
        madebybloodofbatus.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        madebybloodofbatus.Position = UDim2.new(0.085,0,0.13,0)
        madebybloodofbatus.Size = UDim2.new(0,225,0,96)
        UICornerw.Parent = madebybloodofbatus

        DestroyButton.Name = "DestroyButton"
        DestroyButton.Parent = madebybloodofbatus
        DestroyButton.BackgroundTransparency = 1
        DestroyButton.Position = UDim2.new(0.87,0,0.02,0)
        DestroyButton.Size = UDim2.new(0,27,0,15)
        DestroyButton.Font = Enum.Font.SourceSans
        DestroyButton.Text = "X"
        DestroyButton.TextColor3 = Color3.fromRGB(255,255,255)
        DestroyButton.TextSize = 14
        DestroyButton.MouseButton1Click:Connect(function()
            getgenv().AntiAfkExecuted = false
            wait(0.1)
            thisoneissocoldww:Destroy()
        end)

        uselesslabelone.Parent = madebybloodofbatus
        uselesslabelone.BackgroundTransparency = 1
        uselesslabelone.Position = UDim2.new(0.3,0,0,0)
        uselesslabelone.Size = UDim2.new(0,95,0,24)
        uselesslabelone.Font = Enum.Font.SourceSans
        uselesslabelone.Text = "Anti Afk"
        uselesslabelone.TextColor3 = Color3.fromRGB(255,255,255)
        uselesslabelone.TextSize = 14

        timerlabel.Parent = madebybloodofbatus
        timerlabel.BackgroundTransparency = 1
        timerlabel.Position = UDim2.new(0.65,0,0.68,0)
        timerlabel.Size = UDim2.new(0,60,0,24)
        timerlabel.Font = Enum.Font.SourceSans
        timerlabel.Text = "0:0:0"
        timerlabel.TextColor3 = Color3.fromRGB(255,255,255)
        timerlabel.TextSize = 14

        uselesslabeltwo.Parent = madebybloodofbatus
        uselesslabeltwo.BackgroundTransparency = 1
        uselesslabeltwo.Position = UDim2.new(0.03,0,0.37,0)
        uselesslabeltwo.Size = UDim2.new(0,29,0,24)
        uselesslabeltwo.Font = Enum.Font.SourceSans
        uselesslabeltwo.Text = "Ping: "
        uselesslabeltwo.TextColor3 = Color3.fromRGB(255,255,255)
        uselesslabeltwo.TextSize = 14

        fpslabel.Parent = madebybloodofbatus
        fpslabel.BackgroundTransparency = 1
        fpslabel.Position = UDim2.new(0.72,0,0.35,0)
        fpslabel.Size = UDim2.new(0,55,0,24)
        fpslabel.Font = Enum.Font.SourceSans
        fpslabel.Text = "0"
        fpslabel.TextColor3 = Color3.fromRGB(255,255,255)
        fpslabel.TextSize = 14

        uselesslabelthree.Parent = madebybloodofbatus
        uselesslabelthree.BackgroundTransparency = 1
        uselesslabelthree.Position = UDim2.new(0.5,0,0.35,0)
        uselesslabelthree.Size = UDim2.new(0,26,0,24)
        uselesslabelthree.Font = Enum.Font.SourceSans
        uselesslabelthree.Text = "Fps: "
        uselesslabelthree.TextColor3 = Color3.fromRGB(255,255,255)
        uselesslabelthree.TextSize = 14

        pinglabel.Parent = madebybloodofbatus
        pinglabel.BackgroundTransparency = 1
        pinglabel.Position = UDim2.new(0.2,0,0.37,0)
        pinglabel.Size = UDim2.new(0,55,0,24)
        pinglabel.Font = Enum.Font.SourceSans
        pinglabel.Text = "0"
        pinglabel.TextColor3 = Color3.fromRGB(255,255,255)
        pinglabel.TextSize = 14
        pinglabel.TextWrapped = true

        uselessframeone.Parent = madebybloodofbatus
        uselessframeone.BackgroundColor3 = Color3.fromRGB(255,255,255)
        uselessframeone.Position = UDim2.new(0.004,0,0.24,0)
        uselessframeone.Size = UDim2.new(0,224,0,5)
        UICornerww.CornerRadius = UDim.new(0,50)
        UICornerww.Parent = uselessframeone

        uselesslabelfour.Parent = madebybloodofbatus
        uselesslabelfour.BackgroundTransparency = 1
        uselesslabelfour.Position = UDim2.new(0.05,0,0.81,0)
        uselesslabelfour.Size = UDim2.new(0,95,0,12)
        uselesslabelfour.Font = Enum.Font.SourceSans
        uselesslabelfour.Text = "Anti-Afk Auto Enabled"
        uselesslabelfour.TextColor3 = Color3.fromRGB(255,255,255)
        uselesslabelfour.TextSize = 14

       
        local Drag = madebybloodofbatus
        local gsTween = game:GetService("TweenService")
        local UserInputService = game:GetService("UserInputService")
        local dragging, dragInput, dragStart, startPos
        local function update(input)
            local delta = input.Position - dragStart
            local dragTime = 0.04
            local SmoothDrag = {}
            SmoothDrag.Position = UDim2.new(startPos.X.Scale,startPos.X.Offset+delta.X,startPos.Y.Scale,startPos.Y.Offset+delta.Y)
            gsTween:Create(Drag,TweenInfo.new(dragTime,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),SmoothDrag):Play()
        end
        Drag.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = Drag.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then dragging = false end
                end)
            end
        end)
        Drag.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then update(input) end
        end)

    
        local vu = game:GetService('VirtualUser')
        game.Players.LocalPlayer.Idled:Connect(function()
            vu:CaptureController()
            vu:ClickButton2(Vector2.new())
        end)

        
        local RunService = game:GetService("RunService")
        local sec = tick()
        local FPS = {}
        RunService.RenderStepped:Connect(function()
            local fr = tick()
            for i=#FPS,1,-1 do FPS[i+1] = (FPS[i]>=fr-1) and FPS[i] or nil end
            FPS[1] = fr
            local fps = math.floor((tick()-sec>=1 and #FPS) or (#FPS/(tick()-sec)))
            fpslabel.Text = fps
        end)

        spawn(function()
            while getgenv().AntiAfkExecuted do
                wait(1)
                local ping = math.floor(tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue()))
                pinglabel.Text = ping
            end
        end)

      
        local saniye, dakika, saat = 0,0,0
        getgenv().zamanbaslaticisi = true
        spawn(function()
            while getgenv().zamanbaslaticisi do
                saniye = saniye + 1
                wait(1)
                if saniye>=60 then saniye=0;dakika=dakika+1 end
                if dakika>=60 then dakika=0;saat=saat+1 end
                timerlabel.Text = saat..":"..dakika..":"..saniye
            end
        end)
    else
        
        getgenv().AntiAfkExecuted = false
        getgenv().zamanbaslaticisi = false
        if game.CoreGui:FindFirstChild("thisoneissocoldww") then
            game.CoreGui.thisoneissocoldww:Destroy()
        end
    end
