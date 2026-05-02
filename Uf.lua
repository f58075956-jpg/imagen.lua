
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
