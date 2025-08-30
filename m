local loadingScreen = Instance.new("ScreenGui")
loadingScreen.Name = "ZScriptLoadingScreen"
loadingScreen.IgnoreGuiInset = true
loadingScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local bgFrame = Instance.new("Frame")
bgFrame.Size = UDim2.new(1, 0, 1, 0)
bgFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
bgFrame.BorderSizePixel = 0
bgFrame.Parent = loadingScreen

local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 200, 0, 200)
logo.Position = UDim2.new(0.5, -100, 0.4, -100)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://123456789"
logo.Parent = bgFrame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 300, 0, 50)
title.Position = UDim2.new(0.5, -150, 0.6, 0)
title.BackgroundTransparency = 1
title.Text = "关闭1DAY"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 30
title.Parent = bgFrame

local statusText = Instance.new("TextLabel")
statusText.Size = UDim2.new(0.8, 0, 0, 30)
statusText.Position = UDim2.new(0.1, 0, 0.75, 0)
statusText.BackgroundTransparency = 1
statusText.Text = "脚本停用1天，明天8点恢复或延迟 | 10秒后自动关闭UI"
statusText.TextColor3 = Color3.fromRGB(230, 230, 230)
statusText.Font = Enum.Font.SourceSans
statusText.TextSize = 18
statusText.Parent = bgFrame

loadingScreen.Parent = game:GetService("CoreGui") 
    or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

task.wait(10)
loadingScreen:Destroy()
