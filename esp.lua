--// KEY SYSTEM

local CorrectKey = "NyxStrickss-123" -- 🔑 CAMBIA ESTA KEY

-- UI
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
local Title = Instance.new("TextLabel", Frame)
local KeyBox = Instance.new("TextBox", Frame)
local Submit = Instance.new("TextButton", Frame)
local Logo = Instance.new("ImageLabel", Frame)
local Status = Instance.new("TextLabel", Frame)

-- Frame
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
Frame.BorderSizePixel = 0

-- Logo
Logo.Size = UDim2.new(0, 80, 0, 80)
Logo.Position = UDim2.new(0.5, -40, 0, 10)
Logo.BackgroundTransparency = 1
Logo.Image = "https://i.pinimg.com/originals/77/20/2c/77202c2d4135df21eff23d10f9c10c5e.jpg" 

-- Título
Title.Size = UDim2.new(1,0,0,30)
Title.Position = UDim2.new(0,0,0,90)
Title.Text = "NyxStrickss Hub"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.BackgroundTransparency = 1
Title.TextScaled = true

-- Input
KeyBox.Size = UDim2.new(0.8,0,0,30)
KeyBox.Position = UDim2.new(0.1,0,0,120)
KeyBox.PlaceholderText = "Enter Key..."
KeyBox.Text = ""

-- Botón
Submit.Size = UDim2.new(0.5,0,0,30)
Submit.Position = UDim2.new(0.25,0,0,155)
Submit.Text = "Submit"

-- Estado
Status.Size = UDim2.new(1,0,0,20)
Status.Position = UDim2.new(0,0,1,-20)
Status.BackgroundTransparency = 1
Status.TextColor3 = Color3.fromRGB(255,0,0)
Status.Text = ""

-- Animación
Frame.BackgroundTransparency = 1
for i = 1,0,-0.1 do
    Frame.BackgroundTransparency = i
    wait()
end

-- Validación
Submit.MouseButton1Click:Connect(function()
    if KeyBox.Text == CorrectKey then
        Status.Text = "Access Granted"
        wait(0.5)
        ScreenGui:Destroy()

        -- 🔥 TU SCRIPT ESP ACA
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()

    else
        Status.Text = "Wrong Key!"
    end
end)
