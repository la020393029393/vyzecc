local G = {}

G.VYZECCHubV1 = Instance.new("ScreenGui")
G.VYZECCHubV1.Name = "MessageHub"
G.VYZECCHubV1.ResetOnSpawn = false
G.VYZECCHubV1.DisplayOrder = 2147483647
G.VYZECCHubV1.IgnoreGuiInset = true
G.VYZECCHubV1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
G.VYZECCHubV1.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

G.MainOuter = Instance.new("Frame")
G.MainOuter.Name = "MainOuter"
G.MainOuter.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.MainOuter.BorderSizePixel = 0
G.MainOuter.ClipsDescendants = true
G.MainOuter.Position = UDim2.new(0.5, -140, 0.5, -210)
G.MainOuter.Size = UDim2.new(0, 280, 0, 48)
G.MainOuter.Visible = false
G.MainOuter.Parent = G.VYZECCHubV1

G.UIScale = Instance.new("UIScale")
G.UIScale.Scale = 0.69999998807907104
G.UIScale.Parent = G.MainOuter

G.UICorner = Instance.new("UICorner")
G.UICorner.CornerRadius = UDim.new(0, 20)
G.UICorner.Parent = G.MainOuter

G.MenuBgImage = Instance.new("ImageLabel")
G.MenuBgImage.Name = "MenuBgImage"
G.MenuBgImage.BackgroundTransparency = 1
G.MenuBgImage.BorderSizePixel = 0
G.MenuBgImage.Size = UDim2.new(1, 0, 1, 0)
G.MenuBgImage.Image = "rbxassetid://96235452296851"
G.MenuBgImage.ResampleMode = Enum.ResamplerMode.Default
G.MenuBgImage.ScaleType = Enum.ScaleType.Crop
G.MenuBgImage.ImageTransparency = 0.55000001192092896
G.MenuBgImage.ScaleType = Enum.ScaleType.Crop
G.MenuBgImage.Parent = G.MainOuter

G.UICorner_2 = Instance.new("UICorner")
G.UICorner_2.CornerRadius = UDim.new(0, 20)
G.UICorner_2.Parent = G.MenuBgImage

G.MenuBgOverlay = Instance.new("Frame")
G.MenuBgOverlay.Name = "MenuBgOverlay"
G.MenuBgOverlay.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.MenuBgOverlay.BackgroundTransparency = 0.44999998807907104
G.MenuBgOverlay.BorderSizePixel = 0
G.MenuBgOverlay.Size = UDim2.new(1, 0, 1, 0)
G.MenuBgOverlay.ZIndex = 2
G.MenuBgOverlay.Parent = G.MainOuter

G.UICorner_3 = Instance.new("UICorner")
G.UICorner_3.CornerRadius = UDim.new(0, 20)
G.UICorner_3.Parent = G.MenuBgOverlay

G.HeaderBar = Instance.new("Frame")
G.HeaderBar.Name = "HeaderBar"
G.HeaderBar.BackgroundColor3 = Color3.fromRGB(12, 6, 22)
G.HeaderBar.BorderSizePixel = 0
G.HeaderBar.ClipsDescendants = true
G.HeaderBar.Size = UDim2.new(1, 0, 0, 48)
G.HeaderBar.ZIndex = 4
G.HeaderBar.Parent = G.MainOuter

G.UICorner_4 = Instance.new("UICorner")
G.UICorner_4.CornerRadius = UDim.new(0, 20)
G.UICorner_4.Parent = G.HeaderBar

G.HeaderFill = Instance.new("Frame")
G.HeaderFill.Name = "HeaderFill"
G.HeaderFill.BackgroundColor3 = Color3.fromRGB(12, 6, 22)
G.HeaderFill.BackgroundTransparency = 1
G.HeaderFill.BorderSizePixel = 0
G.HeaderFill.Position = UDim2.new(0, 0, 0.5, 0)
G.HeaderFill.Size = UDim2.new(1, 0, 0.5, 0)
G.HeaderFill.ZIndex = 5
G.HeaderFill.Parent = G.HeaderBar

G.VyzeccHeaderLogo = Instance.new("ImageLabel")
G.VyzeccHeaderLogo.Name = "VyzeccHeaderLogo"
G.VyzeccHeaderLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G.VyzeccHeaderLogo.BackgroundTransparency = 1
G.VyzeccHeaderLogo.BorderSizePixel = 0
G.VyzeccHeaderLogo.Position = UDim2.new(0, 12, 0, 8)
G.VyzeccHeaderLogo.Size = UDim2.new(0, 116, 0, 32)
G.VyzeccHeaderLogo.ZIndex = 6
G.VyzeccHeaderLogo.Image = "rbxassetid://75548910103458"
G.VyzeccHeaderLogo.ScaleType = Enum.ScaleType.Fit
G.VyzeccHeaderLogo.Parent = G.HeaderBar

G.UICorner_5 = Instance.new("UICorner")
G.UICorner_5.CornerRadius = UDim.new(0, 14)
G.UICorner_5.Parent = G.VyzeccHeaderLogo

G.TextLabel = Instance.new("TextLabel")
G.TextLabel.BackgroundTransparency = 1
G.TextLabel.Position = UDim2.new(0, 48, 0, 10)
G.TextLabel.Size = UDim2.new(0, 140, 0, 28)
G.TextLabel.ZIndex = 6
G.TextLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel.Text = ""
G.TextLabel.Visible = false
G.TextLabel.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel.TextSize = 16
G.TextLabel.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel.Parent = G.HeaderBar

G.MinimizedTitleImage = Instance.new("ImageLabel")
G.MinimizedTitleImage.Name = "MinimizedTitleImage"
G.MinimizedTitleImage.BackgroundTransparency = 1
G.MinimizedTitleImage.Position = UDim2.new(0, 14, 0, 10)
G.MinimizedTitleImage.Size = UDim2.new(0, 116, 0, 32)
G.MinimizedTitleImage.Visible = false
G.MinimizedTitleImage.ZIndex = 7
G.MinimizedTitleImage.Image = "rbxassetid://75548910103458"
G.MinimizedTitleImage.ScaleType = Enum.ScaleType.Fit
G.MinimizedTitleImage.Parent = G.HeaderBar

G.TextButton = Instance.new("TextButton")
G.TextButton.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.TextButton.BorderSizePixel = 0
G.TextButton.Position = UDim2.new(1, -30, 0, 13)
G.TextButton.Size = UDim2.new(0, 22, 0, 22)
G.TextButton.ZIndex = 100
G.TextButton.AutoButtonColor = false
G.TextButton.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton.Text = "-"
G.TextButton.TextColor3 = Color3.fromRGB(153, 135, 165)
G.TextButton.TextSize = 14
G.TextButton.Parent = G.HeaderBar

G.UICorner_6 = Instance.new("UICorner")
G.UICorner_6.CornerRadius = UDim.new(0, 2)
G.UICorner_6.Parent = G.TextButton

G.VyzeccNavigation = Instance.new("Frame")
G.VyzeccNavigation.Name = "VyzeccNavigation"
G.VyzeccNavigation.BackgroundTransparency = 1
G.VyzeccNavigation.BorderSizePixel = 0
G.VyzeccNavigation.Position = UDim2.new(0, 8, 0, 51)
G.VyzeccNavigation.Size = UDim2.new(1, -16, 0, 40)
G.VyzeccNavigation.ZIndex = 6
G.VyzeccNavigation.Parent = G.MainOuter

G.UIListLayout = Instance.new("UIListLayout")
G.UIListLayout.FillDirection = Enum.FillDirection.Horizontal
G.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
G.UIListLayout.Padding = UDim.new(0, 4)
G.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
G.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
G.UIListLayout.Parent = G.VyzeccNavigation

G.VyzeccNav_MAIN = Instance.new("TextButton")
G.VyzeccNav_MAIN.Name = "VyzeccNav_MAIN"
G.VyzeccNav_MAIN.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.VyzeccNav_MAIN.BorderSizePixel = 0
G.VyzeccNav_MAIN.LayoutOrder = 1
G.VyzeccNav_MAIN.Size = UDim2.new(0, 48, 0, 28)
G.VyzeccNav_MAIN.ZIndex = 7
G.VyzeccNav_MAIN.AutoButtonColor = false
G.VyzeccNav_MAIN.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.VyzeccNav_MAIN.Text = "MAIN"
G.VyzeccNav_MAIN.TextColor3 = Color3.fromRGB(249, 240, 255)
G.VyzeccNav_MAIN.Parent = G.VyzeccNavigation

G.UICorner_7 = Instance.new("UICorner")
G.UICorner_7.CornerRadius = UDim.new(0, 7)
G.UICorner_7.Parent = G.VyzeccNav_MAIN

G.UIStroke = Instance.new("UIStroke")
G.UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke.Color = Color3.fromRGB(160, 80, 220)
G.UIStroke.Thickness = 1.2000000476837158
G.UIStroke.Parent = G.VyzeccNav_MAIN

G.VyzeccNav_COMBAT = Instance.new("TextButton")
G.VyzeccNav_COMBAT.Name = "VyzeccNav_COMBAT"
G.VyzeccNav_COMBAT.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccNav_COMBAT.BackgroundTransparency = 0.2199999988079071
G.VyzeccNav_COMBAT.BorderSizePixel = 0
G.VyzeccNav_COMBAT.LayoutOrder = 2
G.VyzeccNav_COMBAT.Size = UDim2.new(0, 48, 0, 28)
G.VyzeccNav_COMBAT.ZIndex = 7
G.VyzeccNav_COMBAT.AutoButtonColor = false
G.VyzeccNav_COMBAT.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.VyzeccNav_COMBAT.Text = "COMBAT"
G.VyzeccNav_COMBAT.TextColor3 = Color3.fromRGB(150, 100, 200)
G.VyzeccNav_COMBAT.Parent = G.VyzeccNavigation

G.UICorner_8 = Instance.new("UICorner")
G.UICorner_8.CornerRadius = UDim.new(0, 7)
G.UICorner_8.Parent = G.VyzeccNav_COMBAT

G.UIStroke_2 = Instance.new("UIStroke")
G.UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_2.Color = Color3.fromRGB(119, 25, 185)
G.UIStroke_2.Parent = G.VyzeccNav_COMBAT

G.VyzeccNav_MISC = Instance.new("TextButton")
G.VyzeccNav_MISC.Name = "VyzeccNav_MISC"
G.VyzeccNav_MISC.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccNav_MISC.BackgroundTransparency = 0.2199999988079071
G.VyzeccNav_MISC.BorderSizePixel = 0
G.VyzeccNav_MISC.LayoutOrder = 3
G.VyzeccNav_MISC.Size = UDim2.new(0, 48, 0, 28)
G.VyzeccNav_MISC.ZIndex = 7
G.VyzeccNav_MISC.AutoButtonColor = false
G.VyzeccNav_MISC.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.VyzeccNav_MISC.Text = "MISC"
G.VyzeccNav_MISC.TextColor3 = Color3.fromRGB(150, 100, 200)
G.VyzeccNav_MISC.Parent = G.VyzeccNavigation

G.UICorner_9 = Instance.new("UICorner")
G.UICorner_9.CornerRadius = UDim.new(0, 7)
G.UICorner_9.Parent = G.VyzeccNav_MISC

G.UIStroke_3 = Instance.new("UIStroke")
G.UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_3.Color = Color3.fromRGB(119, 25, 185)
G.UIStroke_3.Parent = G.VyzeccNav_MISC

G.VyzeccNav_VISUALS = Instance.new("TextButton")
G.VyzeccNav_VISUALS.Name = "VyzeccNav_VISUALS"
G.VyzeccNav_VISUALS.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccNav_VISUALS.BackgroundTransparency = 0.2199999988079071
G.VyzeccNav_VISUALS.BorderSizePixel = 0
G.VyzeccNav_VISUALS.LayoutOrder = 4
G.VyzeccNav_VISUALS.Size = UDim2.new(0, 48, 0, 28)
G.VyzeccNav_VISUALS.ZIndex = 7
G.VyzeccNav_VISUALS.AutoButtonColor = false
G.VyzeccNav_VISUALS.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.VyzeccNav_VISUALS.Text = "VISUALS"
G.VyzeccNav_VISUALS.TextColor3 = Color3.fromRGB(150, 100, 200)
G.VyzeccNav_VISUALS.Parent = G.VyzeccNavigation

G.UICorner_10 = Instance.new("UICorner")
G.UICorner_10.CornerRadius = UDim.new(0, 7)
G.UICorner_10.Parent = G.VyzeccNav_VISUALS

G.UIStroke_4 = Instance.new("UIStroke")
G.UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_4.Color = Color3.fromRGB(119, 25, 185)
G.UIStroke_4.Parent = G.VyzeccNav_VISUALS

G.VyzeccNav_CUSTOMIZE = Instance.new("TextButton")
G.VyzeccNav_CUSTOMIZE.Name = "VyzeccNav_CUSTOMIZE"
G.VyzeccNav_CUSTOMIZE.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccNav_CUSTOMIZE.BackgroundTransparency = 0.2199999988079071
G.VyzeccNav_CUSTOMIZE.BorderSizePixel = 0
G.VyzeccNav_CUSTOMIZE.LayoutOrder = 5
G.VyzeccNav_CUSTOMIZE.Size = UDim2.new(0, 48, 0, 28)
G.VyzeccNav_CUSTOMIZE.ZIndex = 7
G.VyzeccNav_CUSTOMIZE.AutoButtonColor = false
G.VyzeccNav_CUSTOMIZE.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.VyzeccNav_CUSTOMIZE.Text = "UI"
G.VyzeccNav_CUSTOMIZE.TextColor3 = Color3.fromRGB(150, 100, 200)
G.VyzeccNav_CUSTOMIZE.Parent = G.VyzeccNavigation

G.UICorner_11 = Instance.new("UICorner")
G.UICorner_11.CornerRadius = UDim.new(0, 7)
G.UICorner_11.Parent = G.VyzeccNav_CUSTOMIZE

G.UIStroke_5 = Instance.new("UIStroke")
G.UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_5.Color = Color3.fromRGB(119, 25, 185)
G.UIStroke_5.Parent = G.VyzeccNav_CUSTOMIZE

G.VyzeccPage_Speed = Instance.new("ScrollingFrame")
G.VyzeccPage_Speed.Name = "VyzeccPage_Speed"
G.VyzeccPage_Speed.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccPage_Speed.BackgroundTransparency = 1
G.VyzeccPage_Speed.BorderSizePixel = 0
G.VyzeccPage_Speed.Position = UDim2.new(0, 3, 0, 92)
G.VyzeccPage_Speed.Size = UDim2.new(1, -3, 1, -92)
G.VyzeccPage_Speed.Visible = false
G.VyzeccPage_Speed.ZIndex = 3
G.VyzeccPage_Speed.AutomaticCanvasSize = Enum.AutomaticSize.Y
G.VyzeccPage_Speed.CanvasSize = UDim2.new(0, 0, 0, 0)
G.VyzeccPage_Speed.ScrollBarImageColor3 = Color3.fromRGB(160, 80, 220)
G.VyzeccPage_Speed.ScrollBarImageTransparency = 0.5
G.VyzeccPage_Speed.ScrollBarThickness = 3
G.VyzeccPage_Speed.Parent = G.MainOuter

G.UICorner_12 = Instance.new("UICorner")
G.UICorner_12.CornerRadius = UDim.new(0, 20)
G.UICorner_12.Parent = G.VyzeccPage_Speed

G.UIListLayout_2 = Instance.new("UIListLayout")
G.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
G.UIListLayout_2.Parent = G.VyzeccPage_Speed

G.UIPadding = Instance.new("UIPadding")
G.UIPadding.PaddingBottom = UDim.new(0, 12)
G.UIPadding.PaddingLeft = UDim.new(0, 8)
G.UIPadding.PaddingRight = UDim.new(0, 8)
G.UIPadding.PaddingTop = UDim.new(0, 6)
G.UIPadding.Parent = G.VyzeccPage_Speed

G.Frame = Instance.new("Frame")
G.Frame.BackgroundTransparency = 1
G.Frame.BorderSizePixel = 0
G.Frame.LayoutOrder = 1
G.Frame.Size = UDim2.new(1, 0, 0, 28)
G.Frame.Parent = G.VyzeccPage_Speed

G.TextLabel_2 = Instance.new("TextLabel")
G.TextLabel_2.BackgroundTransparency = 1
G.TextLabel_2.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_2.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_2.Text = "SPEED"
G.TextLabel_2.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_2.TextSize = 13
G.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_2.Parent = G.Frame

G.Frame_2 = Instance.new("Frame")
G.Frame_2.BackgroundTransparency = 1
G.Frame_2.BorderSizePixel = 0
G.Frame_2.LayoutOrder = 2
G.Frame_2.Size = UDim2.new(1, 0, 0, 2)
G.Frame_2.Parent = G.VyzeccPage_Speed

G.Frame_3 = Instance.new("Frame")
G.Frame_3.BackgroundTransparency = 1
G.Frame_3.BorderSizePixel = 0
G.Frame_3.LayoutOrder = 2
G.Frame_3.Size = UDim2.new(1, 0, 0, 38)
G.Frame_3.Parent = G.VyzeccPage_Speed

G.TextLabel_3 = Instance.new("TextLabel")
G.TextLabel_3.BackgroundTransparency = 1
G.TextLabel_3.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_3.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_3.Text = "Normal Speed"
G.TextLabel_3.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_3.TextSize = 11
G.TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_3.Parent = G.Frame_3

G.Frame_4 = Instance.new("Frame")
G.Frame_4.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_4.BorderSizePixel = 0
G.Frame_4.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_4.Size = UDim2.new(0, 54, 0, 26)
G.Frame_4.Parent = G.Frame_3

G.UICorner_13 = Instance.new("UICorner")
G.UICorner_13.CornerRadius = UDim.new(0, 6)
G.UICorner_13.Parent = G.Frame_4

G.UIStroke_6 = Instance.new("UIStroke")
G.UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_6.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_6.Parent = G.Frame_4

G.TextBox = Instance.new("TextBox")
G.TextBox.BackgroundTransparency = 1
G.TextBox.Position = UDim2.new(0, 3, 0, 0)
G.TextBox.Size = UDim2.new(1, -6, 1, 0)
G.TextBox.ZIndex = 8
G.TextBox.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox.Text = "60"
G.TextBox.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox.TextSize = 11
G.TextBox.ClearTextOnFocus = false
G.TextBox.Parent = G.Frame_4

G.Frame_5 = Instance.new("Frame")
G.Frame_5.BackgroundTransparency = 1
G.Frame_5.BorderSizePixel = 0
G.Frame_5.LayoutOrder = 3
G.Frame_5.Size = UDim2.new(1, 0, 0, 38)
G.Frame_5.Parent = G.VyzeccPage_Speed

G.TextLabel_4 = Instance.new("TextLabel")
G.TextLabel_4.BackgroundTransparency = 1
G.TextLabel_4.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_4.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_4.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_4.Text = "Carry Speed"
G.TextLabel_4.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_4.TextSize = 11
G.TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_4.Parent = G.Frame_5

G.Frame_6 = Instance.new("Frame")
G.Frame_6.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_6.BorderSizePixel = 0
G.Frame_6.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_6.Size = UDim2.new(0, 54, 0, 26)
G.Frame_6.Parent = G.Frame_5

G.UICorner_14 = Instance.new("UICorner")
G.UICorner_14.CornerRadius = UDim.new(0, 6)
G.UICorner_14.Parent = G.Frame_6

G.UIStroke_7 = Instance.new("UIStroke")
G.UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_7.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_7.Parent = G.Frame_6

G.TextBox_2 = Instance.new("TextBox")
G.TextBox_2.BackgroundTransparency = 1
G.TextBox_2.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_2.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_2.ZIndex = 8
G.TextBox_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_2.Text = "30"
G.TextBox_2.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_2.TextSize = 11
G.TextBox_2.ClearTextOnFocus = false
G.TextBox_2.Parent = G.Frame_6

G.Frame_7 = Instance.new("Frame")
G.Frame_7.BackgroundTransparency = 1
G.Frame_7.BorderSizePixel = 0
G.Frame_7.LayoutOrder = 6
G.Frame_7.Size = UDim2.new(1, 0, 0, 38)
G.Frame_7.Parent = G.VyzeccPage_Speed

G.TextLabel_5 = Instance.new("TextLabel")
G.TextLabel_5.BackgroundTransparency = 1
G.TextLabel_5.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_5.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_5.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_5.Text = "Lagger Normal Speed"
G.TextLabel_5.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_5.TextSize = 11
G.TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_5.Parent = G.Frame_7

G.Frame_8 = Instance.new("Frame")
G.Frame_8.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_8.BorderSizePixel = 0
G.Frame_8.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_8.Size = UDim2.new(0, 54, 0, 26)
G.Frame_8.Parent = G.Frame_7

G.UICorner_15 = Instance.new("UICorner")
G.UICorner_15.CornerRadius = UDim.new(0, 6)
G.UICorner_15.Parent = G.Frame_8

G.UIStroke_8 = Instance.new("UIStroke")
G.UIStroke_8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_8.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_8.Parent = G.Frame_8

G.TextBox_3 = Instance.new("TextBox")
G.TextBox_3.BackgroundTransparency = 1
G.TextBox_3.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_3.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_3.ZIndex = 8
G.TextBox_3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_3.Text = "15"
G.TextBox_3.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_3.TextSize = 11
G.TextBox_3.ClearTextOnFocus = false
G.TextBox_3.Parent = G.Frame_8

G.Frame_9 = Instance.new("Frame")
G.Frame_9.BackgroundTransparency = 1
G.Frame_9.BorderSizePixel = 0
G.Frame_9.LayoutOrder = 7
G.Frame_9.Size = UDim2.new(1, 0, 0, 38)
G.Frame_9.Parent = G.VyzeccPage_Speed

G.TextLabel_6 = Instance.new("TextLabel")
G.TextLabel_6.BackgroundTransparency = 1
G.TextLabel_6.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_6.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_6.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_6.Text = "Lagger Carry Speed"
G.TextLabel_6.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_6.TextSize = 11
G.TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_6.Parent = G.Frame_9

G.Frame_10 = Instance.new("Frame")
G.Frame_10.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_10.BorderSizePixel = 0
G.Frame_10.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_10.Size = UDim2.new(0, 54, 0, 26)
G.Frame_10.Parent = G.Frame_9

G.UICorner_16 = Instance.new("UICorner")
G.UICorner_16.CornerRadius = UDim.new(0, 6)
G.UICorner_16.Parent = G.Frame_10

G.UIStroke_9 = Instance.new("UIStroke")
G.UIStroke_9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_9.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_9.Parent = G.Frame_10

G.TextBox_4 = Instance.new("TextBox")
G.TextBox_4.BackgroundTransparency = 1
G.TextBox_4.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_4.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_4.ZIndex = 8
G.TextBox_4.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_4.Text = "10"
G.TextBox_4.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_4.TextSize = 11
G.TextBox_4.ClearTextOnFocus = false
G.TextBox_4.Parent = G.Frame_10

G.Frame_11 = Instance.new("Frame")
G.Frame_11.BackgroundTransparency = 1
G.Frame_11.BorderSizePixel = 0
G.Frame_11.LayoutOrder = 7
G.Frame_11.Size = UDim2.new(1, 0, 0, 2)
G.Frame_11.Parent = G.VyzeccPage_Speed

G.Frame_12 = Instance.new("Frame")
G.Frame_12.BackgroundTransparency = 1
G.Frame_12.BorderSizePixel = 0
G.Frame_12.LayoutOrder = 5
G.Frame_12.Size = UDim2.new(1, 0, 0, 34)
G.Frame_12.Parent = G.VyzeccPage_Speed

G.TextLabel_7 = Instance.new("TextLabel")
G.TextLabel_7.BackgroundTransparency = 1
G.TextLabel_7.Position = UDim2.new(0, 12, 0.5, -7)
G.TextLabel_7.Size = UDim2.new(0, 100, 0, 14)
G.TextLabel_7.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_7.Text = "Speed Mode"
G.TextLabel_7.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_7.TextSize = 11
G.TextLabel_7.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_7.Parent = G.Frame_12

G.TextButton_2 = Instance.new("TextButton")
G.TextButton_2.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_2.BorderSizePixel = 0
G.TextButton_2.Position = UDim2.new(1, -88, 0.5, -13)
G.TextButton_2.Size = UDim2.new(0, 80, 0, 26)
G.TextButton_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_2.Text = "Normal"
G.TextButton_2.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_2.TextSize = 11
G.TextButton_2.Parent = G.Frame_12

G.UICorner_17 = Instance.new("UICorner")
G.UICorner_17.CornerRadius = UDim.new(0, 4)
G.UICorner_17.Parent = G.TextButton_2

G.UIStroke_10 = Instance.new("UIStroke")
G.UIStroke_10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_10.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_10.Parent = G.TextButton_2

G.Frame_13 = Instance.new("Frame")
G.Frame_13.BackgroundTransparency = 1
G.Frame_13.BorderSizePixel = 0
G.Frame_13.LayoutOrder = 9
G.Frame_13.Size = UDim2.new(1, 0, 0, 2)
G.Frame_13.Parent = G.VyzeccPage_Speed

G.Frame_14 = Instance.new("Frame")
G.Frame_14.BackgroundTransparency = 1
G.Frame_14.BorderSizePixel = 0
G.Frame_14.LayoutOrder = 9
G.Frame_14.Size = UDim2.new(1, 0, 0, 34)
G.Frame_14.Parent = G.VyzeccPage_Speed

G.TextLabel_8 = Instance.new("TextLabel")
G.TextLabel_8.BackgroundTransparency = 1
G.TextLabel_8.Position = UDim2.new(0, 12, 0.5, -7)
G.TextLabel_8.Size = UDim2.new(0, 100, 0, 14)
G.TextLabel_8.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_8.Text = "Lagger Mode"
G.TextLabel_8.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_8.TextSize = 11
G.TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_8.Parent = G.Frame_14

G.TextButton_3 = Instance.new("TextButton")
G.TextButton_3.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_3.BorderSizePixel = 0
G.TextButton_3.Position = UDim2.new(1, -88, 0.5, -13)
G.TextButton_3.Size = UDim2.new(0, 80, 0, 26)
G.TextButton_3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_3.Text = "Lagger Off"
G.TextButton_3.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_3.TextSize = 11
G.TextButton_3.Parent = G.Frame_14

G.UICorner_18 = Instance.new("UICorner")
G.UICorner_18.CornerRadius = UDim.new(0, 4)
G.UICorner_18.Parent = G.TextButton_3

G.UIStroke_11 = Instance.new("UIStroke")
G.UIStroke_11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_11.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_11.Parent = G.TextButton_3

G.Frame_15 = Instance.new("Frame")
G.Frame_15.BackgroundTransparency = 1
G.Frame_15.BorderSizePixel = 0
G.Frame_15.LayoutOrder = 11
G.Frame_15.Size = UDim2.new(1, 0, 0, 2)
G.Frame_15.Parent = G.VyzeccPage_Speed

G.Frame_16 = Instance.new("Frame")
G.Frame_16.BackgroundTransparency = 1
G.Frame_16.BorderSizePixel = 0
G.Frame_16.ClipsDescendants = true
G.Frame_16.LayoutOrder = 26
G.Frame_16.Size = UDim2.new(1, 0, 0, 34)
G.Frame_16.Visible = false
G.Frame_16.Parent = G.VyzeccPage_Speed

G.TextLabel_9 = Instance.new("TextLabel")
G.TextLabel_9.BackgroundTransparency = 1
G.TextLabel_9.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_9.Size = UDim2.new(1, -148, 1, 0)
G.TextLabel_9.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_9.Text = "Jump Mode"
G.TextLabel_9.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_9.TextSize = 11
G.TextLabel_9.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_9.Parent = G.Frame_16

G.TextButton_4 = Instance.new("TextButton")
G.TextButton_4.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_4.BorderSizePixel = 0
G.TextButton_4.Position = UDim2.new(1, -88, 0.5, -13)
G.TextButton_4.Size = UDim2.new(0, 80, 0, 26)
G.TextButton_4.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_4.Text = "Tap"
G.TextButton_4.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_4.TextSize = 11
G.TextButton_4.Parent = G.Frame_16

G.UICorner_19 = Instance.new("UICorner")
G.UICorner_19.CornerRadius = UDim.new(0, 4)
G.UICorner_19.Parent = G.TextButton_4

G.UIStroke_12 = Instance.new("UIStroke")
G.UIStroke_12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_12.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_12.Parent = G.TextButton_4

G.Frame_17 = Instance.new("Frame")
G.Frame_17.BackgroundTransparency = 1
G.Frame_17.BorderSizePixel = 0
G.Frame_17.LayoutOrder = 13
G.Frame_17.Size = UDim2.new(1, 0, 0, 2)
G.Frame_17.Parent = G.VyzeccPage_Speed

G.Frame_18 = Instance.new("Frame")
G.Frame_18.BackgroundTransparency = 1
G.Frame_18.BorderSizePixel = 0
G.Frame_18.LayoutOrder = 4
G.Frame_18.Size = UDim2.new(1, 0, 0, 34)
G.Frame_18.Parent = G.VyzeccPage_Speed

G.TextLabel_10 = Instance.new("TextLabel")
G.TextLabel_10.BackgroundTransparency = 1
G.TextLabel_10.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_10.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_10.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_10.Text = "Speed Bind"
G.TextLabel_10.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_10.TextSize = 11
G.TextLabel_10.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_10.Parent = G.Frame_18

G.TextButton_5 = Instance.new("TextButton")
G.TextButton_5.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.TextButton_5.BorderSizePixel = 0
G.TextButton_5.Position = UDim2.new(1, -54, 0.5, -12)
G.TextButton_5.Size = UDim2.new(0, 44, 0, 24)
G.TextButton_5.ZIndex = 8
G.TextButton_5.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_5.Text = "…"
G.TextButton_5.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextButton_5.TextSize = 10
G.TextButton_5.Parent = G.Frame_18

G.UICorner_20 = Instance.new("UICorner")
G.UICorner_20.CornerRadius = UDim.new(0, 6)
G.UICorner_20.Parent = G.TextButton_5

G.UIStroke_13 = Instance.new("UIStroke")
G.UIStroke_13.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_13.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_13.Parent = G.TextButton_5

G.Frame_19 = Instance.new("Frame")
G.Frame_19.BackgroundTransparency = 1
G.Frame_19.BorderSizePixel = 0
G.Frame_19.LayoutOrder = 8
G.Frame_19.Size = UDim2.new(1, 0, 0, 34)
G.Frame_19.Parent = G.VyzeccPage_Speed

G.TextLabel_11 = Instance.new("TextLabel")
G.TextLabel_11.BackgroundTransparency = 1
G.TextLabel_11.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_11.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_11.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_11.Text = "Lagger Bind"
G.TextLabel_11.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_11.TextSize = 11
G.TextLabel_11.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_11.Parent = G.Frame_19

G.TextButton_6 = Instance.new("TextButton")
G.TextButton_6.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.TextButton_6.BorderSizePixel = 0
G.TextButton_6.Position = UDim2.new(1, -54, 0.5, -12)
G.TextButton_6.Size = UDim2.new(0, 44, 0, 24)
G.TextButton_6.ZIndex = 8
G.TextButton_6.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_6.Text = "…"
G.TextButton_6.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextButton_6.TextSize = 10
G.TextButton_6.Parent = G.Frame_19

G.UICorner_21 = Instance.new("UICorner")
G.UICorner_21.CornerRadius = UDim.new(0, 6)
G.UICorner_21.Parent = G.TextButton_6

G.UIStroke_14 = Instance.new("UIStroke")
G.UIStroke_14.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_14.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_14.Parent = G.TextButton_6

G.Frame_20 = Instance.new("Frame")
G.Frame_20.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_20.BackgroundTransparency = 1
G.Frame_20.BorderSizePixel = 0
G.Frame_20.LayoutOrder = 25
G.Frame_20.Size = UDim2.new(1, 0, 0, 40)
G.Frame_20.Parent = G.VyzeccPage_Speed

G.TextLabel_12 = Instance.new("TextLabel")
G.TextLabel_12.BackgroundTransparency = 1
G.TextLabel_12.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_12.Size = UDim2.new(1, -120, 1, 0)
G.TextLabel_12.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_12.Text = "Infinite Jump"
G.TextLabel_12.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_12.TextSize = 11
G.TextLabel_12.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_12.Size = UDim2.new(1, -150, 1, 0)
G.TextLabel_12.Parent = G.Frame_20

G.VyzeccTogglePill = Instance.new("Frame")
G.VyzeccTogglePill.Name = "VyzeccTogglePill"
G.VyzeccTogglePill.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill.BorderSizePixel = 0
G.VyzeccTogglePill.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill.ZIndex = 7
G.VyzeccTogglePill:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill.Parent = G.Frame_20

G.JumpModeBtn = Instance.new("TextButton")
G.JumpModeBtn.Name = "JumpModeBtn"
G.JumpModeBtn.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.JumpModeBtn.BorderSizePixel = 0
G.JumpModeBtn.Position = UDim2.new(1, -118, 0.5, -13)
G.JumpModeBtn.Size = UDim2.new(0, 56, 0, 26)
G.JumpModeBtn.ZIndex = 9
G.JumpModeBtn.AutoButtonColor = false
G.JumpModeBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.JumpModeBtn.Text = "Hold"
G.JumpModeBtn.TextColor3 = Color3.fromRGB(249, 240, 255)
G.JumpModeBtn.TextSize = 11
G.JumpModeBtn.Parent = G.Frame_20
Instance.new("UICorner", G.JumpModeBtn).CornerRadius = UDim.new(0, 6)
local jumpModeStroke = Instance.new("UIStroke")
jumpModeStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
jumpModeStroke.Color = Color3.fromRGB(42, 18, 70)
jumpModeStroke.Parent = G.JumpModeBtn

G.UICorner_22 = Instance.new("UICorner")
G.UICorner_22.CornerRadius = UDim.new(0, 9)
G.UICorner_22.Parent = G.VyzeccTogglePill

G.UIStroke_15 = Instance.new("UIStroke")
G.UIStroke_15.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_15.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_15.Parent = G.VyzeccTogglePill

G.VyzeccToggleDot = Instance.new("Frame")
G.VyzeccToggleDot.Name = "VyzeccToggleDot"
G.VyzeccToggleDot.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot.BorderSizePixel = 0
G.VyzeccToggleDot.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot.ZIndex = 8
G.VyzeccToggleDot.Parent = G.VyzeccTogglePill

G.UICorner_23 = Instance.new("UICorner")
G.UICorner_23.CornerRadius = UDim.new(0, 6)
G.UICorner_23.Parent = G.VyzeccToggleDot

G.TextButton_7 = Instance.new("TextButton")
G.TextButton_7.BackgroundTransparency = 1
G.TextButton_7.BorderSizePixel = 0
G.TextButton_7.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_7.ZIndex = 9
G.TextButton_7.Text = ""
G.TextButton_7.Parent = G.VyzeccTogglePill

G.SizeDropdown = Instance.new("TextButton")
G.SizeDropdown.Name = "SizeDropdown"
G.SizeDropdown.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.SizeDropdown.BorderSizePixel = 0
G.SizeDropdown.Position = UDim2.new(1, -106, 0.5, -11)
G.SizeDropdown.Size = UDim2.new(0, 34, 0, 22)
G.SizeDropdown.ZIndex = 9
G.SizeDropdown.Text = ""
G.SizeDropdown.Visible = false
G.SizeDropdown.Parent = G.Frame_20

G.UICorner_24 = Instance.new("UICorner")
G.UICorner_24.CornerRadius = UDim.new(0, 4)
G.UICorner_24.Parent = G.SizeDropdown

G.UIStroke_16 = Instance.new("UIStroke")
G.UIStroke_16.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_16.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_16.Parent = G.SizeDropdown

G.Arrow = Instance.new("TextLabel")
G.Arrow.Name = "Arrow"
G.Arrow.BackgroundTransparency = 1
G.Arrow.Size = UDim2.new(1, 0, 1, 0)
G.Arrow.ZIndex = 10
G.Arrow.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.Arrow.Text = "▼"
G.Arrow.TextColor3 = Color3.fromRGB(150, 100, 200)
G.Arrow.TextSize = 16
G.Arrow.Visible = false
G.Arrow.Parent = G.SizeDropdown

G.Frame_21 = Instance.new("Frame")
G.Frame_21.BackgroundTransparency = 1
G.Frame_21.BorderSizePixel = 0
G.Frame_21.LayoutOrder = 17
G.Frame_21.Size = UDim2.new(1, 0, 0, 28)
G.Frame_21.Parent = G.VyzeccPage_Speed

G.TextLabel_13 = Instance.new("TextLabel")
G.TextLabel_13.BackgroundTransparency = 1
G.TextLabel_13.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_13.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_13.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_13.Text = "MOVEMENT"
G.TextLabel_13.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_13.TextSize = 13
G.TextLabel_13.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_13.Parent = G.Frame_21

G.Frame_22 = Instance.new("Frame")
G.Frame_22.BackgroundTransparency = 1
G.Frame_22.BorderSizePixel = 0
G.Frame_22.LayoutOrder = 18
G.Frame_22.Size = UDim2.new(1, 0, 0, 2)
G.Frame_22.Parent = G.VyzeccPage_Speed

G.Frame_23 = Instance.new("Frame")
G.Frame_23.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_23.BackgroundTransparency = 1
G.Frame_23.BorderSizePixel = 0
G.Frame_23.LayoutOrder = 19
G.Frame_23.Size = UDim2.new(1, 0, 0, 40)
G.Frame_23.Parent = G.VyzeccPage_Speed

G.TextLabel_14 = Instance.new("TextLabel")
G.TextLabel_14.BackgroundTransparency = 1
G.TextLabel_14.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_14.Size = UDim2.new(1, -148, 1, 0)
G.TextLabel_14.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_14.Text = "Auto Carry Speed"
G.TextLabel_14.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_14.TextSize = 11
G.TextLabel_14.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_14.Parent = G.Frame_23

G.VyzeccTogglePill_2 = Instance.new("Frame")
G.VyzeccTogglePill_2.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_2.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_2.BorderSizePixel = 0
G.VyzeccTogglePill_2.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_2.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_2.ZIndex = 7
G.VyzeccTogglePill_2:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_2.Parent = G.Frame_23

G.UICorner_25 = Instance.new("UICorner")
G.UICorner_25.CornerRadius = UDim.new(0, 9)
G.UICorner_25.Parent = G.VyzeccTogglePill_2

G.UIStroke_17 = Instance.new("UIStroke")
G.UIStroke_17.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_17.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_17.Parent = G.VyzeccTogglePill_2

G.VyzeccToggleDot_2 = Instance.new("Frame")
G.VyzeccToggleDot_2.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_2.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_2.BorderSizePixel = 0
G.VyzeccToggleDot_2.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_2.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_2.ZIndex = 8
G.VyzeccToggleDot_2.Parent = G.VyzeccTogglePill_2

G.UICorner_26 = Instance.new("UICorner")
G.UICorner_26.CornerRadius = UDim.new(0, 6)
G.UICorner_26.Parent = G.VyzeccToggleDot_2

G.TextButton_8 = Instance.new("TextButton")
G.TextButton_8.BackgroundTransparency = 1
G.TextButton_8.BorderSizePixel = 0
G.TextButton_8.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_8.ZIndex = 9
G.TextButton_8.Text = ""
G.TextButton_8.Parent = G.VyzeccTogglePill_2

G.TextButton_9 = Instance.new("TextButton")
G.TextButton_9.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_9.BorderSizePixel = 0
G.TextButton_9.Position = UDim2.new(1, -128, 0.5, -12)
G.TextButton_9.Size = UDim2.new(0, 58, 0, 24)
G.TextButton_9.ZIndex = 8
G.TextButton_9.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_9.Text = "V1"
G.TextButton_9.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_9.TextSize = 10
G.TextButton_9.Parent = G.Frame_23

G.UICorner_27 = Instance.new("UICorner")
G.UICorner_27.CornerRadius = UDim.new(0, 4)
G.UICorner_27.Parent = G.TextButton_9

G.UIStroke_18 = Instance.new("UIStroke")
G.UIStroke_18.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_18.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_18.Parent = G.TextButton_9

G.Frame_24 = Instance.new("Frame")
G.Frame_24.BackgroundTransparency = 1
G.Frame_24.BorderSizePixel = 0
G.Frame_24.LayoutOrder = 20
G.Frame_24.Size = UDim2.new(1, 0, 0, 34)
G.Frame_24.Parent = G.VyzeccPage_Speed

G.TextLabel_15 = Instance.new("TextLabel")
G.TextLabel_15.BackgroundTransparency = 1
G.TextLabel_15.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_15.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_15.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_15.Text = "Auto Left"
G.TextLabel_15.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_15.TextSize = 11
G.TextLabel_15.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_15.Parent = G.Frame_24

G.TextButton_10 = Instance.new("TextButton")
G.TextButton_10.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.TextButton_10.BorderSizePixel = 0
G.TextButton_10.Position = UDim2.new(1, -54, 0.5, -12)
G.TextButton_10.Size = UDim2.new(0, 44, 0, 24)
G.TextButton_10.ZIndex = 8
G.TextButton_10.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_10.Text = "Z"
G.TextButton_10.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextButton_10.TextSize = 10
G.TextButton_10.Parent = G.Frame_24

G.UICorner_28 = Instance.new("UICorner")
G.UICorner_28.CornerRadius = UDim.new(0, 6)
G.UICorner_28.Parent = G.TextButton_10

G.UIStroke_19 = Instance.new("UIStroke")
G.UIStroke_19.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_19.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_19.Parent = G.TextButton_10

G.Frame_25 = Instance.new("Frame")
G.Frame_25.BackgroundTransparency = 1
G.Frame_25.BorderSizePixel = 0
G.Frame_25.LayoutOrder = 21
G.Frame_25.Size = UDim2.new(1, 0, 0, 34)
G.Frame_25.Parent = G.VyzeccPage_Speed

G.TextLabel_16 = Instance.new("TextLabel")
G.TextLabel_16.BackgroundTransparency = 1
G.TextLabel_16.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_16.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_16.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_16.Text = "Auto Right"
G.TextLabel_16.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_16.TextSize = 11
G.TextLabel_16.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_16.Parent = G.Frame_25

G.TextButton_11 = Instance.new("TextButton")
G.TextButton_11.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.TextButton_11.BorderSizePixel = 0
G.TextButton_11.Position = UDim2.new(1, -54, 0.5, -12)
G.TextButton_11.Size = UDim2.new(0, 44, 0, 24)
G.TextButton_11.ZIndex = 8
G.TextButton_11.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_11.Text = "C"
G.TextButton_11.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextButton_11.TextSize = 10
G.TextButton_11.Parent = G.Frame_25

G.UICorner_29 = Instance.new("UICorner")
G.UICorner_29.CornerRadius = UDim.new(0, 6)
G.UICorner_29.Parent = G.TextButton_11

G.UIStroke_20 = Instance.new("UIStroke")
G.UIStroke_20.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_20.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_20.Parent = G.TextButton_11

G.Frame_26 = Instance.new("Frame")
G.Frame_26.BackgroundTransparency = 1
G.Frame_26.BorderSizePixel = 0
G.Frame_26.LayoutOrder = 22
G.Frame_26.Size = UDim2.new(1, 0, 0, 2)
G.Frame_26.Parent = G.VyzeccPage_Speed

G.Frame_27 = Instance.new("Frame")
G.Frame_27.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_27.BackgroundTransparency = 1
G.Frame_27.BorderSizePixel = 0
G.Frame_27.LayoutOrder = 28
G.Frame_27.Size = UDim2.new(1, 0, 0, 40)
G.Frame_27.Parent = G.VyzeccPage_Speed

G.TextLabel_17 = Instance.new("TextLabel")
G.TextLabel_17.BackgroundTransparency = 1
G.TextLabel_17.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_17.Size = UDim2.new(1, -148, 1, 0)
G.TextLabel_17.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_17.Text = "Anti Ragdoll"
G.TextLabel_17.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_17.TextSize = 11
G.TextLabel_17.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_17.Parent = G.Frame_27

G.VyzeccTogglePill_3 = Instance.new("Frame")
G.VyzeccTogglePill_3.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_3.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_3.BorderSizePixel = 0
G.VyzeccTogglePill_3.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_3.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_3.ZIndex = 7
G.VyzeccTogglePill_3:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_3.Parent = G.Frame_27

G.UICorner_30 = Instance.new("UICorner")
G.UICorner_30.CornerRadius = UDim.new(0, 9)
G.UICorner_30.Parent = G.VyzeccTogglePill_3

G.UIStroke_21 = Instance.new("UIStroke")
G.UIStroke_21.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_21.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_21.Parent = G.VyzeccTogglePill_3

G.VyzeccToggleDot_3 = Instance.new("Frame")
G.VyzeccToggleDot_3.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_3.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_3.BorderSizePixel = 0
G.VyzeccToggleDot_3.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_3.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_3.ZIndex = 8
G.VyzeccToggleDot_3.Parent = G.VyzeccTogglePill_3

G.UICorner_31 = Instance.new("UICorner")
G.UICorner_31.CornerRadius = UDim.new(0, 6)
G.UICorner_31.Parent = G.VyzeccToggleDot_3

G.TextButton_12 = Instance.new("TextButton")
G.TextButton_12.BackgroundTransparency = 1
G.TextButton_12.BorderSizePixel = 0
G.TextButton_12.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_12.ZIndex = 9
G.TextButton_12.Text = ""
G.TextButton_12.Parent = G.VyzeccTogglePill_3

G.TextButton_13 = Instance.new("TextButton")
G.TextButton_13.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_13.BorderSizePixel = 0
G.TextButton_13.Position = UDim2.new(1, -128, 0.5, -12)
G.TextButton_13.Size = UDim2.new(0, 58, 0, 24)
G.TextButton_13.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_13.Text = "V1"
G.TextButton_13.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_13.TextSize = 10
G.TextButton_13.Visible = false
G.TextButton_13.Parent = G.Frame_27

G.UICorner_32 = Instance.new("UICorner")
G.UICorner_32.CornerRadius = UDim.new(0, 4)
G.UICorner_32.Parent = G.TextButton_13

G.UIStroke_22 = Instance.new("UIStroke")
G.UIStroke_22.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_22.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_22.Parent = G.TextButton_13

G.Frame_28 = Instance.new("Frame")
G.Frame_28.BackgroundTransparency = 1
G.Frame_28.BorderSizePixel = 0
G.Frame_28.LayoutOrder = 24
G.Frame_28.Size = UDim2.new(1, 0, 0, 34)
G.Frame_28.Parent = G.VyzeccPage_Speed

G.TextLabel_18 = Instance.new("TextLabel")
G.TextLabel_18.BackgroundTransparency = 1
G.TextLabel_18.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_18.Size = UDim2.new(1, -148, 1, 0)
G.TextLabel_18.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_18.Text = "Drop BR"
G.TextLabel_18.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_18.TextSize = 11
G.TextLabel_18.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_18.Parent = G.Frame_28

G.TextButton_14 = Instance.new("TextButton")
G.TextButton_14.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_14.BorderSizePixel = 0
G.TextButton_14.Position = UDim2.new(1, -130, 0.5, -12)
G.TextButton_14.Size = UDim2.new(0, 58, 0, 24)
G.TextButton_14.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_14.Text = "Jump"
G.TextButton_14.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_14.TextSize = 10
G.TextButton_14.Parent = G.Frame_28

G.UICorner_33 = Instance.new("UICorner")
G.UICorner_33.CornerRadius = UDim.new(0, 4)
G.UICorner_33.Parent = G.TextButton_14

G.UIStroke_23 = Instance.new("UIStroke")
G.UIStroke_23.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_23.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_23.Parent = G.TextButton_14

G.TextButton_15 = Instance.new("TextButton")
G.TextButton_15.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.TextButton_15.BorderSizePixel = 0
G.TextButton_15.Position = UDim2.new(1, -54, 0.5, -12)
G.TextButton_15.Size = UDim2.new(0, 44, 0, 24)
G.TextButton_15.ZIndex = 8
G.TextButton_15.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_15.Text = "…"
G.TextButton_15:SetAttribute("BindTypes","Keyboard / PlayStation / Xbox / Gamepad")
G.TextButton_15.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextButton_15.TextSize = 10
G.TextButton_15.Parent = G.Frame_28

G.UICorner_34 = Instance.new("UICorner")
G.UICorner_34.CornerRadius = UDim.new(0, 6)
G.UICorner_34.Parent = G.TextButton_15

G.UIStroke_24 = Instance.new("UIStroke")
G.UIStroke_24.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_24.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_24.Parent = G.TextButton_15

G.Frame_29 = Instance.new("Frame")
G.Frame_29.BackgroundTransparency = 1
G.Frame_29.BorderSizePixel = 0
G.Frame_29.LayoutOrder = 25
G.Frame_29.Size = UDim2.new(1, 0, 0, 2)
G.Frame_29.Parent = G.VyzeccPage_Speed

G.Frame_30 = Instance.new("Frame")
G.Frame_30.BackgroundTransparency = 1
G.Frame_30.BorderSizePixel = 0
G.Frame_30.LayoutOrder = 26
G.Frame_30.Size = UDim2.new(1, 0, 0, 2)
G.Frame_30.Parent = G.VyzeccPage_Speed

G.Frame_31 = Instance.new("Frame")
G.Frame_31.BackgroundTransparency = 1
G.Frame_31.BorderSizePixel = 0
G.Frame_31.ClipsDescendants = true
G.Frame_31.LayoutOrder = 27
G.Frame_31.Size = UDim2.new(1, 0, 0, 38)
G.Frame_31.Visible = false
G.Frame_31.Parent = G.VyzeccPage_Speed

G.TextLabel_19 = Instance.new("TextLabel")
G.TextLabel_19.BackgroundTransparency = 1
G.TextLabel_19.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_19.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_19.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_19.Text = "Jump Power"
G.TextLabel_19.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_19.TextSize = 11
G.TextLabel_19.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_19.Parent = G.Frame_31

G.Frame_32 = Instance.new("Frame")
G.Frame_32.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_32.BorderSizePixel = 0
G.Frame_32.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_32.Size = UDim2.new(0, 54, 0, 26)
G.Frame_32.Parent = G.Frame_31

G.UICorner_35 = Instance.new("UICorner")
G.UICorner_35.CornerRadius = UDim.new(0, 6)
G.UICorner_35.Parent = G.Frame_32

G.UIStroke_25 = Instance.new("UIStroke")
G.UIStroke_25.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_25.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_25.Parent = G.Frame_32

G.TextBox_5 = Instance.new("TextBox")
G.TextBox_5.BackgroundTransparency = 1
G.TextBox_5.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_5.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_5.ZIndex = 8
G.TextBox_5.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_5.Text = "55"
G.TextBox_5.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_5.TextSize = 11
G.TextBox_5.ClearTextOnFocus = false
G.TextBox_5.Parent = G.Frame_32

G.Frame_33 = Instance.new("Frame")
G.Frame_33.BackgroundTransparency = 1
G.Frame_33.BorderSizePixel = 0
G.Frame_33.LayoutOrder = 75
G.Frame_33.Size = UDim2.new(1, 0, 0, 2)
G.Frame_33.Parent = G.VyzeccPage_Speed

G.Frame_34 = Instance.new("Frame")
G.Frame_34.BackgroundTransparency = 1
G.Frame_34.BorderSizePixel = 0
G.Frame_34.LayoutOrder = 1008
G.Frame_34.Size = UDim2.new(1, 0, 0, 28)
G.Frame_34.Parent = G.VyzeccPage_Speed

G.TextLabel_20 = Instance.new("TextLabel")
G.TextLabel_20.BackgroundTransparency = 1
G.TextLabel_20.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_20.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_20.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_20.Text = "TELEPORT"
G.TextLabel_20.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_20.TextSize = 13
G.TextLabel_20.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_20.Parent = G.Frame_34

G.Frame_35 = Instance.new("Frame")
G.Frame_35.BackgroundTransparency = 1
G.Frame_35.BorderSizePixel = 0
G.Frame_35.LayoutOrder = 1009
G.Frame_35.Size = UDim2.new(1, 0, 0, 34)
G.Frame_35.Parent = G.VyzeccPage_Speed

G.TextLabel_21 = Instance.new("TextLabel")
G.TextLabel_21.BackgroundTransparency = 1
G.TextLabel_21.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_21.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_21.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_21.Text = "TP Down"
G.TextLabel_21.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_21.TextSize = 11
G.TextLabel_21.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_21.Parent = G.Frame_35

G.TextButton_16 = Instance.new("TextButton")
G.TextButton_16.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.TextButton_16.BorderSizePixel = 0
G.TextButton_16.Position = UDim2.new(1, -54, 0.5, -12)
G.TextButton_16.Size = UDim2.new(0, 44, 0, 24)
G.TextButton_16.ZIndex = 8
G.TextButton_16.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_16.Text = "…"
G.TextButton_16:SetAttribute("BindTypes","Keyboard / PlayStation / Xbox / Gamepad")
G.TextButton_16.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextButton_16.TextSize = 10
G.TextButton_16.Parent = G.Frame_35

G.UICorner_36 = Instance.new("UICorner")
G.UICorner_36.CornerRadius = UDim.new(0, 6)
G.UICorner_36.Parent = G.TextButton_16

G.UIStroke_26 = Instance.new("UIStroke")
G.UIStroke_26.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_26.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_26.Parent = G.TextButton_16

G.Frame_36 = Instance.new("Frame")
G.Frame_36.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_36.BackgroundTransparency = 1
G.Frame_36.BorderSizePixel = 0
G.Frame_36.LayoutOrder = 1010
G.Frame_36.Size = UDim2.new(1, 0, 0, 40)
G.Frame_36.Parent = G.VyzeccPage_Speed

G.TextLabel_22 = Instance.new("TextLabel")
G.TextLabel_22.BackgroundTransparency = 1
G.TextLabel_22.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_22.Size = UDim2.new(1, -120, 1, 0)
G.TextLabel_22.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_22.Text = "Auto Tp Down"
G.TextLabel_22.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_22.TextSize = 11
G.TextLabel_22.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_22.Parent = G.Frame_36

G.Frame_37 = Instance.new("Frame")
G.Frame_37.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.Frame_37.BorderSizePixel = 0
G.Frame_37.Position = UDim2.new(1, -108, 0.5, -10)
G.Frame_37.Size = UDim2.new(0, 40, 0, 20)
G.Frame_37.Parent = G.Frame_36

G.UICorner_37 = Instance.new("UICorner")
G.UICorner_37.CornerRadius = UDim.new(0, 2)
G.UICorner_37.Parent = G.Frame_37

G.TextBox_6 = Instance.new("TextBox")
G.TextBox_6.BackgroundTransparency = 1
G.TextBox_6.Position = UDim2.new(0, 2, 0, 0)
G.TextBox_6.Size = UDim2.new(1, -4, 1, 0)
G.TextBox_6.ZIndex = 8
G.TextBox_6.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_6.Text = "20"
G.TextBox_6.TextColor3 = Color3.fromRGB(229, 220, 235)
G.TextBox_6.TextSize = 10
G.TextBox_6.ClearTextOnFocus = false
G.TextBox_6.Parent = G.Frame_37

G.UIStroke_27 = Instance.new("UIStroke")
G.UIStroke_27.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_27.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_27.Parent = G.Frame_37

G.VyzeccTogglePill_4 = Instance.new("Frame")
G.VyzeccTogglePill_4.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_4.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_4.BorderSizePixel = 0
G.VyzeccTogglePill_4.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_4.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_4.ZIndex = 7
G.VyzeccTogglePill_4:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_4.Parent = G.Frame_36

G.UICorner_38 = Instance.new("UICorner")
G.UICorner_38.CornerRadius = UDim.new(0, 9)
G.UICorner_38.Parent = G.VyzeccTogglePill_4

G.UIStroke_28 = Instance.new("UIStroke")
G.UIStroke_28.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_28.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_28.Parent = G.VyzeccTogglePill_4

G.VyzeccToggleDot_4 = Instance.new("Frame")
G.VyzeccToggleDot_4.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_4.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_4.BorderSizePixel = 0
G.VyzeccToggleDot_4.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_4.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_4.ZIndex = 8
G.VyzeccToggleDot_4.Parent = G.VyzeccTogglePill_4

G.UICorner_39 = Instance.new("UICorner")
G.UICorner_39.CornerRadius = UDim.new(0, 6)
G.UICorner_39.Parent = G.VyzeccToggleDot_4

G.TextButton_17 = Instance.new("TextButton")
G.TextButton_17.BackgroundTransparency = 1
G.TextButton_17.BorderSizePixel = 0
G.TextButton_17.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_17.ZIndex = 9
G.TextButton_17.Text = ""
G.TextButton_17.Parent = G.VyzeccTogglePill_4

G.VyzeccPage_Movement = Instance.new("ScrollingFrame")
G.VyzeccPage_Movement.Name = "VyzeccPage_Movement"
G.VyzeccPage_Movement.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccPage_Movement.BackgroundTransparency = 1
G.VyzeccPage_Movement.BorderSizePixel = 0
G.VyzeccPage_Movement.Position = UDim2.new(0, 3, 0, 92)
G.VyzeccPage_Movement.Size = UDim2.new(1, -3, 1, -92)
G.VyzeccPage_Movement.Visible = false
G.VyzeccPage_Movement.ZIndex = 3
G.VyzeccPage_Movement.AutomaticCanvasSize = Enum.AutomaticSize.Y
G.VyzeccPage_Movement.CanvasSize = UDim2.new(0, 0, 0, 0)
G.VyzeccPage_Movement.ScrollBarImageColor3 = Color3.fromRGB(160, 80, 220)
G.VyzeccPage_Movement.ScrollBarImageTransparency = 0.5
G.VyzeccPage_Movement.ScrollBarThickness = 3
G.VyzeccPage_Movement.Parent = G.MainOuter

G.UIListLayout_3 = Instance.new("UIListLayout")
G.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
G.UIListLayout_3.Parent = G.VyzeccPage_Movement

G.UIPadding_2 = Instance.new("UIPadding")
G.UIPadding_2.PaddingBottom = UDim.new(0, 12)
G.UIPadding_2.PaddingLeft = UDim.new(0, 8)
G.UIPadding_2.PaddingRight = UDim.new(0, 8)
G.UIPadding_2.PaddingTop = UDim.new(0, 6)
G.UIPadding_2.Parent = G.VyzeccPage_Movement

G.VyzeccPage_Misc = Instance.new("ScrollingFrame")
G.VyzeccPage_Misc.Name = "VyzeccPage_Misc"
G.VyzeccPage_Misc.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccPage_Misc.BackgroundTransparency = 1
G.VyzeccPage_Misc.BorderSizePixel = 0
G.VyzeccPage_Misc.Position = UDim2.new(0, 3, 0, 92)
G.VyzeccPage_Misc.Size = UDim2.new(1, -3, 1, -92)
G.VyzeccPage_Misc.Visible = false
G.VyzeccPage_Misc.ZIndex = 3
G.VyzeccPage_Misc.AutomaticCanvasSize = Enum.AutomaticSize.Y
G.VyzeccPage_Misc.CanvasSize = UDim2.new(0, 0, 0, 0)
G.VyzeccPage_Misc.ScrollBarImageColor3 = Color3.fromRGB(160, 80, 220)
G.VyzeccPage_Misc.ScrollBarImageTransparency = 0.5
G.VyzeccPage_Misc.ScrollBarThickness = 3
G.VyzeccPage_Misc.Parent = G.MainOuter

G.UIListLayout_4 = Instance.new("UIListLayout")
G.UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
G.UIListLayout_4.Parent = G.VyzeccPage_Misc

G.UIPadding_3 = Instance.new("UIPadding")
G.UIPadding_3.PaddingBottom = UDim.new(0, 12)
G.UIPadding_3.PaddingLeft = UDim.new(0, 8)
G.UIPadding_3.PaddingRight = UDim.new(0, 8)
G.UIPadding_3.PaddingTop = UDim.new(0, 6)
G.UIPadding_3.Parent = G.VyzeccPage_Misc

G.Frame_38 = Instance.new("Frame")
G.Frame_38.BackgroundTransparency = 1
G.Frame_38.BorderSizePixel = 0
G.Frame_38.LayoutOrder = 19
G.Frame_38.Visible = true
G.Frame_38.Size = UDim2.new(1, 0, 0, 28)
G.Frame_38.Parent = G.VyzeccPage_Misc

G.TextLabel_23 = Instance.new("TextLabel")
G.TextLabel_23.BackgroundTransparency = 1
G.TextLabel_23.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_23.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_23.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_23.Text = "ANIMATIONS"
G.TextLabel_23.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_23.TextSize = 13
G.TextLabel_23.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_23.Parent = G.Frame_38

G.Frame_39 = Instance.new("Frame")
G.Frame_39.BackgroundTransparency = 1
G.Frame_39.BorderSizePixel = 0
G.Frame_39.LayoutOrder = 28
G.Frame_39.Size = UDim2.new(1, 0, 0, 4)
G.Frame_39.Parent = G.VyzeccPage_Misc

G.Frame_40 = Instance.new("Frame")
G.Frame_40.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_40.BackgroundTransparency = 1
G.Frame_40.BorderSizePixel = 0
G.Frame_40.LayoutOrder = 23
G.Frame_40.Size = UDim2.new(1, 0, 0, 40)
G.Frame_40.Parent = G.VyzeccPage_Misc

G.TextLabel_24 = Instance.new("TextLabel")
G.TextLabel_24.BackgroundTransparency = 1
G.TextLabel_24.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_24.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_24.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_24.Text = "Unwalk"
G.TextLabel_24.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_24.TextSize = 11
G.TextLabel_24.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_24.Parent = G.Frame_40

G.VyzeccTogglePill_5 = Instance.new("Frame")
G.VyzeccTogglePill_5.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_5.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_5.BorderSizePixel = 0
G.VyzeccTogglePill_5.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_5.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_5.ZIndex = 7
G.VyzeccTogglePill_5:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_5.Parent = G.Frame_40

G.UICorner_40 = Instance.new("UICorner")
G.UICorner_40.CornerRadius = UDim.new(0, 9)
G.UICorner_40.Parent = G.VyzeccTogglePill_5

G.UIStroke_29 = Instance.new("UIStroke")
G.UIStroke_29.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_29.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_29.Parent = G.VyzeccTogglePill_5

G.VyzeccToggleDot_5 = Instance.new("Frame")
G.VyzeccToggleDot_5.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_5.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_5.BorderSizePixel = 0
G.VyzeccToggleDot_5.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_5.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_5.ZIndex = 8
G.VyzeccToggleDot_5.Parent = G.VyzeccTogglePill_5

G.UICorner_41 = Instance.new("UICorner")
G.UICorner_41.CornerRadius = UDim.new(0, 6)
G.UICorner_41.Parent = G.VyzeccToggleDot_5

G.TextButton_18 = Instance.new("TextButton")
G.TextButton_18.BackgroundTransparency = 1
G.TextButton_18.BorderSizePixel = 0
G.TextButton_18.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_18.ZIndex = 9
G.TextButton_18.Text = ""
G.TextButton_18.Parent = G.VyzeccTogglePill_5

G.Frame_41 = Instance.new("Frame")
G.Frame_41.BackgroundTransparency = 1
G.Frame_41.BorderSizePixel = 0
G.Frame_41.LayoutOrder = 30
G.Frame_41.Size = UDim2.new(1, 0, 0, 6)
G.Frame_41.Parent = G.VyzeccPage_Misc

G.Frame_42 = Instance.new("Frame")
G.Frame_42.BackgroundTransparency = 1
G.Frame_42.BorderSizePixel = 0
G.Frame_42.LayoutOrder = 32
G.Frame_42.Size = UDim2.new(1, 0, 0, 4)
G.Frame_42.Parent = G.VyzeccPage_Misc

G.Frame_43 = Instance.new("Frame")
G.Frame_43.BackgroundTransparency = 1
G.Frame_43.BorderSizePixel = 0
G.Frame_43.LayoutOrder = 50
G.Frame_43.Size = UDim2.new(1, 0, 0, 4)
G.Frame_43.Parent = G.VyzeccPage_Misc

G.Frame_44 = Instance.new("Frame")
G.Frame_44.BackgroundTransparency = 1
G.Frame_44.BorderSizePixel = 0
G.Frame_44.LayoutOrder = 34
G.Frame_44.Size = UDim2.new(1, 0, 0, 4)
G.Frame_44.Parent = G.VyzeccPage_Misc

G.Frame_45 = Instance.new("Frame")
G.Frame_45.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_45.BackgroundTransparency = 1
G.Frame_45.BorderSizePixel = 0
G.Frame_45.LayoutOrder = 6
G.Frame_45.Size = UDim2.new(1, 0, 0, 40)
G.Frame_45.Parent = G.VyzeccPage_Misc

G.TextLabel_25 = Instance.new("TextLabel")
G.TextLabel_25.BackgroundTransparency = 1
G.TextLabel_25.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_25.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_25.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_25.Text = "Ragdoll Timer"
G.TextLabel_25.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_25.TextSize = 11
G.TextLabel_25.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_25.Parent = G.Frame_45

G.VyzeccTogglePill_6 = Instance.new("Frame")
G.VyzeccTogglePill_6.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_6.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_6.BorderSizePixel = 0
G.VyzeccTogglePill_6.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_6.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_6.ZIndex = 7
G.VyzeccTogglePill_6:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_6.Parent = G.Frame_45

G.UICorner_42 = Instance.new("UICorner")
G.UICorner_42.CornerRadius = UDim.new(0, 9)
G.UICorner_42.Parent = G.VyzeccTogglePill_6

G.UIStroke_30 = Instance.new("UIStroke")
G.UIStroke_30.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_30.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_30.Parent = G.VyzeccTogglePill_6

G.VyzeccToggleDot_6 = Instance.new("Frame")
G.VyzeccToggleDot_6.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_6.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_6.BorderSizePixel = 0
G.VyzeccToggleDot_6.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_6.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_6.ZIndex = 8
G.VyzeccToggleDot_6.Parent = G.VyzeccTogglePill_6

G.UICorner_43 = Instance.new("UICorner")
G.UICorner_43.CornerRadius = UDim.new(0, 6)
G.UICorner_43.Parent = G.VyzeccToggleDot_6

G.TextButton_19 = Instance.new("TextButton")
G.TextButton_19.BackgroundTransparency = 1
G.TextButton_19.BorderSizePixel = 0
G.TextButton_19.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_19.ZIndex = 9
G.TextButton_19.Text = ""
G.TextButton_19.Parent = G.VyzeccTogglePill_6

G.Frame_46 = Instance.new("Frame")
G.Frame_46.BackgroundTransparency = 1
G.Frame_46.BorderSizePixel = 0
G.Frame_46.LayoutOrder = 45
G.Frame_46.Size = UDim2.new(1, 0, 0, 4)
G.Frame_46.Parent = G.VyzeccPage_Misc

G.Frame_47 = Instance.new("Frame")
G.Frame_47.BackgroundTransparency = 1
G.Frame_47.BorderSizePixel = 0
G.Frame_47.LayoutOrder = 37
G.Frame_47.Size = UDim2.new(1, 0, 0, 6)
G.Frame_47.Parent = G.VyzeccPage_Misc

G.Frame_48 = Instance.new("Frame")
G.Frame_48.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_48.BackgroundTransparency = 1
G.Frame_48.BorderSizePixel = 0
G.Frame_48.LayoutOrder = 8
G.Frame_48.Size = UDim2.new(1, 0, 0, 40)
G.Frame_48.Parent = G.VyzeccPage_Misc

G.TextLabel_26 = Instance.new("TextLabel")
G.TextLabel_26.BackgroundTransparency = 1
G.TextLabel_26.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_26.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_26.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_26.Text = "Kick Warning"
G.TextLabel_26.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_26.TextSize = 11
G.TextLabel_26.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_26.Parent = G.Frame_48

G.VyzeccTogglePill_7 = Instance.new("Frame")
G.VyzeccTogglePill_7.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_7.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_7.BorderSizePixel = 0
G.VyzeccTogglePill_7.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_7.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_7.ZIndex = 7
G.VyzeccTogglePill_7:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_7.Parent = G.Frame_48

G.UICorner_44 = Instance.new("UICorner")
G.UICorner_44.CornerRadius = UDim.new(0, 9)
G.UICorner_44.Parent = G.VyzeccTogglePill_7

G.UIStroke_31 = Instance.new("UIStroke")
G.UIStroke_31.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_31.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_31.Parent = G.VyzeccTogglePill_7

G.VyzeccToggleDot_7 = Instance.new("Frame")
G.VyzeccToggleDot_7.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_7.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_7.BorderSizePixel = 0
G.VyzeccToggleDot_7.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_7.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_7.ZIndex = 8
G.VyzeccToggleDot_7.Parent = G.VyzeccTogglePill_7

G.UICorner_45 = Instance.new("UICorner")
G.UICorner_45.CornerRadius = UDim.new(0, 6)
G.UICorner_45.Parent = G.VyzeccToggleDot_7

G.TextButton_20 = Instance.new("TextButton")
G.TextButton_20.BackgroundTransparency = 1
G.TextButton_20.BorderSizePixel = 0
G.TextButton_20.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_20.ZIndex = 9
G.TextButton_20.Text = ""
G.TextButton_20.Parent = G.VyzeccTogglePill_7

G.Frame_49 = Instance.new("Frame")
G.Frame_49.BackgroundTransparency = 1
G.Frame_49.BorderSizePixel = 0
G.Frame_49.LayoutOrder = 39
G.Frame_49.Size = UDim2.new(1, 0, 0, 4)
G.Frame_49.Parent = G.VyzeccPage_Misc

G.Frame_50 = Instance.new("Frame")
G.Frame_50.BackgroundTransparency = 1
G.Frame_50.BorderSizePixel = 0
G.Frame_50.LayoutOrder = 48
G.Frame_50.Size = UDim2.new(1, 0, 0, 4)
G.Frame_50.Parent = G.VyzeccPage_Misc

G.Frame_51 = Instance.new("Frame")
G.Frame_51.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_51.BackgroundTransparency = 1
G.Frame_51.BorderSizePixel = 0
G.Frame_51.LayoutOrder = 7
G.Frame_51.Size = UDim2.new(1, 0, 0, 40)
G.Frame_51.Parent = G.VyzeccPage_Misc

G.TextLabel_27 = Instance.new("TextLabel")
G.TextLabel_27.BackgroundTransparency = 1
G.TextLabel_27.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_27.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_27.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_27.Text = "Enemy Ragdoll Timer"
G.TextLabel_27.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_27.TextSize = 11
G.TextLabel_27.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_27.Parent = G.Frame_51

G.VyzeccTogglePill_8 = Instance.new("Frame")
G.VyzeccTogglePill_8.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_8.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_8.BorderSizePixel = 0
G.VyzeccTogglePill_8.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_8.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_8.ZIndex = 7
G.VyzeccTogglePill_8:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_8.Parent = G.Frame_51

G.UICorner_46 = Instance.new("UICorner")
G.UICorner_46.CornerRadius = UDim.new(0, 9)
G.UICorner_46.Parent = G.VyzeccTogglePill_8

G.UIStroke_32 = Instance.new("UIStroke")
G.UIStroke_32.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_32.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_32.Parent = G.VyzeccTogglePill_8

G.VyzeccToggleDot_8 = Instance.new("Frame")
G.VyzeccToggleDot_8.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_8.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_8.BorderSizePixel = 0
G.VyzeccToggleDot_8.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_8.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_8.ZIndex = 8
G.VyzeccToggleDot_8.Parent = G.VyzeccTogglePill_8

G.UICorner_47 = Instance.new("UICorner")
G.UICorner_47.CornerRadius = UDim.new(0, 6)
G.UICorner_47.Parent = G.VyzeccToggleDot_8

G.TextButton_21 = Instance.new("TextButton")
G.TextButton_21.BackgroundTransparency = 1
G.TextButton_21.BorderSizePixel = 0
G.TextButton_21.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_21.ZIndex = 9
G.TextButton_21.Text = ""
G.TextButton_21.Parent = G.VyzeccTogglePill_8

G.Frame_52 = Instance.new("Frame")
G.Frame_52.BackgroundTransparency = 1
G.Frame_52.BorderSizePixel = 0
G.Frame_52.LayoutOrder = 42
G.Frame_52.Size = UDim2.new(1, 0, 0, 4)
G.Frame_52.Parent = G.VyzeccPage_Misc

G.Frame_53 = Instance.new("Frame")
G.Frame_53.BackgroundTransparency = 1
G.Frame_53.BorderSizePixel = 0
G.Frame_53.LayoutOrder = 3
G.Frame_53.Size = UDim2.new(1, 0, 0, 28)
G.Frame_53.Parent = G.VyzeccPage_Misc

G.TextLabel_28 = Instance.new("TextLabel")
G.TextLabel_28.BackgroundTransparency = 1
G.TextLabel_28.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_28.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_28.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_28.Text = "HELPERS"
G.TextLabel_28.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_28.TextSize = 13
G.TextLabel_28.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_28.Parent = G.Frame_53

G.Frame_54 = Instance.new("Frame")
G.Frame_54.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_54.BackgroundTransparency = 1
G.Frame_54.BorderSizePixel = 0
G.Frame_54.LayoutOrder = 4
G.Frame_54.Size = UDim2.new(1, 0, 0, 40)
G.Frame_54.Parent = G.VyzeccPage_Misc

G.TextLabel_29 = Instance.new("TextLabel")
G.TextLabel_29.BackgroundTransparency = 1
G.TextLabel_29.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_29.Size = UDim2.new(1, -120, 1, 0)
G.TextLabel_29.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_29.Text = "Body Lock"
G.TextLabel_29.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_29.TextSize = 11
G.TextLabel_29.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_29.Parent = G.Frame_54

G.Frame_55 = Instance.new("Frame")
G.Frame_55.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.Frame_55.BorderSizePixel = 0
G.Frame_55.Position = UDim2.new(1, -108, 0.5, -10)
G.Frame_55.Size = UDim2.new(0, 40, 0, 20)
G.Frame_55.Parent = G.Frame_54

G.UICorner_48 = Instance.new("UICorner")
G.UICorner_48.CornerRadius = UDim.new(0, 2)
G.UICorner_48.Parent = G.Frame_55

G.TextBox_7 = Instance.new("TextBox")
G.TextBox_7.BackgroundTransparency = 1
G.TextBox_7.Position = UDim2.new(0, 2, 0, 0)
G.TextBox_7.Size = UDim2.new(1, -4, 1, 0)
G.TextBox_7.ZIndex = 8
G.TextBox_7.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_7.Text = "20"
G.TextBox_7.TextColor3 = Color3.fromRGB(229, 220, 235)
G.TextBox_7.TextSize = 10
G.TextBox_7.ClearTextOnFocus = false
G.TextBox_7.Parent = G.Frame_55

G.UIStroke_33 = Instance.new("UIStroke")
G.UIStroke_33.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_33.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_33.Parent = G.Frame_55

G.VyzeccTogglePill_9 = Instance.new("Frame")
G.VyzeccTogglePill_9.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_9.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_9.BorderSizePixel = 0
G.VyzeccTogglePill_9.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_9.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_9.ZIndex = 7
G.VyzeccTogglePill_9:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_9.Parent = G.Frame_54

G.UICorner_49 = Instance.new("UICorner")
G.UICorner_49.CornerRadius = UDim.new(0, 9)
G.UICorner_49.Parent = G.VyzeccTogglePill_9

G.UIStroke_34 = Instance.new("UIStroke")
G.UIStroke_34.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_34.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_34.Parent = G.VyzeccTogglePill_9

G.VyzeccToggleDot_9 = Instance.new("Frame")
G.VyzeccToggleDot_9.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_9.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_9.BorderSizePixel = 0
G.VyzeccToggleDot_9.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_9.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_9.ZIndex = 8
G.VyzeccToggleDot_9.Parent = G.VyzeccTogglePill_9

G.UICorner_50 = Instance.new("UICorner")
G.UICorner_50.CornerRadius = UDim.new(0, 6)
G.UICorner_50.Parent = G.VyzeccToggleDot_9

G.TextButton_22 = Instance.new("TextButton")
G.TextButton_22.BackgroundTransparency = 1
G.TextButton_22.BorderSizePixel = 0
G.TextButton_22.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_22.ZIndex = 9
G.TextButton_22.Text = ""
G.TextButton_22.Parent = G.VyzeccTogglePill_9

G.Frame_56 = Instance.new("Frame")
G.Frame_56.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_56.BackgroundTransparency = 1
G.Frame_56.BorderSizePixel = 0
G.Frame_56.LayoutOrder = 20
G.Frame_56.Size = UDim2.new(1, 0, 0, 40)
G.Frame_56.Visible = false
G.Frame_56.Parent = G.VyzeccPage_Misc

G.TextLabel_30 = Instance.new("TextLabel")
G.TextLabel_30.BackgroundTransparency = 1
G.TextLabel_30.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_30.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_30.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_30.Text = "Slum's Anim Pack"
G.TextLabel_30.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_30.TextSize = 11
G.TextLabel_30.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_30.Parent = G.Frame_56

G.VyzeccTogglePill_10 = Instance.new("Frame")
G.VyzeccTogglePill_10.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_10.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_10.BorderSizePixel = 0
G.VyzeccTogglePill_10.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_10.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_10.ZIndex = 7
G.VyzeccTogglePill_10:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_10.Parent = G.Frame_56

G.UICorner_51 = Instance.new("UICorner")
G.UICorner_51.CornerRadius = UDim.new(0, 9)
G.UICorner_51.Parent = G.VyzeccTogglePill_10

G.UIStroke_35 = Instance.new("UIStroke")
G.UIStroke_35.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_35.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_35.Parent = G.VyzeccTogglePill_10

G.VyzeccToggleDot_10 = Instance.new("Frame")
G.VyzeccToggleDot_10.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_10.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_10.BorderSizePixel = 0
G.VyzeccToggleDot_10.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_10.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_10.ZIndex = 8
G.VyzeccToggleDot_10.Parent = G.VyzeccTogglePill_10

G.UICorner_52 = Instance.new("UICorner")
G.UICorner_52.CornerRadius = UDim.new(0, 6)
G.UICorner_52.Parent = G.VyzeccToggleDot_10

G.TextButton_23 = Instance.new("TextButton")
G.TextButton_23.BackgroundTransparency = 1
G.TextButton_23.BorderSizePixel = 0
G.TextButton_23.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_23.ZIndex = 9
G.TextButton_23.Text = ""
G.TextButton_23.Parent = G.VyzeccTogglePill_10

G.Frame_57 = Instance.new("Frame")
G.Frame_57.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_57.BackgroundTransparency = 1
G.Frame_57.BorderSizePixel = 0
G.Frame_57.LayoutOrder = 21
G.Frame_57.Size = UDim2.new(1, 0, 0, 40)
G.Frame_57.Visible = false
G.Frame_57.Parent = G.VyzeccPage_Misc

G.TextLabel_31 = Instance.new("TextLabel")
G.TextLabel_31.BackgroundTransparency = 1
G.TextLabel_31.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_31.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_31.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_31.Text = "Instinct's Anim Pack"
G.TextLabel_31.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_31.TextSize = 11
G.TextLabel_31.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_31.Parent = G.Frame_57

G.VyzeccTogglePill_11 = Instance.new("Frame")
G.VyzeccTogglePill_11.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_11.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_11.BorderSizePixel = 0
G.VyzeccTogglePill_11.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_11.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_11.ZIndex = 7
G.VyzeccTogglePill_11:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_11.Parent = G.Frame_57

G.UICorner_53 = Instance.new("UICorner")
G.UICorner_53.CornerRadius = UDim.new(0, 9)
G.UICorner_53.Parent = G.VyzeccTogglePill_11

G.UIStroke_36 = Instance.new("UIStroke")
G.UIStroke_36.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_36.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_36.Parent = G.VyzeccTogglePill_11

G.VyzeccToggleDot_11 = Instance.new("Frame")
G.VyzeccToggleDot_11.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_11.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_11.BorderSizePixel = 0
G.VyzeccToggleDot_11.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_11.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_11.ZIndex = 8
G.VyzeccToggleDot_11.Parent = G.VyzeccTogglePill_11

G.UICorner_54 = Instance.new("UICorner")
G.UICorner_54.CornerRadius = UDim.new(0, 6)
G.UICorner_54.Parent = G.VyzeccToggleDot_11

G.TextButton_24 = Instance.new("TextButton")
G.TextButton_24.BackgroundTransparency = 1
G.TextButton_24.BorderSizePixel = 0
G.TextButton_24.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_24.ZIndex = 9
G.TextButton_24.Text = ""
G.TextButton_24.Parent = G.VyzeccTogglePill_11

G.Frame_58 = Instance.new("Frame")
G.Frame_58.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_58.BackgroundTransparency = 1
G.Frame_58.BorderSizePixel = 0
G.Frame_58.LayoutOrder = 22
G.Frame_58.Size = UDim2.new(1, 0, 0, 40)
G.Frame_58.Visible = false
G.Frame_58.Parent = G.VyzeccPage_Misc

G.TextLabel_32 = Instance.new("TextLabel")
G.TextLabel_32.BackgroundTransparency = 1
G.TextLabel_32.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_32.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_32.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_32.Text = "R6 Anim Pack"
G.TextLabel_32.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_32.TextSize = 11
G.TextLabel_32.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_32.Parent = G.Frame_58

G.VyzeccTogglePill_12 = Instance.new("Frame")
G.VyzeccTogglePill_12.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_12.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_12.BorderSizePixel = 0
G.VyzeccTogglePill_12.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_12.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_12.ZIndex = 7
G.VyzeccTogglePill_12:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_12.Parent = G.Frame_58

G.UICorner_55 = Instance.new("UICorner")
G.UICorner_55.CornerRadius = UDim.new(0, 9)
G.UICorner_55.Parent = G.VyzeccTogglePill_12

G.UIStroke_37 = Instance.new("UIStroke")
G.UIStroke_37.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_37.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_37.Parent = G.VyzeccTogglePill_12

G.VyzeccToggleDot_12 = Instance.new("Frame")
G.VyzeccToggleDot_12.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_12.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_12.BorderSizePixel = 0
G.VyzeccToggleDot_12.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_12.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_12.ZIndex = 8
G.VyzeccToggleDot_12.Parent = G.VyzeccTogglePill_12

G.UICorner_56 = Instance.new("UICorner")
G.UICorner_56.CornerRadius = UDim.new(0, 6)
G.UICorner_56.Parent = G.VyzeccToggleDot_12

G.TextButton_25 = Instance.new("TextButton")
G.TextButton_25.BackgroundTransparency = 1
G.TextButton_25.BorderSizePixel = 0
G.TextButton_25.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_25.ZIndex = 9
G.TextButton_25.Text = ""
G.TextButton_25.Parent = G.VyzeccTogglePill_12

G.VyzeccPage_Visuals = Instance.new("ScrollingFrame")
G.VyzeccPage_Visuals.Name = "VyzeccPage_Visuals"
G.VyzeccPage_Visuals.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccPage_Visuals.BackgroundTransparency = 1
G.VyzeccPage_Visuals.BorderSizePixel = 0
G.VyzeccPage_Visuals.Position = UDim2.new(0, 3, 0, 92)
G.VyzeccPage_Visuals.Size = UDim2.new(1, -3, 1, -92)
G.VyzeccPage_Visuals.Visible = false
G.VyzeccPage_Visuals.ZIndex = 3
G.VyzeccPage_Visuals.AutomaticCanvasSize = Enum.AutomaticSize.Y
G.VyzeccPage_Visuals.CanvasSize = UDim2.new(0, 0, 0, 0)
G.VyzeccPage_Visuals.ScrollBarImageColor3 = Color3.fromRGB(160, 80, 220)
G.VyzeccPage_Visuals.ScrollBarImageTransparency = 0.5
G.VyzeccPage_Visuals.ScrollBarThickness = 3
G.VyzeccPage_Visuals.Parent = G.MainOuter

G.UIListLayout_5 = Instance.new("UIListLayout")
G.UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
G.UIListLayout_5.Parent = G.VyzeccPage_Visuals

G.UIPadding_4 = Instance.new("UIPadding")
G.UIPadding_4.PaddingBottom = UDim.new(0, 12)
G.UIPadding_4.PaddingLeft = UDim.new(0, 8)
G.UIPadding_4.PaddingRight = UDim.new(0, 8)
G.UIPadding_4.PaddingTop = UDim.new(0, 6)
G.UIPadding_4.Parent = G.VyzeccPage_Visuals

G.Frame_59 = Instance.new("Frame")
G.Frame_59.BackgroundTransparency = 1
G.Frame_59.BorderSizePixel = 0
G.Frame_59.LayoutOrder = 1
G.Frame_59.Size = UDim2.new(1, 0, 0, 28)
G.Frame_59.Parent = G.VyzeccPage_Visuals

G.TextLabel_33 = Instance.new("TextLabel")
G.TextLabel_33.BackgroundTransparency = 1
G.TextLabel_33.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_33.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_33.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_33.Text = "PERFORMANCE"
G.TextLabel_33.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_33.TextSize = 13
G.TextLabel_33.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_33.Parent = G.Frame_59

G.Frame_60 = Instance.new("Frame")
G.Frame_60.BackgroundTransparency = 1
G.Frame_60.BorderSizePixel = 0
G.Frame_60.LayoutOrder = 52
G.Frame_60.Size = UDim2.new(1, 0, 0, 0)
G.Frame_60.Parent = G.VyzeccPage_Visuals

G.Frame_61 = Instance.new("Frame")
G.Frame_61.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_61.BackgroundTransparency = 1
G.Frame_61.BorderSizePixel = 0
G.Frame_61.LayoutOrder = 2
G.Frame_61.Size = UDim2.new(1, 0, 0, 40)
G.Frame_61.Parent = G.VyzeccPage_Visuals

G.TextLabel_34 = Instance.new("TextLabel")
G.TextLabel_34.BackgroundTransparency = 1
G.TextLabel_34.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_34.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_34.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_34.Text = "Anti Lag"
G.TextLabel_34.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_34.TextSize = 11
G.TextLabel_34.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_34.Parent = G.Frame_61

G.VyzeccTogglePill_13 = Instance.new("Frame")
G.VyzeccTogglePill_13.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_13.BackgroundColor3 = Color3.fromRGB(125, 24, 195)
G.VyzeccTogglePill_13.BorderSizePixel = 0
G.VyzeccTogglePill_13.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_13.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_13.ZIndex = 7
G.VyzeccTogglePill_13:SetAttribute("VyzeccStyledOn", false)
G.VyzeccTogglePill_13:SetAttribute("VyzeccStyledTheme", "default")
G.VyzeccTogglePill_13:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_13.Parent = G.Frame_61

G.UICorner_57 = Instance.new("UICorner")
G.UICorner_57.CornerRadius = UDim.new(0, 9)
G.UICorner_57.Parent = G.VyzeccTogglePill_13

G.UIStroke_38 = Instance.new("UIStroke")
G.UIStroke_38.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_38.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_38.Parent = G.VyzeccTogglePill_13

G.VyzeccToggleDot_13 = Instance.new("Frame")
G.VyzeccToggleDot_13.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_13.BackgroundColor3 = Color3.fromRGB(249, 240, 255)
G.VyzeccToggleDot_13.BorderSizePixel = 0
G.VyzeccToggleDot_13.Position = UDim2.new(1, -15, 0.5, -6)
G.VyzeccToggleDot_13.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_13.ZIndex = 8
G.VyzeccToggleDot_13.Parent = G.VyzeccTogglePill_13

G.UICorner_58 = Instance.new("UICorner")
G.UICorner_58.CornerRadius = UDim.new(0, 6)
G.UICorner_58.Parent = G.VyzeccToggleDot_13

G.TextButton_26 = Instance.new("TextButton")
G.TextButton_26.BackgroundTransparency = 1
G.TextButton_26.BorderSizePixel = 0
G.TextButton_26.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_26.ZIndex = 9
G.TextButton_26.Text = ""
G.TextButton_26.Parent = G.VyzeccTogglePill_13

G.Frame_62 = Instance.new("Frame")
G.Frame_62.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_62.BackgroundTransparency = 1
G.Frame_62.BorderSizePixel = 0
G.Frame_62.LayoutOrder = 3
G.Frame_62.Size = UDim2.new(1, 0, 0, 40)
G.Frame_62.Parent = G.VyzeccPage_Visuals

G.TextLabel_35 = Instance.new("TextLabel")
G.TextLabel_35.BackgroundTransparency = 1
G.TextLabel_35.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_35.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_35.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_35.Text = "FPS Boost"
G.TextLabel_35.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_35.TextSize = 11
G.TextLabel_35.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_35.Parent = G.Frame_62

G.VyzeccTogglePill_14 = Instance.new("Frame")
G.VyzeccTogglePill_14.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_14.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_14.BorderSizePixel = 0
G.VyzeccTogglePill_14.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_14.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_14.ZIndex = 7
G.VyzeccTogglePill_14:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_14.Parent = G.Frame_62

G.UICorner_59 = Instance.new("UICorner")
G.UICorner_59.CornerRadius = UDim.new(0, 9)
G.UICorner_59.Parent = G.VyzeccTogglePill_14

G.UIStroke_39 = Instance.new("UIStroke")
G.UIStroke_39.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_39.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_39.Parent = G.VyzeccTogglePill_14

G.VyzeccToggleDot_14 = Instance.new("Frame")
G.VyzeccToggleDot_14.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_14.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_14.BorderSizePixel = 0
G.VyzeccToggleDot_14.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_14.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_14.ZIndex = 8
G.VyzeccToggleDot_14.Parent = G.VyzeccTogglePill_14

G.UICorner_60 = Instance.new("UICorner")
G.UICorner_60.CornerRadius = UDim.new(0, 6)
G.UICorner_60.Parent = G.VyzeccToggleDot_14

G.TextButton_27 = Instance.new("TextButton")
G.TextButton_27.BackgroundTransparency = 1
G.TextButton_27.BorderSizePixel = 0
G.TextButton_27.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_27.ZIndex = 9
G.TextButton_27.Text = ""
G.TextButton_27.Parent = G.VyzeccTogglePill_14

G.Frame_63 = Instance.new("Frame")
G.Frame_63.BackgroundTransparency = 1
G.Frame_63.BorderSizePixel = 0
G.Frame_63.LayoutOrder = 10004
G.Frame_63.Size = UDim2.new(1, 0, 0, 28)
G.Frame_63.Parent = G.VyzeccPage_Visuals

G.TextLabel_36 = Instance.new("TextLabel")
G.TextLabel_36.BackgroundTransparency = 1
G.TextLabel_36.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_36.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_36.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_36.Text = "ACCESSORIES"
G.TextLabel_36.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_36.TextSize = 13
G.TextLabel_36.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_36.Parent = G.Frame_63

G.Frame_64 = Instance.new("Frame")
G.Frame_64.BackgroundTransparency = 1
G.Frame_64.BorderSizePixel = 0
G.Frame_64.LayoutOrder = 56
G.Frame_64.Size = UDim2.new(1, 0, 0, 0)
G.Frame_64.Parent = G.VyzeccPage_Visuals

G.Frame_65 = Instance.new("Frame")
G.Frame_65.BackgroundTransparency = 1
G.Frame_65.BorderSizePixel = 0
G.Frame_65.LayoutOrder = 7
G.Frame_65.Size = UDim2.new(1, 0, 0, 28)
G.Frame_65.Parent = G.VyzeccPage_Visuals

G.TextLabel_37 = Instance.new("TextLabel")
G.TextLabel_37.BackgroundTransparency = 1
G.TextLabel_37.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_37.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_37.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_37.Text = "ESP"
G.TextLabel_37.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_37.TextSize = 13
G.TextLabel_37.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_37.Parent = G.Frame_65

G.Frame_66 = Instance.new("Frame")
G.Frame_66.BackgroundTransparency = 1
G.Frame_66.BorderSizePixel = 0
G.Frame_66.LayoutOrder = 58
G.Frame_66.Size = UDim2.new(1, 0, 0, 0)
G.Frame_66.Parent = G.VyzeccPage_Visuals

G.Frame_67 = Instance.new("Frame")
G.Frame_67.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_67.BackgroundTransparency = 1
G.Frame_67.BorderSizePixel = 0
G.Frame_67.LayoutOrder = 8
G.Frame_67.Size = UDim2.new(1, 0, 0, 40)
G.Frame_67.Parent = G.VyzeccPage_Visuals

G.TextLabel_38 = Instance.new("TextLabel")
G.TextLabel_38.BackgroundTransparency = 1
G.TextLabel_38.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_38.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_38.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_38.Text = "ESP + Tracers"
G.TextLabel_38.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_38.TextSize = 11
G.TextLabel_38.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_38.Parent = G.Frame_67

G.VyzeccTogglePill_15 = Instance.new("Frame")
G.VyzeccTogglePill_15.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_15.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_15.BorderSizePixel = 0
G.VyzeccTogglePill_15.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_15.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_15.ZIndex = 7
G.VyzeccTogglePill_15:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_15.Parent = G.Frame_67

G.UICorner_61 = Instance.new("UICorner")
G.UICorner_61.CornerRadius = UDim.new(0, 9)
G.UICorner_61.Parent = G.VyzeccTogglePill_15

G.UIStroke_40 = Instance.new("UIStroke")
G.UIStroke_40.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_40.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_40.Parent = G.VyzeccTogglePill_15

G.VyzeccToggleDot_15 = Instance.new("Frame")
G.VyzeccToggleDot_15.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_15.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_15.BorderSizePixel = 0
G.VyzeccToggleDot_15.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_15.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_15.ZIndex = 8
G.VyzeccToggleDot_15.Parent = G.VyzeccTogglePill_15

G.UICorner_62 = Instance.new("UICorner")
G.UICorner_62.CornerRadius = UDim.new(0, 6)
G.UICorner_62.Parent = G.VyzeccToggleDot_15

G.TextButton_28 = Instance.new("TextButton")
G.TextButton_28.BackgroundTransparency = 1
G.TextButton_28.BorderSizePixel = 0
G.TextButton_28.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_28.ZIndex = 9
G.TextButton_28.Text = ""
G.TextButton_28.Parent = G.VyzeccTogglePill_15

G.Frame_68 = Instance.new("Frame")
G.Frame_68.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_68.BackgroundTransparency = 1
G.Frame_68.BorderSizePixel = 0
G.Frame_68.LayoutOrder = 6
G.Frame_68.Size = UDim2.new(1, 0, 0, 40)
G.Frame_68.Parent = G.VyzeccPage_Visuals

G.TextLabel_39 = Instance.new("TextLabel")
G.TextLabel_39.BackgroundTransparency = 1
G.TextLabel_39.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_39.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_39.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_39.Text = "Remove Accessories"
G.TextLabel_39.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_39.TextSize = 11
G.TextLabel_39.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_39.Parent = G.Frame_68

G.VyzeccTogglePill_16 = Instance.new("Frame")
G.VyzeccTogglePill_16.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_16.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_16.BorderSizePixel = 0
G.VyzeccTogglePill_16.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_16.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_16.ZIndex = 7
G.VyzeccTogglePill_16:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_16.Parent = G.Frame_68

G.UICorner_63 = Instance.new("UICorner")
G.UICorner_63.CornerRadius = UDim.new(0, 9)
G.UICorner_63.Parent = G.VyzeccTogglePill_16

G.UIStroke_41 = Instance.new("UIStroke")
G.UIStroke_41.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_41.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_41.Parent = G.VyzeccTogglePill_16

G.VyzeccToggleDot_16 = Instance.new("Frame")
G.VyzeccToggleDot_16.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_16.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_16.BorderSizePixel = 0
G.VyzeccToggleDot_16.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_16.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_16.ZIndex = 8
G.VyzeccToggleDot_16.Parent = G.VyzeccTogglePill_16

G.UICorner_64 = Instance.new("UICorner")
G.UICorner_64.CornerRadius = UDim.new(0, 6)
G.UICorner_64.Parent = G.VyzeccToggleDot_16

G.TextButton_29 = Instance.new("TextButton")
G.TextButton_29.BackgroundTransparency = 1
G.TextButton_29.BorderSizePixel = 0
G.TextButton_29.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_29.ZIndex = 9
G.TextButton_29.Text = ""
G.TextButton_29.Parent = G.VyzeccTogglePill_16

G.Frame_69 = Instance.new("Frame")
G.Frame_69.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_69.BackgroundTransparency = 1
G.Frame_69.BorderSizePixel = 0
G.Frame_69.LayoutOrder = 4
G.Frame_69.Size = UDim2.new(1, 0, 0, 40)
G.Frame_69.Parent = G.VyzeccPage_Visuals

G.TextLabel_40 = Instance.new("TextLabel")
G.TextLabel_40.BackgroundTransparency = 1
G.TextLabel_40.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_40.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_40.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_40.Text = "Dark Mode"
G.TextLabel_40.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_40.TextSize = 11
G.TextLabel_40.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_40.Parent = G.Frame_69

G.VyzeccTogglePill_17 = Instance.new("Frame")
G.VyzeccTogglePill_17.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_17.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_17.BorderSizePixel = 0
G.VyzeccTogglePill_17.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_17.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_17.ZIndex = 7
G.VyzeccTogglePill_17:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_17.Parent = G.Frame_69

G.UICorner_65 = Instance.new("UICorner")
G.UICorner_65.CornerRadius = UDim.new(0, 9)
G.UICorner_65.Parent = G.VyzeccTogglePill_17

G.UIStroke_42 = Instance.new("UIStroke")
G.UIStroke_42.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_42.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_42.Parent = G.VyzeccTogglePill_17

G.VyzeccToggleDot_17 = Instance.new("Frame")
G.VyzeccToggleDot_17.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_17.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_17.BorderSizePixel = 0
G.VyzeccToggleDot_17.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_17.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_17.ZIndex = 8
G.VyzeccToggleDot_17.Parent = G.VyzeccTogglePill_17

G.UICorner_66 = Instance.new("UICorner")
G.UICorner_66.CornerRadius = UDim.new(0, 6)
G.UICorner_66.Parent = G.VyzeccToggleDot_17

G.TextButton_30 = Instance.new("TextButton")
G.TextButton_30.BackgroundTransparency = 1
G.TextButton_30.BorderSizePixel = 0
G.TextButton_30.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_30.ZIndex = 9
G.TextButton_30.Text = ""
G.TextButton_30.Parent = G.VyzeccTogglePill_17

G.Frame_70 = Instance.new("Frame")
G.Frame_70.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_70.BackgroundTransparency = 1
G.Frame_70.BorderSizePixel = 0
G.Frame_70.LayoutOrder = 5
G.Frame_70.Size = UDim2.new(1, 0, 0, 40)
G.Frame_70.Visible = false
G.Frame_70.Parent = G.VyzeccPage_Visuals

G.TextLabel_41 = Instance.new("TextLabel")
G.TextLabel_41.BackgroundTransparency = 1
G.TextLabel_41.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_41.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_41.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_41.Text = "Vyzecc Mode"
G.TextLabel_41.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_41.TextSize = 11
G.TextLabel_41.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_41.Parent = G.Frame_70

G.VyzeccTogglePill_18 = Instance.new("Frame")
G.VyzeccTogglePill_18.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_18.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_18.BorderSizePixel = 0
G.VyzeccTogglePill_18.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_18.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_18.ZIndex = 7
G.VyzeccTogglePill_18:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_18.Parent = G.Frame_70

G.UICorner_67 = Instance.new("UICorner")
G.UICorner_67.CornerRadius = UDim.new(0, 9)
G.UICorner_67.Parent = G.VyzeccTogglePill_18

G.UIStroke_43 = Instance.new("UIStroke")
G.UIStroke_43.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_43.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_43.Parent = G.VyzeccTogglePill_18

G.VyzeccToggleDot_18 = Instance.new("Frame")
G.VyzeccToggleDot_18.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_18.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_18.BorderSizePixel = 0
G.VyzeccToggleDot_18.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_18.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_18.ZIndex = 8
G.VyzeccToggleDot_18.Parent = G.VyzeccTogglePill_18

G.UICorner_68 = Instance.new("UICorner")
G.UICorner_68.CornerRadius = UDim.new(0, 6)
G.UICorner_68.Parent = G.VyzeccToggleDot_18

G.TextButton_31 = Instance.new("TextButton")
G.TextButton_31.BackgroundTransparency = 1
G.TextButton_31.BorderSizePixel = 0
G.TextButton_31.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_31.ZIndex = 9
G.TextButton_31.Text = ""
G.TextButton_31.Parent = G.VyzeccTogglePill_18

G.Frame_71 = Instance.new("Frame")
G.Frame_71.BackgroundTransparency = 1
G.Frame_71.BorderSizePixel = 0
G.Frame_71.LayoutOrder = 63
G.Frame_71.Size = UDim2.new(1, 0, 0, 0)
G.Frame_71.Parent = G.VyzeccPage_Visuals

G.Frame_72 = Instance.new("Frame")
G.Frame_72.BackgroundTransparency = 1
G.Frame_72.BorderSizePixel = 0
G.Frame_72.LayoutOrder = 10002
G.Frame_72.Size = UDim2.new(1, 0, 0, 36)
G.Frame_72.Parent = G.VyzeccPage_Visuals

G.TextLabel_42 = Instance.new("TextLabel")
G.TextLabel_42.BackgroundTransparency = 1
G.TextLabel_42.Position = UDim2.new(0, 14, 0, 11)
G.TextLabel_42.Size = UDim2.new(0, 60, 0, 14)
G.TextLabel_42.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_42.Text = "FOV:"
G.TextLabel_42.TextColor3 = Color3.fromRGB(97, 85, 105)
G.TextLabel_42.TextSize = 10
G.TextLabel_42.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_42.Parent = G.Frame_72

G.TextLabel_43 = Instance.new("TextLabel")
G.TextLabel_43.BackgroundTransparency = 1
G.TextLabel_43.Position = UDim2.new(1, -44, 0, 11)
G.TextLabel_43.Size = UDim2.new(0, 30, 0, 14)
G.TextLabel_43.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_43.Text = "70"
G.TextLabel_43.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_43.TextSize = 10
G.TextLabel_43.TextXAlignment = Enum.TextXAlignment.Right
G.TextLabel_43.Parent = G.Frame_72

G.Frame_73 = Instance.new("Frame")
G.Frame_73.BackgroundColor3 = Color3.fromRGB(44, 14, 65)
G.Frame_73.BorderSizePixel = 0
G.Frame_73.Position = UDim2.new(0, 52, 0.5, -3)
G.Frame_73.Size = UDim2.new(1, -110, 0, 6)
G.Frame_73.Parent = G.Frame_72

G.UICorner_69 = Instance.new("UICorner")
G.UICorner_69.CornerRadius = UDim.new(0, 3)
G.UICorner_69.Parent = G.Frame_73

G.Frame_74 = Instance.new("Frame")
G.Frame_74.BackgroundColor3 = Color3.fromRGB(160, 80, 220)
G.Frame_74.BorderSizePixel = 0
G.Frame_74.Size = UDim2.new(0, 0, 1, 0)
G.Frame_74.Parent = G.Frame_73

G.UICorner_70 = Instance.new("UICorner")
G.UICorner_70.CornerRadius = UDim.new(0, 3)
G.UICorner_70.Parent = G.Frame_74

G.Frame_75 = Instance.new("Frame")
G.Frame_75.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G.Frame_75.BorderSizePixel = 0
G.Frame_75.Position = UDim2.new(0, -6, 0.5, -6)
G.Frame_75.Size = UDim2.new(0, 12, 0, 12)
G.Frame_75.ZIndex = 3
G.Frame_75.Parent = G.Frame_73

G.UICorner_71 = Instance.new("UICorner")
G.UICorner_71.CornerRadius = UDim.new(0, 6)
G.UICorner_71.Parent = G.Frame_75

G.TextButton_32 = Instance.new("TextButton")
G.TextButton_32.BackgroundTransparency = 1
G.TextButton_32.Position = UDim2.new(0, 0, 0, -12)
G.TextButton_32.Size = UDim2.new(1, 0, 1, 24)
G.TextButton_32.ZIndex = 4
G.TextButton_32.Text = ""
G.TextButton_32.Parent = G.Frame_73

G.Frame_76 = Instance.new("Frame")
G.Frame_76.BackgroundTransparency = 1
G.Frame_76.BorderSizePixel = 0
G.Frame_76.LayoutOrder = 65
G.Frame_76.Size = UDim2.new(1, 0, 0, 0)
G.Frame_76.Parent = G.VyzeccPage_Visuals

G.Frame_77 = Instance.new("Frame")
G.Frame_77.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_77.BackgroundTransparency = 1
G.Frame_77.BorderSizePixel = 0
G.Frame_77.LayoutOrder = 10001
G.Frame_77.Size = UDim2.new(1, 0, 0, 40)
G.Frame_77.Parent = G.VyzeccPage_Visuals

G.TextLabel_44 = Instance.new("TextLabel")
G.TextLabel_44.BackgroundTransparency = 1
G.TextLabel_44.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_44.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_44.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_44.Text = "FOV"
G.TextLabel_44.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_44.TextSize = 11
G.TextLabel_44.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_44.Parent = G.Frame_77

G.VyzeccTogglePill_19 = Instance.new("Frame")
G.VyzeccTogglePill_19.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_19.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_19.BorderSizePixel = 0
G.VyzeccTogglePill_19.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_19.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_19.ZIndex = 7
G.VyzeccTogglePill_19:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_19.Parent = G.Frame_77

G.UICorner_72 = Instance.new("UICorner")
G.UICorner_72.CornerRadius = UDim.new(0, 9)
G.UICorner_72.Parent = G.VyzeccTogglePill_19

G.UIStroke_44 = Instance.new("UIStroke")
G.UIStroke_44.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_44.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_44.Parent = G.VyzeccTogglePill_19

G.VyzeccToggleDot_19 = Instance.new("Frame")
G.VyzeccToggleDot_19.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_19.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_19.BorderSizePixel = 0
G.VyzeccToggleDot_19.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_19.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_19.ZIndex = 8
G.VyzeccToggleDot_19.Parent = G.VyzeccTogglePill_19

G.UICorner_73 = Instance.new("UICorner")
G.UICorner_73.CornerRadius = UDim.new(0, 6)
G.UICorner_73.Parent = G.VyzeccToggleDot_19

G.TextButton_33 = Instance.new("TextButton")
G.TextButton_33.BackgroundTransparency = 1
G.TextButton_33.BorderSizePixel = 0
G.TextButton_33.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_33.ZIndex = 9
G.TextButton_33.Text = ""
G.TextButton_33.Parent = G.VyzeccTogglePill_19

G.Frame_78 = Instance.new("Frame")
G.Frame_78.BackgroundTransparency = 1
G.Frame_78.BorderSizePixel = 0
G.Frame_78.LayoutOrder = 10006
G.Frame_78.Size = UDim2.new(1, 0, 0, 40)
G.Frame_78.Parent = G.VyzeccPage_Visuals

G.TextLabel_45 = Instance.new("TextLabel")
G.TextLabel_45.BackgroundTransparency = 1
G.TextLabel_45.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_45.Size = UDim2.new(1, -108, 1, 0)
G.TextLabel_45.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_45.Text = "Korblox"
G.TextLabel_45.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_45.TextSize = 11
G.TextLabel_45.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_45.Parent = G.Frame_78

G.TextButton_34 = Instance.new("TextButton")
G.TextButton_34.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_34.BorderSizePixel = 0
G.TextButton_34.Position = UDim2.new(1, -88, 0.5, -13)
G.TextButton_34.Size = UDim2.new(0, 80, 0, 26)
G.TextButton_34.ZIndex = 8
G.TextButton_34.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_34.Text = "Off"
G.TextButton_34.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_34.TextSize = 11
G.TextButton_34.Parent = G.Frame_78

G.UICorner_74 = Instance.new("UICorner")
G.UICorner_74.CornerRadius = UDim.new(0, 4)
G.UICorner_74.Parent = G.TextButton_34

G.UIStroke_45 = Instance.new("UIStroke")
G.UIStroke_45.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_45.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_45.Parent = G.TextButton_34

G.Frame_79 = Instance.new("Frame")
G.Frame_79.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_79.BackgroundTransparency = 1
G.Frame_79.BorderSizePixel = 0
G.Frame_79.LayoutOrder = 10005
G.Frame_79.Size = UDim2.new(1, 0, 0, 40)
G.Frame_79.Parent = G.VyzeccPage_Visuals

G.TextLabel_46 = Instance.new("TextLabel")
G.TextLabel_46.BackgroundTransparency = 1
G.TextLabel_46.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_46.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_46.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_46.Text = "Headless"
G.TextLabel_46.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_46.TextSize = 11
G.TextLabel_46.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_46.Parent = G.Frame_79

G.VyzeccTogglePill_20 = Instance.new("Frame")
G.VyzeccTogglePill_20.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_20.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_20.BorderSizePixel = 0
G.VyzeccTogglePill_20.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_20.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_20.ZIndex = 7
G.VyzeccTogglePill_20:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_20.Parent = G.Frame_79

G.UICorner_75 = Instance.new("UICorner")
G.UICorner_75.CornerRadius = UDim.new(0, 9)
G.UICorner_75.Parent = G.VyzeccTogglePill_20

G.UIStroke_46 = Instance.new("UIStroke")
G.UIStroke_46.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_46.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_46.Parent = G.VyzeccTogglePill_20

G.VyzeccToggleDot_20 = Instance.new("Frame")
G.VyzeccToggleDot_20.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_20.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_20.BorderSizePixel = 0
G.VyzeccToggleDot_20.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_20.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_20.ZIndex = 8
G.VyzeccToggleDot_20.Parent = G.VyzeccTogglePill_20

G.UICorner_76 = Instance.new("UICorner")
G.UICorner_76.CornerRadius = UDim.new(0, 6)
G.UICorner_76.Parent = G.VyzeccToggleDot_20

G.TextButton_35 = Instance.new("TextButton")
G.TextButton_35.BackgroundTransparency = 1
G.TextButton_35.BorderSizePixel = 0
G.TextButton_35.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_35.ZIndex = 9
G.TextButton_35.Text = ""
G.TextButton_35.Parent = G.VyzeccTogglePill_20

G.Frame_80 = Instance.new("Frame")
G.Frame_80.BackgroundTransparency = 1
G.Frame_80.BorderSizePixel = 0
G.Frame_80.LayoutOrder = 69
G.Frame_80.Size = UDim2.new(1, 0, 0, 0)
G.Frame_80.Parent = G.VyzeccPage_Visuals

G.Frame_81 = Instance.new("Frame")
G.Frame_81.BackgroundTransparency = 1
G.Frame_81.BorderSizePixel = 0
G.Frame_81.LayoutOrder = 70
G.Frame_81.Size = UDim2.new(1, 0, 0, 28)
G.Frame_81.Parent = G.VyzeccPage_Visuals

G.TextLabel_47 = Instance.new("TextLabel")
G.TextLabel_47.BackgroundTransparency = 1
G.TextLabel_47.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_47.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_47.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_47.Text = "GEARS"
G.TextLabel_47.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_47.TextSize = 13
G.TextLabel_47.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_47.Parent = G.Frame_81

G.Frame_82 = Instance.new("Frame")
G.Frame_82.BackgroundTransparency = 1
G.Frame_82.BorderSizePixel = 0
G.Frame_82.LayoutOrder = 71
G.Frame_82.Size = UDim2.new(1, 0, 0, 0)
G.Frame_82.Parent = G.VyzeccPage_Visuals

G.Frame_83 = Instance.new("Frame")
G.Frame_83.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_83.BackgroundTransparency = 1
G.Frame_83.BorderSizePixel = 0
G.Frame_83.LayoutOrder = 72
G.Frame_83.Size = UDim2.new(1, 0, 0, 40)
G.Frame_83.Parent = G.VyzeccPage_Visuals

G.TextLabel_48 = Instance.new("TextLabel")
G.TextLabel_48.BackgroundTransparency = 1
G.TextLabel_48.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_48.Size = UDim2.new(1, -104, 1, 0)
G.TextLabel_48.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_48.Text = "Bat Skin"
G.TextLabel_48.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_48.TextSize = 11
G.TextLabel_48.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_48.Parent = G.Frame_83

G.TextButton_36 = Instance.new("TextButton")
G.TextButton_36.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_36.BorderSizePixel = 0
G.TextButton_36.Position = UDim2.new(1, -70, 0.5, -13)
G.TextButton_36.Size = UDim2.new(0, 44, 0, 26)
G.TextButton_36.Text = "--"
G.TextButton_36.AutoButtonColor = false
G.TextButton_36.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_36.Text = "OPEN"
G.TextButton_36.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_36.TextSize = 11
G.TextButton_36.Parent = G.Frame_83

G.UICorner_77 = Instance.new("UICorner")
G.UICorner_77.CornerRadius = UDim.new(0, 4)
G.UICorner_77.Parent = G.TextButton_36
G.BatSkinPrev = Instance.new("TextButton")
G.BatSkinPrev.Name = "BatSkinPrev"
G.BatSkinPrev.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.BatSkinPrev.BorderSizePixel = 0
G.BatSkinPrev.Position = UDim2.new(1, -102, 0.5, -13)
G.BatSkinPrev.Size = UDim2.new(0, 26, 0, 26)
G.BatSkinPrev.Font = Enum.Font.GothamBold
G.BatSkinPrev.Text = "‹"
G.BatSkinPrev.TextSize = 20
G.BatSkinPrev.TextColor3 = Color3.fromRGB(249, 240, 255)
G.BatSkinPrev.Parent = G.Frame_83
G.BatSkinNext = Instance.new("TextButton")
G.BatSkinNext.Name = "BatSkinNext"
G.BatSkinNext.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.BatSkinNext.BorderSizePixel = 0
G.BatSkinNext.Position = UDim2.new(1, -28, 0.5, -13)
G.BatSkinNext.Size = UDim2.new(0, 26, 0, 26)
G.BatSkinNext.Font = Enum.Font.GothamBold
G.BatSkinNext.Text = "›"
G.BatSkinNext.TextSize = 20
G.BatSkinNext.TextColor3 = Color3.fromRGB(249, 240, 255)
G.BatSkinNext.Parent = G.Frame_83
for _, b in ipairs({G.BatSkinPrev, G.BatSkinNext}) do
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 4)
end

G.UIStroke_47 = Instance.new("UIStroke")
G.UIStroke_47.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_47.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_47.Parent = G.TextButton_36

G.Frame_84 = Instance.new("Frame")
G.Frame_84.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_84.BackgroundTransparency = 1
G.Frame_84.BorderSizePixel = 0
G.Frame_84.LayoutOrder = 73
G.Frame_84.Size = UDim2.new(1, 0, 0, 40)
G.Frame_84.Parent = G.VyzeccPage_Visuals

G.TextLabel_49 = Instance.new("TextLabel")
G.TextLabel_49.BackgroundTransparency = 1
G.TextLabel_49.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_49.Size = UDim2.new(1, -104, 1, 0)
G.TextLabel_49.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_49.Text = "Medusa Skin"
G.TextLabel_49.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_49.TextSize = 11
G.TextLabel_49.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_49.Parent = G.Frame_84

G.TextButton_37 = Instance.new("TextButton")
G.TextButton_37.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_37.BorderSizePixel = 0
G.TextButton_37.Position = UDim2.new(1, -70, 0.5, -13)
G.TextButton_37.Size = UDim2.new(0, 44, 0, 26)
G.TextButton_37.Text = "--"
G.TextButton_37.AutoButtonColor = false
G.TextButton_37.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_37.Text = "OPEN"
G.TextButton_37.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_37.TextSize = 11
G.TextButton_37.Parent = G.Frame_84

G.UICorner_78 = Instance.new("UICorner")
G.UICorner_78.CornerRadius = UDim.new(0, 4)
G.UICorner_78.Parent = G.TextButton_37
G.MedusaSkinPrev = Instance.new("TextButton")
G.MedusaSkinPrev.Name = "MedusaSkinPrev"
G.MedusaSkinPrev.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.MedusaSkinPrev.BorderSizePixel = 0
G.MedusaSkinPrev.Position = UDim2.new(1, -102, 0.5, -13)
G.MedusaSkinPrev.Size = UDim2.new(0, 26, 0, 26)
G.MedusaSkinPrev.Font = Enum.Font.GothamBold
G.MedusaSkinPrev.Text = "‹"
G.MedusaSkinPrev.TextSize = 20
G.MedusaSkinPrev.TextColor3 = Color3.fromRGB(249, 240, 255)
G.MedusaSkinPrev.Parent = G.Frame_84
G.MedusaSkinNext = Instance.new("TextButton")
G.MedusaSkinNext.Name = "MedusaSkinNext"
G.MedusaSkinNext.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.MedusaSkinNext.BorderSizePixel = 0
G.MedusaSkinNext.Position = UDim2.new(1, -28, 0.5, -13)
G.MedusaSkinNext.Size = UDim2.new(0, 26, 0, 26)
G.MedusaSkinNext.Font = Enum.Font.GothamBold
G.MedusaSkinNext.Text = "›"
G.MedusaSkinNext.TextSize = 20
G.MedusaSkinNext.TextColor3 = Color3.fromRGB(249, 240, 255)
G.MedusaSkinNext.Parent = G.Frame_84
for _, b in ipairs({G.MedusaSkinPrev, G.MedusaSkinNext}) do
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 4)
end

G.UIStroke_48 = Instance.new("UIStroke")
G.UIStroke_48.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_48.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_48.Parent = G.TextButton_37

for _, gearFrame in ipairs({G.Frame_81, G.Frame_82, G.Frame_83, G.Frame_84}) do
    if gearFrame then gearFrame.Visible = false; gearFrame.Size = UDim2.new(1, 0, 0, 0) end
end

G.Frame_85 = Instance.new("Frame")
G.Frame_85.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_85.BackgroundTransparency = 1
G.Frame_85.BorderSizePixel = 0
G.Frame_85.LayoutOrder = 10003
G.Frame_85.Size = UDim2.new(1, 0, 0, 40)
G.Frame_85.Parent = G.VyzeccPage_Visuals

G.TextLabel_50 = Instance.new("TextLabel")
G.TextLabel_50.BackgroundTransparency = 1
G.TextLabel_50.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_50.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_50.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_50.Text = "Stretch Rez"
G.TextLabel_50.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_50.TextSize = 11
G.TextLabel_50.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_50.Parent = G.Frame_85

G.VyzeccTogglePill_21 = Instance.new("Frame")
G.VyzeccTogglePill_21.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_21.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_21.BorderSizePixel = 0
G.VyzeccTogglePill_21.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_21.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_21.ZIndex = 7
G.VyzeccTogglePill_21:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_21.Parent = G.Frame_85

G.UICorner_79 = Instance.new("UICorner")
G.UICorner_79.CornerRadius = UDim.new(0, 9)
G.UICorner_79.Parent = G.VyzeccTogglePill_21

G.UIStroke_49 = Instance.new("UIStroke")
G.UIStroke_49.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_49.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_49.Parent = G.VyzeccTogglePill_21

G.VyzeccToggleDot_21 = Instance.new("Frame")
G.VyzeccToggleDot_21.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_21.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_21.BorderSizePixel = 0
G.VyzeccToggleDot_21.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_21.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_21.ZIndex = 8
G.VyzeccToggleDot_21.Parent = G.VyzeccTogglePill_21

G.UICorner_80 = Instance.new("UICorner")
G.UICorner_80.CornerRadius = UDim.new(0, 6)
G.UICorner_80.Parent = G.VyzeccToggleDot_21

G.TextButton_38 = Instance.new("TextButton")
G.TextButton_38.BackgroundTransparency = 1
G.TextButton_38.BorderSizePixel = 0
G.TextButton_38.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_38.ZIndex = 9
G.TextButton_38.Text = ""
G.TextButton_38.Parent = G.VyzeccTogglePill_21

G.Frame_86 = Instance.new("Frame")
G.Frame_86.BackgroundTransparency = 1
G.Frame_86.BorderSizePixel = 0
G.Frame_86.LayoutOrder = 10000
G.Frame_86.Size = UDim2.new(1, 0, 0, 28)
G.Frame_86.Parent = G.VyzeccPage_Visuals

G.TextLabel_51 = Instance.new("TextLabel")
G.TextLabel_51.BackgroundTransparency = 1
G.TextLabel_51.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_51.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_51.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_51.Text = "CAMERA"
G.TextLabel_51.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_51.TextSize = 13
G.TextLabel_51.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_51.Parent = G.Frame_86

G.VyzeccPage_Steal = Instance.new("ScrollingFrame")
G.VyzeccPage_Steal.Name = "VyzeccPage_Steal"
G.VyzeccPage_Steal.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccPage_Steal.BackgroundTransparency = 1
G.VyzeccPage_Steal.BorderSizePixel = 0
G.VyzeccPage_Steal.Position = UDim2.new(0, 3, 0, 92)
G.VyzeccPage_Steal.Size = UDim2.new(1, -3, 1, -92)
G.VyzeccPage_Steal.Visible = false
G.VyzeccPage_Steal.ZIndex = 3
G.VyzeccPage_Steal.AutomaticCanvasSize = Enum.AutomaticSize.Y
G.VyzeccPage_Steal.CanvasSize = UDim2.new(0, 0, 0, 0)
G.VyzeccPage_Steal.ScrollBarImageColor3 = Color3.fromRGB(160, 80, 220)
G.VyzeccPage_Steal.ScrollBarImageTransparency = 0.5
G.VyzeccPage_Steal.ScrollBarThickness = 3
G.VyzeccPage_Steal.Parent = G.MainOuter

G.UIListLayout_6 = Instance.new("UIListLayout")
G.UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
G.UIListLayout_6.Parent = G.VyzeccPage_Steal

G.UIPadding_5 = Instance.new("UIPadding")
G.UIPadding_5.PaddingBottom = UDim.new(0, 12)
G.UIPadding_5.PaddingLeft = UDim.new(0, 8)
G.UIPadding_5.PaddingRight = UDim.new(0, 8)
G.UIPadding_5.PaddingTop = UDim.new(0, 6)
G.UIPadding_5.Parent = G.VyzeccPage_Steal

G.VyzeccPage_Combat = Instance.new("ScrollingFrame")
G.VyzeccPage_Combat.Name = "VyzeccPage_Combat"
G.VyzeccPage_Combat.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccPage_Combat.BackgroundTransparency = 1
G.VyzeccPage_Combat.BorderSizePixel = 0
G.VyzeccPage_Combat.Position = UDim2.new(0, 3, 0, 92)
G.VyzeccPage_Combat.Size = UDim2.new(1, -3, 1, -92)
G.VyzeccPage_Combat.Visible = false
G.VyzeccPage_Combat.ZIndex = 3
G.VyzeccPage_Combat.AutomaticCanvasSize = Enum.AutomaticSize.Y
G.VyzeccPage_Combat.CanvasSize = UDim2.new(0, 0, 0, 0)
G.VyzeccPage_Combat.ScrollBarImageColor3 = Color3.fromRGB(160, 80, 220)
G.VyzeccPage_Combat.ScrollBarImageTransparency = 0.5
G.VyzeccPage_Combat.ScrollBarThickness = 3
G.VyzeccPage_Combat.Parent = G.MainOuter

G.UIListLayout_7 = Instance.new("UIListLayout")
G.UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
G.UIListLayout_7.Parent = G.VyzeccPage_Combat

G.UIPadding_6 = Instance.new("UIPadding")
G.UIPadding_6.PaddingBottom = UDim.new(0, 12)
G.UIPadding_6.PaddingLeft = UDim.new(0, 8)
G.UIPadding_6.PaddingRight = UDim.new(0, 8)
G.UIPadding_6.PaddingTop = UDim.new(0, 6)
G.UIPadding_6.Parent = G.VyzeccPage_Combat

G.Frame_87 = Instance.new("Frame")
G.Frame_87.BackgroundTransparency = 1
G.Frame_87.BorderSizePixel = 0
G.Frame_87.LayoutOrder = 1
G.Frame_87.Size = UDim2.new(1, 0, 0, 28)
G.Frame_87.Parent = G.VyzeccPage_Combat

G.TextLabel_52 = Instance.new("TextLabel")
G.TextLabel_52.BackgroundTransparency = 1
G.TextLabel_52.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_52.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_52.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_52.Text = "AIMBOT"
G.TextLabel_52.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_52.TextSize = 13
G.TextLabel_52.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_52.Parent = G.Frame_87

G.Frame_88 = Instance.new("Frame")
G.Frame_88.BackgroundTransparency = 1
G.Frame_88.BorderSizePixel = 0
G.Frame_88.LayoutOrder = 81
G.Frame_88.Size = UDim2.new(1, 0, 0, 0)
G.Frame_88.Parent = G.VyzeccPage_Combat

G.Frame_89 = Instance.new("Frame")
G.Frame_89.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_89.BackgroundTransparency = 1
G.Frame_89.BorderSizePixel = 0
G.Frame_89.LayoutOrder = 6
G.Frame_89.Size = UDim2.new(1, 0, 0, 40)
G.Frame_89.Parent = G.VyzeccPage_Combat

G.TextLabel_53 = Instance.new("TextLabel")
G.TextLabel_53.BackgroundTransparency = 1
G.TextLabel_53.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_53.Size = UDim2.new(1, -120, 1, 0)
G.TextLabel_53.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_53.Text = "Bat Speed"
G.TextLabel_53.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_53.TextSize = 11
G.TextLabel_53.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_53.Parent = G.Frame_89

G.VyzeccTogglePill_22 = Instance.new("Frame")
G.VyzeccTogglePill_22.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_22.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_22.BorderSizePixel = 0
G.VyzeccTogglePill_22.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_22.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_22.ZIndex = 7
G.VyzeccTogglePill_22:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_22.Parent = G.Frame_89

G.UICorner_81 = Instance.new("UICorner")
G.UICorner_81.CornerRadius = UDim.new(0, 9)
G.UICorner_81.Parent = G.VyzeccTogglePill_22

G.UIStroke_50 = Instance.new("UIStroke")
G.UIStroke_50.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_50.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_50.Parent = G.VyzeccTogglePill_22

G.VyzeccToggleDot_22 = Instance.new("Frame")
G.VyzeccToggleDot_22.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_22.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_22.BorderSizePixel = 0
G.VyzeccToggleDot_22.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_22.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_22.ZIndex = 8
G.VyzeccToggleDot_22.Parent = G.VyzeccTogglePill_22

G.UICorner_82 = Instance.new("UICorner")
G.UICorner_82.CornerRadius = UDim.new(0, 6)
G.UICorner_82.Parent = G.VyzeccToggleDot_22

G.TextButton_39 = Instance.new("TextButton")
G.TextButton_39.BackgroundTransparency = 1
G.TextButton_39.BorderSizePixel = 0
G.TextButton_39.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_39.ZIndex = 9
G.TextButton_39.Text = ""
G.TextButton_39.Parent = G.VyzeccTogglePill_22

G.SizeDropdown_2 = Instance.new("TextButton")
G.SizeDropdown_2.Name = "SizeDropdown"
G.SizeDropdown_2.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.SizeDropdown_2.BorderSizePixel = 0
G.SizeDropdown_2.Position = UDim2.new(1, -106, 0.5, -11)
G.SizeDropdown_2.Size = UDim2.new(0, 34, 0, 22)
G.SizeDropdown_2.ZIndex = 9
G.SizeDropdown_2.Text = ""
G.SizeDropdown_2.Parent = G.Frame_89

G.UICorner_83 = Instance.new("UICorner")
G.UICorner_83.CornerRadius = UDim.new(0, 4)
G.UICorner_83.Parent = G.SizeDropdown_2

G.UIStroke_51 = Instance.new("UIStroke")
G.UIStroke_51.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_51.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_51.Parent = G.SizeDropdown_2

G.Arrow_2 = Instance.new("TextLabel")
G.Arrow_2.Name = "Arrow"
G.Arrow_2.BackgroundTransparency = 1
G.Arrow_2.Size = UDim2.new(1, 0, 1, 0)
G.Arrow_2.ZIndex = 10
G.Arrow_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.Arrow_2.Text = "▼"
G.Arrow_2.TextColor3 = Color3.fromRGB(150, 100, 200)
G.Arrow_2.TextSize = 16
G.Arrow_2.Parent = G.SizeDropdown_2

G.Frame_90 = Instance.new("Frame")
G.Frame_90.BackgroundTransparency = 1
G.Frame_90.BorderSizePixel = 0
G.Frame_90.ClipsDescendants = true
G.Frame_90.LayoutOrder = 7
G.Frame_90.Size = UDim2.new(1, 0, 0, 38)
G.Frame_90.Visible = false
G.Frame_90.Parent = G.VyzeccPage_Combat

G.TextLabel_54 = Instance.new("TextLabel")
G.TextLabel_54.BackgroundTransparency = 1
G.TextLabel_54.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_54.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_54.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_54.Text = "Normal Aimbot Speed"
G.TextLabel_54.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_54.TextSize = 11
G.TextLabel_54.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_54.Parent = G.Frame_90

G.Frame_91 = Instance.new("Frame")
G.Frame_91.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_91.BorderSizePixel = 0
G.Frame_91.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_91.Size = UDim2.new(0, 54, 0, 26)
G.Frame_91.Parent = G.Frame_90

G.UICorner_84 = Instance.new("UICorner")
G.UICorner_84.CornerRadius = UDim.new(0, 6)
G.UICorner_84.Parent = G.Frame_91

G.UIStroke_52 = Instance.new("UIStroke")
G.UIStroke_52.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_52.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_52.Parent = G.Frame_91

G.TextBox_8 = Instance.new("TextBox")
G.TextBox_8.BackgroundTransparency = 1
G.TextBox_8.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_8.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_8.ZIndex = 8
G.TextBox_8.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_8.Text = "58"
G.TextBox_8.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_8.TextSize = 11
G.TextBox_8.ClearTextOnFocus = false
G.TextBox_8.Parent = G.Frame_91

G.Frame_92 = Instance.new("Frame")
G.Frame_92.BackgroundTransparency = 1
G.Frame_92.BorderSizePixel = 0
G.Frame_92.ClipsDescendants = true
G.Frame_92.LayoutOrder = 8
G.Frame_92.Size = UDim2.new(1, 0, 0, 38)
G.Frame_92.Visible = false
G.Frame_92.Parent = G.VyzeccPage_Combat

G.TextLabel_55 = Instance.new("TextLabel")
G.TextLabel_55.BackgroundTransparency = 1
G.TextLabel_55.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_55.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_55.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_55.Text = "Lagger Aimbot Speed"
G.TextLabel_55.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_55.TextSize = 11
G.TextLabel_55.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_55.Parent = G.Frame_92

G.Frame_93 = Instance.new("Frame")
G.Frame_93.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_93.BorderSizePixel = 0
G.Frame_93.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_93.Size = UDim2.new(0, 54, 0, 26)
G.Frame_93.Parent = G.Frame_92

G.UICorner_85 = Instance.new("UICorner")
G.UICorner_85.CornerRadius = UDim.new(0, 6)
G.UICorner_85.Parent = G.Frame_93

G.UIStroke_53 = Instance.new("UIStroke")
G.UIStroke_53.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_53.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_53.Parent = G.Frame_93

G.TextBox_9 = Instance.new("TextBox")
G.TextBox_9.BackgroundTransparency = 1
G.TextBox_9.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_9.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_9.ZIndex = 8
G.TextBox_9.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_9.Text = "40"
G.TextBox_9.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_9.TextSize = 11
G.TextBox_9.ClearTextOnFocus = false
G.TextBox_9.Parent = G.Frame_93

G.Frame_94 = Instance.new("Frame")
G.Frame_94.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_94.BackgroundTransparency = 1
G.Frame_94.BorderSizePixel = 0
G.Frame_94.LayoutOrder = 9
G.Frame_94.Size = UDim2.new(1, 0, 0, 40)
G.Frame_94.Parent = G.VyzeccPage_Combat

G.TextLabel_56 = Instance.new("TextLabel")
G.TextLabel_56.BackgroundTransparency = 1
G.TextLabel_56.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_56.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_56.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_56.Text = "Auto Swing"
G.TextLabel_56.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_56.TextSize = 11
G.TextLabel_56.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_56.Parent = G.Frame_94

G.VyzeccTogglePill_23 = Instance.new("Frame")
G.VyzeccTogglePill_23.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_23.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_23.BorderSizePixel = 0
G.VyzeccTogglePill_23.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_23.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_23.ZIndex = 7
G.VyzeccTogglePill_23:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_23.Parent = G.Frame_94

G.UICorner_86 = Instance.new("UICorner")
G.UICorner_86.CornerRadius = UDim.new(0, 9)
G.UICorner_86.Parent = G.VyzeccTogglePill_23

G.UIStroke_54 = Instance.new("UIStroke")
G.UIStroke_54.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_54.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_54.Parent = G.VyzeccTogglePill_23

G.VyzeccToggleDot_23 = Instance.new("Frame")
G.VyzeccToggleDot_23.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_23.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_23.BorderSizePixel = 0
G.VyzeccToggleDot_23.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_23.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_23.ZIndex = 8
G.VyzeccToggleDot_23.Parent = G.VyzeccTogglePill_23

G.UICorner_87 = Instance.new("UICorner")
G.UICorner_87.CornerRadius = UDim.new(0, 6)
G.UICorner_87.Parent = G.VyzeccToggleDot_23

G.TextButton_40 = Instance.new("TextButton")
G.TextButton_40.BackgroundTransparency = 1
G.TextButton_40.BorderSizePixel = 0
G.TextButton_40.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_40.ZIndex = 9
G.TextButton_40.Text = ""
G.TextButton_40.Parent = G.VyzeccTogglePill_23

G.Frame_95 = Instance.new("Frame")
G.Frame_95.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_95.BackgroundTransparency = 1
G.Frame_95.BorderSizePixel = 0
G.Frame_95.LayoutOrder = 86
G.Frame_95.Size = UDim2.new(1, 0, 0, 40)
G.Frame_95.Visible = false
G.Frame_95.Parent = G.VyzeccPage_Combat

G.TextLabel_57 = Instance.new("TextLabel")
G.TextLabel_57.BackgroundTransparency = 1
G.TextLabel_57.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_57.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_57.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_57.Text = "Auto Lagger"
G.TextLabel_57.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_57.TextSize = 11
G.TextLabel_57.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_57.Parent = G.Frame_95

G.VyzeccTogglePill_24 = Instance.new("Frame")
G.VyzeccTogglePill_24.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_24.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_24.BorderSizePixel = 0
G.VyzeccTogglePill_24.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_24.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_24.ZIndex = 7
G.VyzeccTogglePill_24:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_24.Parent = G.Frame_95

G.UICorner_88 = Instance.new("UICorner")
G.UICorner_88.CornerRadius = UDim.new(0, 9)
G.UICorner_88.Parent = G.VyzeccTogglePill_24

G.UIStroke_55 = Instance.new("UIStroke")
G.UIStroke_55.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_55.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_55.Parent = G.VyzeccTogglePill_24

G.VyzeccToggleDot_24 = Instance.new("Frame")
G.VyzeccToggleDot_24.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_24.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_24.BorderSizePixel = 0
G.VyzeccToggleDot_24.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_24.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_24.ZIndex = 8
G.VyzeccToggleDot_24.Parent = G.VyzeccTogglePill_24

G.UICorner_89 = Instance.new("UICorner")
G.UICorner_89.CornerRadius = UDim.new(0, 6)
G.UICorner_89.Parent = G.VyzeccToggleDot_24

G.TextButton_41 = Instance.new("TextButton")
G.TextButton_41.BackgroundTransparency = 1
G.TextButton_41.BorderSizePixel = 0
G.TextButton_41.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_41.ZIndex = 9
G.TextButton_41.Text = ""
G.TextButton_41.Parent = G.VyzeccTogglePill_24

G.Frame_96 = Instance.new("Frame")
G.Frame_96.BackgroundTransparency = 1
G.Frame_96.BorderSizePixel = 0
G.Frame_96.LayoutOrder = 5
G.Frame_96.Size = UDim2.new(1, 0, 0, 34)
G.Frame_96.Parent = G.VyzeccPage_Combat

G.TextLabel_58 = Instance.new("TextLabel")
G.TextLabel_58.BackgroundTransparency = 1
G.TextLabel_58.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_58.Size = UDim2.new(1, -84, 1, 0)
G.TextLabel_58.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_58.Text = "Aimbot Bind"
G.TextLabel_58.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_58.TextSize = 11
G.TextLabel_58.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_58.Parent = G.Frame_96

G.TextButton_42 = Instance.new("TextButton")
G.TextButton_42.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.TextButton_42.BorderSizePixel = 0
G.TextButton_42.Position = UDim2.new(1, -54, 0.5, -12)
G.TextButton_42.Size = UDim2.new(0, 44, 0, 24)
G.TextButton_42.ZIndex = 8
G.TextButton_42.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_42.Text = "…"
G.TextButton_42.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextButton_42.TextSize = 10
G.TextButton_42.Parent = G.Frame_96

G.UICorner_90 = Instance.new("UICorner")
G.UICorner_90.CornerRadius = UDim.new(0, 6)
G.UICorner_90.Parent = G.TextButton_42

G.UIStroke_56 = Instance.new("UIStroke")
G.UIStroke_56.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_56.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_56.Parent = G.TextButton_42

G.TextButton_43 = Instance.new("TextButton")
G.TextButton_43.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_43.BorderSizePixel = 0
G.TextButton_43.Position = UDim2.new(1, -130, 0.5, -12)
G.TextButton_43.Size = UDim2.new(0, 58, 0, 24)
G.TextButton_43.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_43.Text = "Normal"
G.TextButton_43.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_43.TextSize = 10
G.TextButton_43.Parent = G.Frame_96

G.UICorner_91 = Instance.new("UICorner")
G.UICorner_91.CornerRadius = UDim.new(0, 4)
G.UICorner_91.Parent = G.TextButton_43

G.UIStroke_57 = Instance.new("UIStroke")
G.UIStroke_57.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_57.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_57.Parent = G.TextButton_43

G.Frame_97 = Instance.new("Frame")
G.Frame_97.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_97.BackgroundTransparency = 1
G.Frame_97.BorderSizePixel = 0
G.Frame_97.LayoutOrder = 1007
G.Frame_97.Size = UDim2.new(1, 0, 0, 40)
G.Frame_97.Visible = false
G.Frame_97.Parent = G.VyzeccPage_Combat

G.TextLabel_59 = Instance.new("TextLabel")
G.TextLabel_59.BackgroundTransparency = 1
G.TextLabel_59.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_59.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_59.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_59.Text = "Show Lagger"
G.TextLabel_59.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_59.TextSize = 11
G.TextLabel_59.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_59.Parent = G.Frame_97

G.VyzeccTogglePill_25 = Instance.new("Frame")
G.VyzeccTogglePill_25.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_25.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_25.BorderSizePixel = 0
G.VyzeccTogglePill_25.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_25.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_25.ZIndex = 7
G.VyzeccTogglePill_25:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_25.Parent = G.Frame_97

G.UICorner_92 = Instance.new("UICorner")
G.UICorner_92.CornerRadius = UDim.new(0, 9)
G.UICorner_92.Parent = G.VyzeccTogglePill_25

G.UIStroke_58 = Instance.new("UIStroke")
G.UIStroke_58.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_58.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_58.Parent = G.VyzeccTogglePill_25

G.VyzeccToggleDot_25 = Instance.new("Frame")
G.VyzeccToggleDot_25.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_25.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_25.BorderSizePixel = 0
G.VyzeccToggleDot_25.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_25.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_25.ZIndex = 8
G.VyzeccToggleDot_25.Parent = G.VyzeccTogglePill_25

G.UICorner_93 = Instance.new("UICorner")
G.UICorner_93.CornerRadius = UDim.new(0, 6)
G.UICorner_93.Parent = G.VyzeccToggleDot_25

G.TextButton_44 = Instance.new("TextButton")
G.TextButton_44.BackgroundTransparency = 1
G.TextButton_44.BorderSizePixel = 0
G.TextButton_44.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_44.ZIndex = 9
G.TextButton_44.Text = ""
G.TextButton_44.Parent = G.VyzeccTogglePill_25

G.Frame_98 = Instance.new("Frame")
G.Frame_98.BackgroundTransparency = 1
G.Frame_98.BorderSizePixel = 0
G.Frame_98.LayoutOrder = 98
G.Frame_98.Size = UDim2.new(1, 0, 0, 0)
G.Frame_98.Parent = G.VyzeccPage_Combat

G.Frame_99 = Instance.new("Frame")
G.Frame_99.BackgroundTransparency = 1
G.Frame_99.BorderSizePixel = 0
G.Frame_99.LayoutOrder = 91
G.Frame_99.Size = UDim2.new(1, 0, 0, 0)
G.Frame_99.Parent = G.VyzeccPage_Combat

G.Frame_100 = Instance.new("Frame")
G.Frame_100.BackgroundTransparency = 1
G.Frame_100.BorderSizePixel = 0
G.Frame_100.LayoutOrder = 1000
G.Frame_100.Size = UDim2.new(1, 0, 0, 28)
G.Frame_100.Parent = G.VyzeccPage_Combat

G.TextLabel_60 = Instance.new("TextLabel")
G.TextLabel_60.BackgroundTransparency = 1
G.TextLabel_60.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_60.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_60.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_60.Text = "COUNTERS"
G.TextLabel_60.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_60.TextSize = 13
G.TextLabel_60.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_60.Parent = G.Frame_100

G.Frame_101 = Instance.new("Frame")
G.Frame_101.BackgroundTransparency = 1
G.Frame_101.BorderSizePixel = 0
G.Frame_101.LayoutOrder = 93
G.Frame_101.Size = UDim2.new(1, 0, 0, 0)
G.Frame_101.Parent = G.VyzeccPage_Combat

G.Frame_102 = Instance.new("Frame")
G.Frame_102.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_102.BackgroundTransparency = 1
G.Frame_102.BorderSizePixel = 0
G.Frame_102.LayoutOrder = 1001
G.Frame_102.Size = UDim2.new(1, 0, 0, 40)
G.Frame_102.Parent = G.VyzeccPage_Combat

G.TextLabel_61 = Instance.new("TextLabel")
G.TextLabel_61.BackgroundTransparency = 1
G.TextLabel_61.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_61.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_61.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_61.Text = "Bat Counter"
G.TextLabel_61.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_61.TextSize = 11
G.TextLabel_61.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_61.Parent = G.Frame_102

G.VyzeccTogglePill_26 = Instance.new("Frame")
G.VyzeccTogglePill_26.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_26.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_26.BorderSizePixel = 0
G.VyzeccTogglePill_26.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_26.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_26.ZIndex = 7
G.VyzeccTogglePill_26:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_26.Parent = G.Frame_102

G.UICorner_94 = Instance.new("UICorner")
G.UICorner_94.CornerRadius = UDim.new(0, 9)
G.UICorner_94.Parent = G.VyzeccTogglePill_26

G.UIStroke_59 = Instance.new("UIStroke")
G.UIStroke_59.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_59.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_59.Parent = G.VyzeccTogglePill_26

G.VyzeccToggleDot_26 = Instance.new("Frame")
G.VyzeccToggleDot_26.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_26.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_26.BorderSizePixel = 0
G.VyzeccToggleDot_26.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_26.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_26.ZIndex = 8
G.VyzeccToggleDot_26.Parent = G.VyzeccTogglePill_26

G.UICorner_95 = Instance.new("UICorner")
G.UICorner_95.CornerRadius = UDim.new(0, 6)
G.UICorner_95.Parent = G.VyzeccToggleDot_26

G.TextButton_45 = Instance.new("TextButton")
G.TextButton_45.BackgroundTransparency = 1
G.TextButton_45.BorderSizePixel = 0
G.TextButton_45.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_45.ZIndex = 9
G.TextButton_45.Text = ""
G.TextButton_45.Parent = G.VyzeccTogglePill_26

G.Frame_103 = Instance.new("Frame")
G.Frame_103.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_103.BackgroundTransparency = 1
G.Frame_103.BorderSizePixel = 0
G.Frame_103.LayoutOrder = 1002
G.Frame_103.Size = UDim2.new(1, 0, 0, 40)
G.Frame_103.Parent = G.VyzeccPage_Combat

G.TextLabel_62 = Instance.new("TextLabel")
G.TextLabel_62.BackgroundTransparency = 1
G.TextLabel_62.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_62.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_62.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_62.Text = "Medusa Counter"
G.TextLabel_62.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_62.TextSize = 11
G.TextLabel_62.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_62.Parent = G.Frame_103

G.VyzeccTogglePill_27 = Instance.new("Frame")
G.VyzeccTogglePill_27.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_27.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_27.BorderSizePixel = 0
G.VyzeccTogglePill_27.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_27.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_27.ZIndex = 7
G.VyzeccTogglePill_27:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_27.Parent = G.Frame_103

G.UICorner_96 = Instance.new("UICorner")
G.UICorner_96.CornerRadius = UDim.new(0, 9)
G.UICorner_96.Parent = G.VyzeccTogglePill_27

G.UIStroke_60 = Instance.new("UIStroke")
G.UIStroke_60.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_60.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_60.Parent = G.VyzeccTogglePill_27

G.VyzeccToggleDot_27 = Instance.new("Frame")
G.VyzeccToggleDot_27.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_27.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_27.BorderSizePixel = 0
G.VyzeccToggleDot_27.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_27.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_27.ZIndex = 8
G.VyzeccToggleDot_27.Parent = G.VyzeccTogglePill_27

G.UICorner_97 = Instance.new("UICorner")
G.UICorner_97.CornerRadius = UDim.new(0, 6)
G.UICorner_97.Parent = G.VyzeccToggleDot_27

G.TextButton_46 = Instance.new("TextButton")
G.TextButton_46.BackgroundTransparency = 1
G.TextButton_46.BorderSizePixel = 0
G.TextButton_46.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_46.ZIndex = 9
G.TextButton_46.Text = ""
G.TextButton_46.Parent = G.VyzeccTogglePill_27

G.Frame_104 = Instance.new("Frame")
G.Frame_104.BackgroundTransparency = 1
G.Frame_104.BorderSizePixel = 0
G.Frame_104.LayoutOrder = 96
G.Frame_104.Size = UDim2.new(1, 0, 0, 0)
G.Frame_104.Parent = G.VyzeccPage_Combat

G.Frame_105 = Instance.new("Frame")
G.Frame_105.BackgroundTransparency = 1
G.Frame_105.BorderSizePixel = 0
G.Frame_105.LayoutOrder = 1006
G.Frame_105.Size = UDim2.new(1, 0, 0, 28)
G.Frame_105.Visible = false
G.Frame_105.Parent = G.VyzeccPage_Combat

G.TextLabel_63 = Instance.new("TextLabel")
G.TextLabel_63.BackgroundTransparency = 1
G.TextLabel_63.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_63.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_63.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_63.Text = "LAGGER PANEL"
G.TextLabel_63.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_63.TextSize = 13
G.TextLabel_63.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_63.Parent = G.Frame_105

G.Frame_106 = Instance.new("Frame")
G.Frame_106.BackgroundTransparency = 1
G.Frame_106.BorderSizePixel = 0
G.Frame_106.LayoutOrder = 903
G.Frame_106.Size = UDim2.new(1, 0, 0, 38)
G.Frame_106.Parent = G.VyzeccPage_Combat

G.TextLabel_64 = Instance.new("TextLabel")
G.TextLabel_64.BackgroundTransparency = 1
G.TextLabel_64.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_64.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_64.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_64.Text = "Steal Radius"
G.TextLabel_64.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_64.TextSize = 11
G.TextLabel_64.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_64.Parent = G.Frame_106

G.Frame_107 = Instance.new("Frame")
G.Frame_107.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_107.BorderSizePixel = 0
G.Frame_107.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_107.Size = UDim2.new(0, 54, 0, 26)
G.Frame_107.Parent = G.Frame_106

G.UICorner_98 = Instance.new("UICorner")
G.UICorner_98.CornerRadius = UDim.new(0, 6)
G.UICorner_98.Parent = G.Frame_107

G.UIStroke_61 = Instance.new("UIStroke")
G.UIStroke_61.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_61.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_61.Parent = G.Frame_107

G.TextBox_10 = Instance.new("TextBox")
G.TextBox_10.BackgroundTransparency = 1
G.TextBox_10.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_10.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_10.ZIndex = 8
G.TextBox_10.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_10.Text = "60"
G.TextBox_10.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_10.TextSize = 11
G.TextBox_10.ClearTextOnFocus = false
G.TextBox_10.Parent = G.Frame_107

G.Frame_108 = Instance.new("Frame")
G.Frame_108.BackgroundTransparency = 1
G.Frame_108.BorderSizePixel = 0
G.Frame_108.LayoutOrder = 904
G.Frame_108.Size = UDim2.new(1, 0, 0, 38)
G.Frame_108.Parent = G.VyzeccPage_Combat

G.TextLabel_65 = Instance.new("TextLabel")
G.TextLabel_65.BackgroundTransparency = 1
G.TextLabel_65.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_65.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_65.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_65.Text = "Steal Duration"
G.TextLabel_65.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_65.TextSize = 11
G.TextLabel_65.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_65.Parent = G.Frame_108

G.Frame_109 = Instance.new("Frame")
G.Frame_109.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_109.BorderSizePixel = 0
G.Frame_109.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_109.Size = UDim2.new(0, 54, 0, 26)
G.Frame_109.Parent = G.Frame_108

G.UICorner_99 = Instance.new("UICorner")
G.UICorner_99.CornerRadius = UDim.new(0, 6)
G.UICorner_99.Parent = G.Frame_109

G.UIStroke_62 = Instance.new("UIStroke")
G.UIStroke_62.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_62.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_62.Parent = G.Frame_109

G.TextBox_11 = Instance.new("TextBox")
G.TextBox_11.BackgroundTransparency = 1
G.TextBox_11.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_11.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_11.ZIndex = 8
G.TextBox_11.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_11.Text = "1.2"
G.TextBox_11.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_11.TextSize = 11
G.TextBox_11.ClearTextOnFocus = false
G.TextBox_11.Parent = G.Frame_109

G.Frame_110 = Instance.new("Frame")
G.Frame_110.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_110.BackgroundTransparency = 1
G.Frame_110.BorderSizePixel = 0
G.Frame_110.LayoutOrder = 902
G.Frame_110.Size = UDim2.new(1, 0, 0, 40)
G.Frame_110.Parent = G.VyzeccPage_Combat

G.TextLabel_66 = Instance.new("TextLabel")
G.TextLabel_66.BackgroundTransparency = 1
G.TextLabel_66.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_66.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_66.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_66.Text = "Ragdoll Steal"
G.TextLabel_66.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_66.TextSize = 11
G.TextLabel_66.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_66.Parent = G.Frame_110

G.VyzeccTogglePill_28 = Instance.new("Frame")
G.VyzeccTogglePill_28.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_28.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_28.BorderSizePixel = 0
G.VyzeccTogglePill_28.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_28.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_28.ZIndex = 7
G.VyzeccTogglePill_28:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_28.Parent = G.Frame_110

G.UICorner_100 = Instance.new("UICorner")
G.UICorner_100.CornerRadius = UDim.new(0, 9)
G.UICorner_100.Parent = G.VyzeccTogglePill_28

G.UIStroke_63 = Instance.new("UIStroke")
G.UIStroke_63.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_63.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_63.Parent = G.VyzeccTogglePill_28

G.VyzeccToggleDot_28 = Instance.new("Frame")
G.VyzeccToggleDot_28.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_28.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_28.BorderSizePixel = 0
G.VyzeccToggleDot_28.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_28.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_28.ZIndex = 8
G.VyzeccToggleDot_28.Parent = G.VyzeccTogglePill_28

G.UICorner_101 = Instance.new("UICorner")
G.UICorner_101.CornerRadius = UDim.new(0, 6)
G.UICorner_101.Parent = G.VyzeccToggleDot_28

G.TextButton_47 = Instance.new("TextButton")
G.TextButton_47.BackgroundTransparency = 1
G.TextButton_47.BorderSizePixel = 0
G.TextButton_47.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_47.ZIndex = 9
G.TextButton_47.Text = ""
G.TextButton_47.Parent = G.VyzeccTogglePill_28

G.Frame_111 = Instance.new("Frame")
G.Frame_111.BackgroundTransparency = 1
G.Frame_111.BorderSizePixel = 0
G.Frame_111.LayoutOrder = 900
G.Frame_111.Size = UDim2.new(1, 0, 0, 22)
G.Frame_111.Parent = G.VyzeccPage_Combat

G.TextLabel_67 = Instance.new("TextLabel")
G.TextLabel_67.BackgroundTransparency = 1
G.TextLabel_67.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_67.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_67.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_67.Text = "STEAL"
G.TextLabel_67.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_67.TextSize = 13
G.TextLabel_67.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_67.Parent = G.Frame_111

G.Frame_112 = Instance.new("Frame")
G.Frame_112.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_112.BackgroundTransparency = 1
G.Frame_112.BorderSizePixel = 0
G.Frame_112.LayoutOrder = 901
G.Frame_112.Size = UDim2.new(1, 0, 0, 40)
G.Frame_112.Parent = G.VyzeccPage_Combat

G.TextLabel_68 = Instance.new("TextLabel")
G.TextLabel_68.BackgroundTransparency = 1
G.TextLabel_68.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_68.Size = UDim2.new(1, -148, 1, 0)
G.TextLabel_68.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_68.Text = "Auto Steal"
G.TextLabel_68.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_68.TextSize = 11
G.TextLabel_68.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_68.Parent = G.Frame_112

G.TextButton_48 = Instance.new("TextButton")
G.TextButton_48.BackgroundColor3 = Color3.fromRGB(95, 40, 160)
G.TextButton_48.BorderSizePixel = 0
G.TextButton_48.Position = UDim2.new(1, -128, 0.5, -12)
G.TextButton_48.Size = UDim2.new(0, 58, 0, 24)
G.TextButton_48.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_48.Text = "75"
G.TextButton_48.TextColor3 = Color3.fromRGB(249, 240, 255)
G.TextButton_48.TextSize = 10
G.TextButton_48.Parent = G.Frame_112

G.UICorner_102 = Instance.new("UICorner")
G.UICorner_102.CornerRadius = UDim.new(0, 4)
G.UICorner_102.Parent = G.TextButton_48

G.UIStroke_64 = Instance.new("UIStroke")
G.UIStroke_64.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_64.Color = Color3.fromRGB(42, 18, 70)
G.UIStroke_64.Parent = G.TextButton_48

-- remove steal time mode button entirely from UI
G.TextButton_48.Visible = false
G.TextButton_48.Active = false
G.TextButton_48.Size = UDim2.new(0, 0, 0, 0)

-- lock duration row: hide editable steal duration (fixed 1.2)
if G.Frame_108 then
	G.Frame_108.Visible = false
	G.Frame_108.Size = UDim2.new(1, 0, 0, 0)
end
if G.TextBox_11 then
	G.TextBox_11.Text = "1.2"
	G.TextBox_11.TextEditable = false
end

G.VyzeccTogglePill_29 = Instance.new("Frame")
G.VyzeccTogglePill_29.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_29.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_29.BorderSizePixel = 0
G.VyzeccTogglePill_29.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_29.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_29.ZIndex = 7
G.VyzeccTogglePill_29:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_29.Parent = G.Frame_112

G.UICorner_103 = Instance.new("UICorner")
G.UICorner_103.CornerRadius = UDim.new(0, 9)
G.UICorner_103.Parent = G.VyzeccTogglePill_29

G.UIStroke_65 = Instance.new("UIStroke")
G.UIStroke_65.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_65.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_65.Parent = G.VyzeccTogglePill_29

G.VyzeccToggleDot_29 = Instance.new("Frame")
G.VyzeccToggleDot_29.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_29.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_29.BorderSizePixel = 0
G.VyzeccToggleDot_29.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_29.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_29.ZIndex = 8
G.VyzeccToggleDot_29.Parent = G.VyzeccTogglePill_29

G.UICorner_104 = Instance.new("UICorner")
G.UICorner_104.CornerRadius = UDim.new(0, 6)
G.UICorner_104.Parent = G.VyzeccToggleDot_29

G.TextButton_49 = Instance.new("TextButton")
G.TextButton_49.BackgroundTransparency = 1
G.TextButton_49.BorderSizePixel = 0
G.TextButton_49.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_49.ZIndex = 9
G.TextButton_49.Text = ""
G.TextButton_49.Parent = G.VyzeccTogglePill_29

G.VyzeccPage_Interface = Instance.new("ScrollingFrame")
G.VyzeccPage_Interface.Name = "VyzeccPage_Interface"
G.VyzeccPage_Interface.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccPage_Interface.BackgroundTransparency = 1
G.VyzeccPage_Interface.BorderSizePixel = 0
G.VyzeccPage_Interface.Position = UDim2.new(0, 3, 0, 92)
G.VyzeccPage_Interface.Size = UDim2.new(1, -3, 1, -92)
G.VyzeccPage_Interface.Visible = false
G.VyzeccPage_Interface.ZIndex = 3
G.VyzeccPage_Interface.AutomaticCanvasSize = Enum.AutomaticSize.Y
G.VyzeccPage_Interface.CanvasSize = UDim2.new(0, 0, 0, 0)
G.VyzeccPage_Interface.ScrollBarImageColor3 = Color3.fromRGB(160, 80, 220)
G.VyzeccPage_Interface.ScrollBarImageTransparency = 0.5
G.VyzeccPage_Interface.ScrollBarThickness = 3
G.VyzeccPage_Interface.Parent = G.MainOuter

G.UIListLayout_8 = Instance.new("UIListLayout")
G.UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
G.UIListLayout_8.Parent = G.VyzeccPage_Interface

G.UIPadding_7 = Instance.new("UIPadding")
G.UIPadding_7.PaddingBottom = UDim.new(0, 12)
G.UIPadding_7.PaddingLeft = UDim.new(0, 8)
G.UIPadding_7.PaddingRight = UDim.new(0, 8)
G.UIPadding_7.PaddingTop = UDim.new(0, 6)
G.UIPadding_7.Parent = G.VyzeccPage_Interface

G.Frame_116 = Instance.new("Frame")
G.Frame_116.BackgroundTransparency = 1
G.Frame_116.BorderSizePixel = 0
G.Frame_116.LayoutOrder = 3
G.Frame_116.Size = UDim2.new(1, 0, 0, 28)
G.Frame_116.Parent = G.VyzeccPage_Interface

G.TextLabel_70 = Instance.new("TextLabel")
G.TextLabel_70.BackgroundTransparency = 1
G.TextLabel_70.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_70.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_70.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_70.Text = "INTERFACE"
G.TextLabel_70.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_70.TextSize = 13
G.TextLabel_70.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_70.Parent = G.Frame_116

G.Frame_117 = Instance.new("Frame")
G.Frame_117.BackgroundTransparency = 1
G.Frame_117.BorderSizePixel = 0
G.Frame_117.LayoutOrder = 104
G.Frame_117.Size = UDim2.new(1, 0, 0, 2)
G.Frame_117.Parent = G.VyzeccPage_Interface

G.ButtonsHeader = Instance.new("Frame")
G.ButtonsHeader.Name = "ButtonsHeader"
G.ButtonsHeader.BackgroundTransparency = 1
G.ButtonsHeader.BorderSizePixel = 0
G.ButtonsHeader.LayoutOrder = 100
G.ButtonsHeader.Size = UDim2.new(1, 0, 0, 28)
G.ButtonsHeader.Parent = G.VyzeccPage_Interface

G.TextLabel_71 = Instance.new("TextLabel")
G.TextLabel_71.BackgroundTransparency = 1
G.TextLabel_71.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_71.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_71.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_71.Text = "BUTTONS"
G.TextLabel_71.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_71.TextSize = 13
G.TextLabel_71.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_71.Parent = G.ButtonsHeader

G.Frame_118 = Instance.new("Frame")
G.Frame_118.BackgroundTransparency = 1
G.Frame_118.BorderSizePixel = 0
G.Frame_118.LayoutOrder = 4
G.Frame_118.Size = UDim2.new(1, 0, 0, 38)
G.Frame_118.Parent = G.VyzeccPage_Interface

G.TextLabel_72 = Instance.new("TextLabel")
G.TextLabel_72.BackgroundTransparency = 1
G.TextLabel_72.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_72.Size = UDim2.new(1, -120, 1, 0)
G.TextLabel_72.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_72.Text = "UI Size"
G.TextLabel_72.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_72.TextSize = 11
G.TextLabel_72.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_72.Parent = G.Frame_118

G.Frame_119 = Instance.new("Frame")
G.Frame_119.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_119.BorderSizePixel = 0
G.Frame_119.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_119.Size = UDim2.new(0, 54, 0, 26)
G.Frame_119.Parent = G.Frame_118

G.UICorner_113 = Instance.new("UICorner")
G.UICorner_113.CornerRadius = UDim.new(0, 6)
G.UICorner_113.Parent = G.Frame_119

G.UIStroke_74 = Instance.new("UIStroke")
G.UIStroke_74.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_74.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_74.Parent = G.Frame_119

G.TextBox_12 = Instance.new("TextBox")
G.TextBox_12.BackgroundTransparency = 1
G.TextBox_12.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_12.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_12.ZIndex = 8
G.TextBox_12.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_12.Text = "0.7"
G.TextBox_12.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_12.TextSize = 11
G.TextBox_12.ClearTextOnFocus = false
G.TextBox_12.Parent = G.Frame_119

G.SizeDropdown_3 = Instance.new("TextButton")
G.SizeDropdown_3.Name = "SizeDropdown"
G.SizeDropdown_3.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.SizeDropdown_3.BorderSizePixel = 0
G.SizeDropdown_3.Position = UDim2.new(1, -106, 0.5, -11)
G.SizeDropdown_3.Size = UDim2.new(0, 34, 0, 22)
G.SizeDropdown_3.ZIndex = 9
G.SizeDropdown_3.Text = ""
G.SizeDropdown_3.Parent = G.Frame_118

G.UICorner_114 = Instance.new("UICorner")
G.UICorner_114.CornerRadius = UDim.new(0, 4)
G.UICorner_114.Parent = G.SizeDropdown_3

G.UIStroke_75 = Instance.new("UIStroke")
G.UIStroke_75.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_75.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_75.Parent = G.SizeDropdown_3

G.Arrow_3 = Instance.new("TextLabel")
G.Arrow_3.Name = "Arrow"
G.Arrow_3.BackgroundTransparency = 1
G.Arrow_3.Size = UDim2.new(1, 0, 1, 0)
G.Arrow_3.ZIndex = 10
G.Arrow_3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.Arrow_3.Text = "▼"
G.Arrow_3.TextColor3 = Color3.fromRGB(150, 100, 200)
G.Arrow_3.TextSize = 16
G.Arrow_3.Parent = G.SizeDropdown_3

G.Frame_120 = Instance.new("Frame")
G.Frame_120.BackgroundTransparency = 1
G.Frame_120.BorderSizePixel = 0
G.Frame_120.ClipsDescendants = true
G.Frame_120.LayoutOrder = 5
G.Frame_120.Size = UDim2.new(1, 0, 0, 38)
G.Frame_120.Visible = false
G.Frame_120.Parent = G.VyzeccPage_Interface

G.TextLabel_73 = Instance.new("TextLabel")
G.TextLabel_73.BackgroundTransparency = 1
G.TextLabel_73.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_73.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_73.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_73.Text = "Mobile Buttons Size"
G.TextLabel_73.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_73.TextSize = 11
G.TextLabel_73.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_73.Parent = G.Frame_120

G.Frame_121 = Instance.new("Frame")
G.Frame_121.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_121.BorderSizePixel = 0
G.Frame_121.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_121.Size = UDim2.new(0, 54, 0, 26)
G.Frame_121.Parent = G.Frame_120

G.UICorner_115 = Instance.new("UICorner")
G.UICorner_115.CornerRadius = UDim.new(0, 6)
G.UICorner_115.Parent = G.Frame_121

G.UIStroke_76 = Instance.new("UIStroke")
G.UIStroke_76.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_76.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_76.Parent = G.Frame_121

G.TextBox_13 = Instance.new("TextBox")
G.TextBox_13.BackgroundTransparency = 1
G.TextBox_13.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_13.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_13.ZIndex = 8
G.TextBox_13.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_13.Text = "0.7"
G.TextBox_13.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_13.TextSize = 11
G.TextBox_13.ClearTextOnFocus = false
G.TextBox_13.Parent = G.Frame_121

G.Frame_122 = Instance.new("Frame")
G.Frame_122.BackgroundTransparency = 1
G.Frame_122.BorderSizePixel = 0
G.Frame_122.ClipsDescendants = true
G.Frame_122.LayoutOrder = 6
G.Frame_122.Size = UDim2.new(1, 0, 0, 38)
G.Frame_122.Visible = false
G.Frame_122.Parent = G.VyzeccPage_Interface

G.TextLabel_74 = Instance.new("TextLabel")
G.TextLabel_74.BackgroundTransparency = 1
G.TextLabel_74.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_74.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_74.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_74.Text = "Steal Bar Size"
G.TextLabel_74.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_74.TextSize = 11
G.TextLabel_74.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_74.Parent = G.Frame_122

G.Frame_123 = Instance.new("Frame")
G.Frame_123.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_123.BorderSizePixel = 0
G.Frame_123.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_123.Size = UDim2.new(0, 54, 0, 26)
G.Frame_123.Parent = G.Frame_122

G.UICorner_116 = Instance.new("UICorner")
G.UICorner_116.CornerRadius = UDim.new(0, 6)
G.UICorner_116.Parent = G.Frame_123

G.UIStroke_77 = Instance.new("UIStroke")
G.UIStroke_77.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_77.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_77.Parent = G.Frame_123

G.TextBox_14 = Instance.new("TextBox")
G.TextBox_14.BackgroundTransparency = 1
G.TextBox_14.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_14.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_14.ZIndex = 8
G.TextBox_14.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_14.Text = "0.7"
G.TextBox_14.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_14.TextSize = 11
G.TextBox_14.ClearTextOnFocus = false
G.TextBox_14.Parent = G.Frame_123

G.Frame_124 = Instance.new("Frame")
G.Frame_124.BackgroundTransparency = 1
G.Frame_124.BorderSizePixel = 0
G.Frame_124.ClipsDescendants = true
G.Frame_124.LayoutOrder = 7
G.Frame_124.Size = UDim2.new(1, 0, 0, 38)
G.Frame_124.Parent = G.VyzeccPage_Interface

G.TextLabel_76 = Instance.new("TextLabel")
G.TextLabel_76.BackgroundTransparency = 1
G.TextLabel_76.Position = UDim2.new(0, 14, 0, 0)
G.TextLabel_76.Size = UDim2.new(1, -78, 1, 0)
G.TextLabel_76.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_76.Text = "OpenUi Button"
G.TextLabel_76.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_76.TextSize = 11
G.TextLabel_76.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_76.Parent = G.Frame_124

G.Frame_126 = Instance.new("Frame")
G.Frame_126.BackgroundColor3 = Color3.fromRGB(14, 8, 28)
G.Frame_126.BorderSizePixel = 0
G.Frame_126.Position = UDim2.new(1, -64, 0.5, -13)
G.Frame_126.Size = UDim2.new(0, 54, 0, 26)
G.Frame_126.Parent = G.Frame_124

G.UICorner_118 = Instance.new("UICorner")
G.UICorner_118.CornerRadius = UDim.new(0, 6)
G.UICorner_118.Parent = G.Frame_126

G.UIStroke_79 = Instance.new("UIStroke")
G.UIStroke_79.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_79.Color = Color3.fromRGB(45, 20, 75)
G.UIStroke_79.Parent = G.Frame_126

G.TextBox_16 = Instance.new("TextBox")
G.TextBox_16.BackgroundTransparency = 1
G.TextBox_16.Position = UDim2.new(0, 3, 0, 0)
G.TextBox_16.Size = UDim2.new(1, -6, 1, 0)
G.TextBox_16.ZIndex = 8
G.TextBox_16.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_16.Text = "0.7"
G.TextBox_16.TextColor3 = Color3.fromRGB(150, 100, 200)
G.TextBox_16.TextSize = 11
G.TextBox_16.ClearTextOnFocus = false
G.TextBox_16.Parent = G.Frame_126

G.Frame_125 = Instance.new("Frame")
G.Frame_125.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_125.BackgroundTransparency = 1
G.Frame_125.BorderSizePixel = 0
G.Frame_125.LayoutOrder = 8
G.Frame_125.Size = UDim2.new(1, 0, 0, 40)
G.Frame_125.Parent = G.VyzeccPage_Interface

G.TextLabel_75 = Instance.new("TextLabel")
G.TextLabel_75.BackgroundTransparency = 1
G.TextLabel_75.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_75.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_75.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_75.Text = "Remove UI Image"
G.TextLabel_75.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_75.TextSize = 11
G.TextLabel_75.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_75.Parent = G.Frame_125

G.VyzeccTogglePill_30 = Instance.new("Frame")
G.VyzeccTogglePill_30.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_30.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_30.BorderSizePixel = 0
G.VyzeccTogglePill_30.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_30.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_30.ZIndex = 7
G.VyzeccTogglePill_30:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_30.Parent = G.Frame_125

G.UICorner_117 = Instance.new("UICorner")
G.UICorner_117.CornerRadius = UDim.new(0, 9)
G.UICorner_117.Parent = G.VyzeccTogglePill_30

G.UIStroke_78 = Instance.new("UIStroke")
G.UIStroke_78.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_78.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_78.Parent = G.VyzeccTogglePill_30

G.VyzeccToggleDot_30 = Instance.new("Frame")
G.VyzeccToggleDot_30.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_30.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_30.BorderSizePixel = 0
G.VyzeccToggleDot_30.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_30.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_30.ZIndex = 8
G.VyzeccToggleDot_30.Parent = G.VyzeccTogglePill_30

G.UICorner_118 = Instance.new("UICorner")
G.UICorner_118.CornerRadius = UDim.new(0, 6)
G.UICorner_118.Parent = G.VyzeccToggleDot_30

G.TextButton_52 = Instance.new("TextButton")
G.TextButton_52.BackgroundTransparency = 1
G.TextButton_52.BorderSizePixel = 0
G.TextButton_52.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_52.ZIndex = 9
G.TextButton_52.Text = ""
G.TextButton_52.Parent = G.VyzeccTogglePill_30

G.Frame_126 = Instance.new("Frame")
G.Frame_126.BackgroundTransparency = 1
G.Frame_126.BorderSizePixel = 0
G.Frame_126.LayoutOrder = 111
G.Frame_126.Size = UDim2.new(1, 0, 0, 2)
G.Frame_126.Parent = G.VyzeccPage_Interface

G.Frame_127 = Instance.new("Frame")
G.Frame_127.BackgroundTransparency = 1
G.Frame_127.BorderSizePixel = 0
G.Frame_127.LayoutOrder = 112
G.Frame_127.Size = UDim2.new(1, 0, 0, 2)
G.Frame_127.Parent = G.VyzeccPage_Interface

G.Frame_128 = Instance.new("Frame")
G.Frame_128.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_128.BackgroundTransparency = 1
G.Frame_128.BorderSizePixel = 0
G.Frame_128.LayoutOrder = 101
G.Frame_128.Size = UDim2.new(1, 0, 0, 40)
G.Frame_128.Parent = G.VyzeccPage_Interface

G.TextLabel_76 = Instance.new("TextLabel")
G.TextLabel_76.BackgroundTransparency = 1
G.TextLabel_76.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_76.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_76.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_76.Text = "Hide Buttons"
G.TextLabel_76.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_76.TextSize = 11
G.TextLabel_76.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_76.Parent = G.Frame_128

G.VyzeccTogglePill_31 = Instance.new("Frame")
G.VyzeccTogglePill_31.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_31.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_31.BorderSizePixel = 0
G.VyzeccTogglePill_31.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_31.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_31.ZIndex = 7
G.VyzeccTogglePill_31:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_31.Parent = G.Frame_128

G.UICorner_119 = Instance.new("UICorner")
G.UICorner_119.CornerRadius = UDim.new(0, 9)
G.UICorner_119.Parent = G.VyzeccTogglePill_31

G.UIStroke_79 = Instance.new("UIStroke")
G.UIStroke_79.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_79.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_79.Parent = G.VyzeccTogglePill_31

G.VyzeccToggleDot_31 = Instance.new("Frame")
G.VyzeccToggleDot_31.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_31.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_31.BorderSizePixel = 0
G.VyzeccToggleDot_31.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_31.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_31.ZIndex = 8
G.VyzeccToggleDot_31.Parent = G.VyzeccTogglePill_31

G.UICorner_120 = Instance.new("UICorner")
G.UICorner_120.CornerRadius = UDim.new(0, 6)
G.UICorner_120.Parent = G.VyzeccToggleDot_31

G.TextButton_53 = Instance.new("TextButton")
G.TextButton_53.BackgroundTransparency = 1
G.TextButton_53.BorderSizePixel = 0
G.TextButton_53.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_53.ZIndex = 9
G.TextButton_53.Text = ""
G.TextButton_53.Parent = G.VyzeccTogglePill_31

G.Frame_129 = Instance.new("Frame")
G.Frame_129.BackgroundTransparency = 1
G.Frame_129.BorderSizePixel = 0
G.Frame_129.LayoutOrder = 114
G.Frame_129.Size = UDim2.new(1, 0, 0, 2)
G.Frame_129.Parent = G.VyzeccPage_Interface

G.Frame_130 = Instance.new("Frame")
G.Frame_130.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_130.BackgroundTransparency = 1
G.Frame_130.BorderSizePixel = 0
G.Frame_130.LayoutOrder = 102
G.Frame_130.Size = UDim2.new(1, 0, 0, 40)
G.Frame_130.Parent = G.VyzeccPage_Interface

G.TextLabel_77 = Instance.new("TextLabel")
G.TextLabel_77.BackgroundTransparency = 1
G.TextLabel_77.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_77.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_77.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_77.Text = "Hide Button Panel"
G.TextLabel_77.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_77.TextSize = 11
G.TextLabel_77.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_77.Parent = G.Frame_130

G.VyzeccTogglePill_32 = Instance.new("Frame")
G.VyzeccTogglePill_32.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_32.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_32.BorderSizePixel = 0
G.VyzeccTogglePill_32.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_32.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_32.ZIndex = 7
G.VyzeccTogglePill_32:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_32.Parent = G.Frame_130

G.UICorner_121 = Instance.new("UICorner")
G.UICorner_121.CornerRadius = UDim.new(0, 9)
G.UICorner_121.Parent = G.VyzeccTogglePill_32

G.UIStroke_80 = Instance.new("UIStroke")
G.UIStroke_80.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_80.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_80.Parent = G.VyzeccTogglePill_32

G.VyzeccToggleDot_32 = Instance.new("Frame")
G.VyzeccToggleDot_32.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_32.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_32.BorderSizePixel = 0
G.VyzeccToggleDot_32.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_32.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_32.ZIndex = 8
G.VyzeccToggleDot_32.Parent = G.VyzeccTogglePill_32

G.UICorner_122 = Instance.new("UICorner")
G.UICorner_122.CornerRadius = UDim.new(0, 6)
G.UICorner_122.Parent = G.VyzeccToggleDot_32

G.TextButton_54 = Instance.new("TextButton")
G.TextButton_54.BackgroundTransparency = 1
G.TextButton_54.BorderSizePixel = 0
G.TextButton_54.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_54.ZIndex = 9
G.TextButton_54.Text = ""
G.TextButton_54.Parent = G.VyzeccTogglePill_32

G.Frame_131 = Instance.new("Frame")
G.Frame_131.BackgroundTransparency = 1
G.Frame_131.BorderSizePixel = 0
G.Frame_131.LayoutOrder = 116
G.Frame_131.Size = UDim2.new(1, 0, 0, 2)
G.Frame_131.Parent = G.VyzeccPage_Interface

G.Frame_132 = Instance.new("Frame")
G.Frame_132.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_132.BackgroundTransparency = 1
G.Frame_132.BorderSizePixel = 0
G.Frame_132.LayoutOrder = 103
G.Frame_132.Size = UDim2.new(1, 0, 0, 40)
G.Frame_132.Parent = G.VyzeccPage_Interface

G.TextLabel_78 = Instance.new("TextLabel")
G.TextLabel_78.BackgroundTransparency = 1
G.TextLabel_78.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_78.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_78.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_78.Text = "Unlock Button Panel"
G.TextLabel_78.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_78.TextSize = 11
G.TextLabel_78.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_78.Parent = G.Frame_132

G.VyzeccTogglePill_33 = Instance.new("Frame")
G.VyzeccTogglePill_33.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_33.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_33.BorderSizePixel = 0
G.VyzeccTogglePill_33.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_33.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_33.ZIndex = 7
G.VyzeccTogglePill_33:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_33.Parent = G.Frame_132

G.UICorner_123 = Instance.new("UICorner")
G.UICorner_123.CornerRadius = UDim.new(0, 9)
G.UICorner_123.Parent = G.VyzeccTogglePill_33

G.UIStroke_81 = Instance.new("UIStroke")
G.UIStroke_81.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_81.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_81.Parent = G.VyzeccTogglePill_33

G.VyzeccToggleDot_33 = Instance.new("Frame")
G.VyzeccToggleDot_33.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_33.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_33.BorderSizePixel = 0
G.VyzeccToggleDot_33.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_33.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_33.ZIndex = 8
G.VyzeccToggleDot_33.Parent = G.VyzeccTogglePill_33

G.UICorner_124 = Instance.new("UICorner")
G.UICorner_124.CornerRadius = UDim.new(0, 6)
G.UICorner_124.Parent = G.VyzeccToggleDot_33

G.TextButton_55 = Instance.new("TextButton")
G.TextButton_55.BackgroundTransparency = 1
G.TextButton_55.BorderSizePixel = 0
G.TextButton_55.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_55.ZIndex = 9
G.TextButton_55.Text = ""
G.TextButton_55.Parent = G.VyzeccTogglePill_33

G.Frame_133 = Instance.new("Frame")
G.Frame_133.BackgroundTransparency = 1
G.Frame_133.BorderSizePixel = 0
G.Frame_133.LayoutOrder = 118
G.Frame_133.Size = UDim2.new(1, 0, 0, 2)
G.Frame_133.Parent = G.VyzeccPage_Interface

G.Frame_134 = Instance.new("Frame")
G.Frame_134.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_134.BackgroundTransparency = 1
G.Frame_134.BorderSizePixel = 0
G.Frame_134.LayoutOrder = 104
G.Frame_134.Size = UDim2.new(1, 0, 0, 40)
G.Frame_134.Parent = G.VyzeccPage_Interface

G.TextLabel_79 = Instance.new("TextLabel")
G.TextLabel_79.BackgroundTransparency = 1
G.TextLabel_79.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_79.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_79.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_79.Text = "Unlock Buttons"
G.TextLabel_79.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_79.TextSize = 11
G.TextLabel_79.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_79.Parent = G.Frame_134

G.VyzeccTogglePill_34 = Instance.new("Frame")
G.VyzeccTogglePill_34.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_34.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_34.BorderSizePixel = 0
G.VyzeccTogglePill_34.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_34.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_34.ZIndex = 7
G.VyzeccTogglePill_34:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_34.Parent = G.Frame_134

G.UICorner_125 = Instance.new("UICorner")
G.UICorner_125.CornerRadius = UDim.new(0, 9)
G.UICorner_125.Parent = G.VyzeccTogglePill_34

G.UIStroke_82 = Instance.new("UIStroke")
G.UIStroke_82.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_82.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_82.Parent = G.VyzeccTogglePill_34

G.VyzeccToggleDot_34 = Instance.new("Frame")
G.VyzeccToggleDot_34.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_34.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_34.BorderSizePixel = 0
G.VyzeccToggleDot_34.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_34.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_34.ZIndex = 8
G.VyzeccToggleDot_34.Parent = G.VyzeccTogglePill_34

G.UICorner_126 = Instance.new("UICorner")
G.UICorner_126.CornerRadius = UDim.new(0, 6)
G.UICorner_126.Parent = G.VyzeccToggleDot_34

G.TextButton_56 = Instance.new("TextButton")
G.TextButton_56.BackgroundTransparency = 1
G.TextButton_56.BorderSizePixel = 0
G.TextButton_56.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_56.ZIndex = 9
G.TextButton_56.Text = ""
G.TextButton_56.Parent = G.VyzeccTogglePill_34

G.Frame_135 = Instance.new("Frame")
G.Frame_135.BackgroundTransparency = 1
G.Frame_135.BorderSizePixel = 0
G.Frame_135.LayoutOrder = 120
G.Frame_135.Size = UDim2.new(1, 0, 0, 2)
G.Frame_135.Parent = G.VyzeccPage_Interface

G.Frame_136 = Instance.new("Frame")
G.Frame_136.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_136.BackgroundTransparency = 1
G.Frame_136.BorderSizePixel = 0
G.Frame_136.LayoutOrder = 8
G.Frame_136.Size = UDim2.new(1, 0, 0, 40)
G.Frame_136.Parent = G.VyzeccPage_Interface

G.TextLabel_80 = Instance.new("TextLabel")
G.TextLabel_80.BackgroundTransparency = 1
G.TextLabel_80.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_80.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_80.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_80.Text = "Lock UI"
G.TextLabel_80.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_80.TextSize = 11
G.TextLabel_80.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_80.Parent = G.Frame_136

G.VyzeccTogglePill_35 = Instance.new("Frame")
G.VyzeccTogglePill_35.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_35.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_35.BorderSizePixel = 0
G.VyzeccTogglePill_35.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_35.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_35.ZIndex = 7
G.VyzeccTogglePill_35:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_35.Parent = G.Frame_136

G.UICorner_127 = Instance.new("UICorner")
G.UICorner_127.CornerRadius = UDim.new(0, 9)
G.UICorner_127.Parent = G.VyzeccTogglePill_35

G.UIStroke_83 = Instance.new("UIStroke")
G.UIStroke_83.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_83.Color = Color3.fromRGB(55, 25, 90)
G.UIStroke_83.Parent = G.VyzeccTogglePill_35

G.VyzeccToggleDot_35 = Instance.new("Frame")
G.VyzeccToggleDot_35.Name = "VyzeccToggleDot"
G.VyzeccToggleDot_35.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
G.VyzeccToggleDot_35.BorderSizePixel = 0
G.VyzeccToggleDot_35.Position = UDim2.new(0, 3, 0.5, -6)
G.VyzeccToggleDot_35.Size = UDim2.new(0, 12, 0, 12)
G.VyzeccToggleDot_35.ZIndex = 8
G.VyzeccToggleDot_35.Parent = G.VyzeccTogglePill_35

G.UICorner_128 = Instance.new("UICorner")
G.UICorner_128.CornerRadius = UDim.new(0, 6)
G.UICorner_128.Parent = G.VyzeccToggleDot_35

G.TextButton_57 = Instance.new("TextButton")
G.TextButton_57.BackgroundTransparency = 1
G.TextButton_57.BorderSizePixel = 0
G.TextButton_57.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_57.ZIndex = 9
G.TextButton_57.Text = ""
G.TextButton_57.Parent = G.VyzeccTogglePill_35

G.Frame_PromoterMode = Instance.new("Frame")
G.Frame_PromoterMode.Name = "Frame_PromoterMode"
G.Frame_PromoterMode.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_PromoterMode.BackgroundTransparency = 1
G.Frame_PromoterMode.BorderSizePixel = 0
G.Frame_PromoterMode.LayoutOrder = 9
G.Frame_PromoterMode.Size = UDim2.new(1, 0, 0, 40)
G.Frame_PromoterMode.Parent = G.VyzeccPage_Interface

G.TextLabel_PromoterMode = Instance.new("TextLabel")
G.TextLabel_PromoterMode.BackgroundTransparency = 1
G.TextLabel_PromoterMode.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_PromoterMode.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_PromoterMode.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_PromoterMode.Text = "Promoter Mode"
G.TextLabel_PromoterMode.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_PromoterMode.TextSize = 11
G.TextLabel_PromoterMode.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_PromoterMode.Parent = G.Frame_PromoterMode

G.VyzeccTogglePill_Promoter = Instance.new("Frame")
G.VyzeccTogglePill_Promoter.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_Promoter.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_Promoter.BorderSizePixel = 0
G.VyzeccTogglePill_Promoter.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_Promoter.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_Promoter.ZIndex = 7
G.VyzeccTogglePill_Promoter:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_Promoter.Parent = G.Frame_PromoterMode

local promoterCorner = Instance.new("UICorner")
promoterCorner.CornerRadius = UDim.new(0, 9)
promoterCorner.Parent = G.VyzeccTogglePill_Promoter
local promoterStroke = Instance.new("UIStroke")
promoterStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
promoterStroke.Color = Color3.fromRGB(55, 25, 90)
promoterStroke.Parent = G.VyzeccTogglePill_Promoter
local promoterDot = Instance.new("Frame")
promoterDot.Name = "VyzeccToggleDot"
promoterDot.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
promoterDot.BorderSizePixel = 0
promoterDot.Position = UDim2.new(0, 3, 0.5, -6)
promoterDot.Size = UDim2.new(0, 12, 0, 12)
promoterDot.ZIndex = 8
promoterDot.Parent = G.VyzeccTogglePill_Promoter
local promoterDotCorner = Instance.new("UICorner")
promoterDotCorner.CornerRadius = UDim.new(0, 6)
promoterDotCorner.Parent = promoterDot
local promoterBtn = Instance.new("TextButton")
promoterBtn.BackgroundTransparency = 1
promoterBtn.BorderSizePixel = 0
promoterBtn.Size = UDim2.new(1, 0, 1, 0)
promoterBtn.ZIndex = 9
promoterBtn.Text = ""
promoterBtn.Parent = G.VyzeccTogglePill_Promoter

G.Frame_137 = Instance.new("Frame")
G.Frame_137.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_137.BackgroundTransparency = 1
G.Frame_137.BorderSizePixel = 0
G.Frame_137.LayoutOrder = 105
G.Frame_137.Size = UDim2.new(1, 0, 0, 34)
G.Frame_137.Parent = G.VyzeccPage_Interface

G.TextLabel_81 = Instance.new("TextLabel")
G.TextLabel_81.BackgroundTransparency = 1
G.TextLabel_81.Position = UDim2.new(0, 12, 0.5, -7)
G.TextLabel_81.Size = UDim2.new(0, 100, 0, 14)
G.TextLabel_81.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_81.Text = "Reset Buttons"
G.TextLabel_81.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_81.TextSize = 11
G.TextLabel_81.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_81.Parent = G.Frame_137

G.TextButton_58 = Instance.new("TextButton")
G.TextButton_58.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.TextButton_58.BorderSizePixel = 0
G.TextButton_58.Position = UDim2.new(1, -88, 0.5, -13)
G.TextButton_58.Size = UDim2.new(0, 80, 0, 26)
G.TextButton_58.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_58.Text = "Reset"
G.TextButton_58.TextColor3 = Color3.fromRGB(203, 185, 215)
G.TextButton_58.TextSize = 11
G.TextButton_58.Parent = G.Frame_137

G.UICorner_129 = Instance.new("UICorner")
G.UICorner_129.CornerRadius = UDim.new(0, 4)
G.UICorner_129.Parent = G.TextButton_58

G.UIStroke_84 = Instance.new("UIStroke")
G.UIStroke_84.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_84.Color = Color3.fromRGB(61, 20, 90)
G.UIStroke_84.Parent = G.TextButton_58

G.Frame_138 = Instance.new("Frame")
G.Frame_138.BackgroundTransparency = 1
G.Frame_138.BorderSizePixel = 0
G.Frame_138.LayoutOrder = 123
G.Frame_138.Size = UDim2.new(1, 0, 0, 2)
G.Frame_138.Parent = G.VyzeccPage_Interface

G.Frame_139 = Instance.new("Frame")
G.Frame_139.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
G.Frame_139.BackgroundTransparency = 1
G.Frame_139.BorderSizePixel = 0
G.Frame_139.LayoutOrder = 107
G.Frame_139.Size = UDim2.new(1, 0, 0, 34)
G.Frame_139.Parent = G.VyzeccPage_Interface

G.TextLabel_82 = Instance.new("TextLabel")
G.TextLabel_82.BackgroundTransparency = 1
G.TextLabel_82.Position = UDim2.new(0, 12, 0.5, -7)
G.TextLabel_82.Size = UDim2.new(0, 100, 0, 14)
G.TextLabel_82.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_82.Text = "Reset Config"
G.TextLabel_82.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_82.TextSize = 11
G.TextLabel_82.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_82.Parent = G.Frame_139

G.TextButton_59 = Instance.new("TextButton")
G.TextButton_59.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.TextButton_59.BorderSizePixel = 0
G.TextButton_59.Position = UDim2.new(1, -88, 0.5, -13)
G.TextButton_59.Size = UDim2.new(0, 80, 0, 26)
G.TextButton_59.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_59.Text = "Reset"
G.TextButton_59.TextColor3 = Color3.fromRGB(203, 185, 215)
G.TextButton_59.TextSize = 11
G.TextButton_59.Parent = G.Frame_139

G.UICorner_130 = Instance.new("UICorner")
G.UICorner_130.CornerRadius = UDim.new(0, 4)
G.UICorner_130.Parent = G.TextButton_59

G.UIStroke_85 = Instance.new("UIStroke")
G.UIStroke_85.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_85.Color = Color3.fromRGB(61, 20, 90)
G.UIStroke_85.Parent = G.TextButton_59

G.Frame_140 = Instance.new("Frame")
G.Frame_140.BackgroundTransparency = 1
G.Frame_140.BorderSizePixel = 0
G.Frame_140.LayoutOrder = 125
G.Frame_140.Size = UDim2.new(1, 0, 0, 2)
G.Frame_140.Parent = G.VyzeccPage_Interface

G.Frame_141 = Instance.new("Frame")
G.Frame_141.BackgroundTransparency = 1
G.Frame_141.BorderSizePixel = 0
G.Frame_141.LayoutOrder = 106
G.Frame_141.Size = UDim2.new(1, 0, 0, 28)
G.Frame_141.Parent = G.VyzeccPage_Interface

G.TextLabel_83 = Instance.new("TextLabel")
G.TextLabel_83.BackgroundTransparency = 1
G.TextLabel_83.Position = UDim2.new(0, 8, 0, 0)
G.TextLabel_83.Size = UDim2.new(1, -14, 1, 0)
G.TextLabel_83.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_83.Text = "CONFIG"
G.TextLabel_83.TextColor3 = Color3.fromRGB(160, 80, 220)
G.TextLabel_83.TextSize = 13
G.TextLabel_83.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_83.Parent = G.Frame_141

G.Frame_142 = Instance.new("Frame")
G.Frame_142.BackgroundTransparency = 1
G.Frame_142.BorderSizePixel = 0
G.Frame_142.LayoutOrder = 127
G.Frame_142.Size = UDim2.new(1, 0, 0, 2)
G.Frame_142.Parent = G.VyzeccPage_Interface

G.Frame_143 = Instance.new("Frame")
G.Frame_143.BackgroundTransparency = 1
G.Frame_143.BorderSizePixel = 0
G.Frame_143.LayoutOrder = 108
G.Frame_143.Size = UDim2.new(1, 0, 0, 34)
G.Frame_143.Parent = G.VyzeccPage_Interface

G.Frame_144 = Instance.new("Frame")
G.Frame_144.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.Frame_144.BorderSizePixel = 0
G.Frame_144.Position = UDim2.new(0, 0, 0, 4)
G.Frame_144.Size = UDim2.new(1, 0, 0, 26)
G.Frame_144.Parent = G.Frame_143

G.UICorner_131 = Instance.new("UICorner")
G.UICorner_131.CornerRadius = UDim.new(0, 2)
G.UICorner_131.Parent = G.Frame_144

G.UIStroke_86 = Instance.new("UIStroke")
G.UIStroke_86.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_86.Color = Color3.fromRGB(58, 18, 85)
G.UIStroke_86.Parent = G.Frame_144

G.TextBox_15 = Instance.new("TextBox")
G.TextBox_15.BackgroundTransparency = 1
G.TextBox_15.Position = UDim2.new(0, 4, 0, 0)
G.TextBox_15.Size = UDim2.new(1, -8, 1, 0)
G.TextBox_15.ZIndex = 9
G.TextBox_15.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextBox_15.Text = ""
G.TextBox_15.TextColor3 = Color3.fromRGB(229, 220, 235)
G.TextBox_15.TextSize = 11
G.TextBox_15.TextXAlignment = Enum.TextXAlignment.Left
G.TextBox_15.ClearTextOnFocus = false
G.TextBox_15.PlaceholderColor3 = Color3.fromRGB(70, 28, 100)
G.TextBox_15.PlaceholderText = "Config name..."
G.TextBox_15.Parent = G.Frame_144

G.Frame_145 = Instance.new("Frame")
G.Frame_145.BackgroundTransparency = 1
G.Frame_145.BorderSizePixel = 0
G.Frame_145.LayoutOrder = 129
G.Frame_145.Size = UDim2.new(1, 0, 0, 2)
G.Frame_145.Parent = G.VyzeccPage_Interface

G.Frame_146 = Instance.new("Frame")
G.Frame_146.BackgroundTransparency = 1
G.Frame_146.BorderSizePixel = 0
G.Frame_146.LayoutOrder = 109
G.Frame_146.Size = UDim2.new(1, 0, 0, 34)
G.Frame_146.Parent = G.VyzeccPage_Interface

G.TextButton_60 = Instance.new("TextButton")
G.TextButton_60.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.TextButton_60.BorderSizePixel = 0
G.TextButton_60.Position = UDim2.new(0, 0, 0, 3)
G.TextButton_60.Size = UDim2.new(0.48, -3, 0, 28)
G.TextButton_60.ZIndex = 9
G.TextButton_60.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_60.Text = "Save Config"
G.TextButton_60.TextColor3 = Color3.fromRGB(203, 185, 215)
G.TextButton_60.TextSize = 11
G.TextButton_60.Parent = G.Frame_146
G.TextButton_60.Position = UDim2.new(0, 0, 0, 3)
G.TextButton_70 = Instance.new("TextButton")
G.TextButton_70.Name = "LoadConfigButton"
G.TextButton_70.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.TextButton_70.BorderSizePixel = 0
G.TextButton_70.Position = UDim2.new(0.52, 3, 0, 3)
G.TextButton_70.Size = UDim2.new(0.48, -3, 0, 28)
G.TextButton_70.ZIndex = 9
G.TextButton_70.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextButton_70.Text = "Load Config"
G.TextButton_70.TextColor3 = Color3.fromRGB(203, 185, 215)
G.TextButton_70.TextSize = 11
G.TextButton_70.Parent = G.Frame_146
Instance.new("UICorner", G.TextButton_70).CornerRadius = UDim.new(0, 2)
local loadStroke = Instance.new("UIStroke", G.TextButton_70)
loadStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
loadStroke.Color = Color3.fromRGB(61, 20, 90)

G.UICorner_132 = Instance.new("UICorner")
G.UICorner_132.CornerRadius = UDim.new(0, 2)
G.UICorner_132.Parent = G.TextButton_60

G.UIStroke_87 = Instance.new("UIStroke")
G.UIStroke_87.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_87.Color = Color3.fromRGB(61, 20, 90)
G.UIStroke_87.Parent = G.TextButton_60


G.TextButton_60.Position = UDim2.new(0, 0, 0, 3)
G.TextButton_60.Size = UDim2.new(0.48, -3, 0, 28)
G.TextButton_60.Text = "Save Config"
G.TextButton_70.Position = UDim2.new(0.52, 3, 0, 3)
G.TextButton_70.Size = UDim2.new(0.48, -3, 0, 28)
G.TextButton_70.Visible = true
G.TextButton_70.AutoButtonColor = true
G.TextButton_70.BackgroundColor3 = Color3.fromRGB(70, 28, 120)
G.TextButton_70.TextColor3 = Color3.fromRGB(245, 235, 255)
G.TextButton_70.TextSize = 12
G.TextButton_60.AutoButtonColor = true
G.TextButton_60.BackgroundColor3 = Color3.fromRGB(70, 28, 120)
G.TextButton_60.TextColor3 = Color3.fromRGB(245, 235, 255)
G.TextButton_60.TextSize = 12
for _, configRow in ipairs({G.Frame_143, G.Frame_144, G.Frame_145}) do
	if configRow then
		configRow.Visible = false
		configRow.Size = UDim2.new(1, 0, 0, 0)
	end
end

G.Frame_147 = Instance.new("Frame")
G.Frame_147.BackgroundTransparency = 1
G.Frame_147.BorderSizePixel = 0
G.Frame_147.LayoutOrder = 131
G.Frame_147.Size = UDim2.new(1, 0, 0, 2)
G.Frame_147.Parent = G.VyzeccPage_Interface

G.Frame_148 = Instance.new("Frame")
G.Frame_148.AutomaticSize = Enum.AutomaticSize.Y
G.Frame_148.BackgroundTransparency = 1
G.Frame_148.BorderSizePixel = 0
G.Frame_148.LayoutOrder = 110
G.Frame_148.Size = UDim2.new(1, 0, 0, 0)
G.Frame_148.Parent = G.VyzeccPage_Interface

G.UIListLayout_10 = Instance.new("UIListLayout")
G.UIListLayout_10.Padding = UDim.new(0, 4)
G.UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
G.UIListLayout_10.Parent = G.Frame_148

G.EmptyLabel = Instance.new("TextLabel")
G.EmptyLabel.Name = "EmptyLabel"
G.EmptyLabel.BackgroundTransparency = 1
G.EmptyLabel.LayoutOrder = 1
G.EmptyLabel.Size = UDim2.new(1, 0, 0, 22)
G.EmptyLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.EmptyLabel.Text = ""
G.EmptyLabel.TextColor3 = Color3.fromRGB(104, 38, 150)
G.EmptyLabel.TextSize = 10
G.EmptyLabel.Parent = G.Frame_148

G.Frame_149 = Instance.new("Frame")
G.Frame_149.BackgroundTransparency = 1
G.Frame_149.BorderSizePixel = 0
G.Frame_149.LayoutOrder = 133
G.Frame_149.Size = UDim2.new(1, 0, 0, 2)
G.Frame_149.Parent = G.VyzeccPage_Interface

G.VyzeccMiniRestoreButton = Instance.new("ImageButton")
G.VyzeccMiniRestoreButton.Name = "VyzeccMiniRestoreButton"
G.VyzeccMiniRestoreButton.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.VyzeccMiniRestoreButton.BackgroundTransparency = 0.08
G.VyzeccMiniRestoreButton.BorderSizePixel = 0
G.VyzeccMiniRestoreButton.Position = UDim2.new(0, 10, 0.5, -48)
G.VyzeccMiniRestoreButton.Size = UDim2.new(0, 64, 0, 64)
G.VyzeccMiniRestoreButton.ZIndex = 150
G.VyzeccMiniRestoreButton.Image = "rbxthumb://type=Asset&id=117439302562449&w=420&h=420"
G.VyzeccMiniRestoreButton.ImageTransparency = 0
G.VyzeccMiniRestoreButton.ScaleType = Enum.ScaleType.Fit
G.VyzeccMiniRestoreButton.AutoButtonColor = false
G.VyzeccMiniRestoreButton.Parent = G.VYZECCHubV1

G.VyzeccMiniRestoreCorner = Instance.new("UICorner")
G.VyzeccMiniRestoreCorner.CornerRadius = UDim.new(0, 12)
G.VyzeccMiniRestoreCorner.Parent = G.VyzeccMiniRestoreButton

G.VyzeccMiniRestoreStroke = Instance.new("UIStroke")
G.VyzeccMiniRestoreStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.VyzeccMiniRestoreStroke.Color = Color3.fromRGB(126, 20, 200)
G.VyzeccMiniRestoreStroke.Thickness = 1.5
G.VyzeccMiniRestoreStroke.Parent = G.VyzeccMiniRestoreButton

G.VYZECCMiniRestoreScale = Instance.new("UIScale")
G.VYZECCMiniRestoreScale.Name = "VYZECCMiniRestoreScale"
G.VYZECCMiniRestoreScale.Scale = 0.7
G.VYZECCMiniRestoreScale.Parent = G.VyzeccMiniRestoreButton

G.VyzeccMiniRestoreTitle = Instance.new("TextLabel")
G.VyzeccMiniRestoreTitle.Name = "VyzeccMiniRestoreTitle"
G.VyzeccMiniRestoreTitle.BackgroundTransparency = 1
G.VyzeccMiniRestoreTitle.Visible = false
G.VyzeccMiniRestoreTitle.Parent = G.VYZECCHubV1

G.VyzeccLogoPreloadHolder = Instance.new("Frame")
G.VyzeccLogoPreloadHolder.Name = "VyzeccLogoPreloadHolder"
G.VyzeccLogoPreloadHolder.BackgroundTransparency = 1
G.VyzeccLogoPreloadHolder.Position = UDim2.new(1, 20, 1, 20)
G.VyzeccLogoPreloadHolder.Size = UDim2.new(0, 1, 0, 1)
G.VyzeccLogoPreloadHolder.Visible = false
G.VyzeccLogoPreloadHolder.Parent = G.VYZECCHubV1

G.LogoPreload_default = Instance.new("ImageLabel")
G.LogoPreload_default.Name = "LogoPreload_default"
G.LogoPreload_default.BackgroundTransparency = 1
G.LogoPreload_default.Size = UDim2.new(0, 64, 0, 64)
G.LogoPreload_default.Visible = false
G.LogoPreload_default.Image = "rbxthumb://type=Asset&id=75548910103458&w=420&h=420"
G.LogoPreload_default.Parent = G.VyzeccLogoPreloadHolder

G.LogoPreload_kira = Instance.new("ImageLabel")
G.LogoPreload_kira.Name = "LogoPreload_kira"
G.LogoPreload_kira.BackgroundTransparency = 1
G.LogoPreload_kira.Size = UDim2.new(0, 64, 0, 64)
G.LogoPreload_kira.Visible = false
G.LogoPreload_kira.Image = "rbxthumb://type=Asset&id=125547726098040&w=420&h=420"
G.LogoPreload_kira.Parent = G.VyzeccLogoPreloadHolder

G.LogoPreload_dio = Instance.new("ImageLabel")
G.LogoPreload_dio.Name = "LogoPreload_dio"
G.LogoPreload_dio.BackgroundTransparency = 1
G.LogoPreload_dio.Size = UDim2.new(0, 64, 0, 64)
G.LogoPreload_dio.Visible = false
G.LogoPreload_dio.Image = "rbxthumb://type=Asset&id=125749412993183&w=420&h=420"
G.LogoPreload_dio.Parent = G.VyzeccLogoPreloadHolder

G.LogoPreload_kingcrimson = Instance.new("ImageLabel")
G.LogoPreload_kingcrimson.Name = "LogoPreload_kingcrimson"
G.LogoPreload_kingcrimson.BackgroundTransparency = 1
G.LogoPreload_kingcrimson.Size = UDim2.new(0, 64, 0, 64)
G.LogoPreload_kingcrimson.Visible = false
G.LogoPreload_kingcrimson.Image = "rbxasset://5a9ca42d5ed939bad79ba73d52810774/vyzecc_king_crimson_minilogo.png"
G.LogoPreload_kingcrimson:SetAttribute("VyzeccImageRequest", "https://files.catbox.moe/lxi4pf.png")
G.LogoPreload_kingcrimson.Parent = G.VyzeccLogoPreloadHolder

G.LogoPreload_t636k9 = Instance.new("ImageLabel")
G.LogoPreload_t636k9.Name = "LogoPreload_t636k9"
G.LogoPreload_t636k9.BackgroundTransparency = 1
G.LogoPreload_t636k9.Size = UDim2.new(0, 64, 0, 64)
G.LogoPreload_t636k9.Visible = false
G.LogoPreload_t636k9.Image = "rbxasset://5a9ca42d5ed939bad79ba73d52810774/vyzecc_t636k9_minilogo.png"
G.LogoPreload_t636k9:SetAttribute("VyzeccImageRequest", "https://files.catbox.moe/q7tes7.png")
G.LogoPreload_t636k9.Parent = G.VyzeccLogoPreloadHolder

G.LogoPreload_customvyzecc = Instance.new("ImageLabel")
G.LogoPreload_customvyzecc.Name = "LogoPreload_customvyzecc"
G.LogoPreload_customvyzecc.BackgroundTransparency = 1
G.LogoPreload_customvyzecc.Size = UDim2.new(0, 64, 0, 64)
G.LogoPreload_customvyzecc.Visible = false
G.LogoPreload_customvyzecc.Image = "rbxasset://5a9ca42d5ed939bad79ba73d52810774/vyzecc_custom_minilogo_v3.png"
G.LogoPreload_customvyzecc:SetAttribute("VyzeccImageRequest", "https://files.catbox.moe/b2w3ck.png")
G.LogoPreload_customvyzecc.Parent = G.VyzeccLogoPreloadHolder

G.MobileStackPanel = Instance.new("Frame")
G.MobileStackPanel.Name = "MobileStackPanel"
G.MobileStackPanel.Active = false
G.MobileStackPanel.BackgroundColor3 = Color3.fromRGB(18, 4, 28)
G.MobileStackPanel.BorderSizePixel = 0
G.MobileStackPanel.Position = UDim2.new(1, -170, 0.5, -145)
G.MobileStackPanel.Size = UDim2.new(0, 154, 0, 290)
G.MobileStackPanel.ZIndex = 10
G.MobileStackPanel.Parent = G.VYZECCHubV1

G.UICorner_133 = Instance.new("UICorner")
G.UICorner_133.CornerRadius = UDim.new(0, 18)
G.UICorner_133.Parent = G.MobileStackPanel

G.UIStroke_88 = Instance.new("UIStroke")
G.UIStroke_88.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G.UIStroke_88.Color = Color3.fromRGB(46, 14, 68)
G.UIStroke_88.Parent = G.MobileStackPanel

G.BgImage = Instance.new("ImageLabel")
G.BgImage.Name = "BgImage"
G.BgImage.BackgroundTransparency = 1
G.BgImage.BorderSizePixel = 0
G.BgImage.Size = UDim2.new(1, 0, 1, 0)
G.BgImage.Image = "rbxassetid://96235452296851"
G.BgImage.ImageTransparency = 1
G.BgImage.Visible = false
G.BgImage.ScaleType = Enum.ScaleType.Crop
G.BgImage:SetAttribute("VyzeccAppliedPanelSrc", "rbxthumb://type=Asset&id=139548602866176&w=420&h=420")
G.BgImage.Parent = G.MobileStackPanel

G.UICorner_134 = Instance.new("UICorner")
G.UICorner_134.CornerRadius = UDim.new(0, 18)
G.UICorner_134.Parent = G.BgImage

G.BgOverlay = Instance.new("Frame")
G.BgOverlay.Name = "BgOverlay"
G.BgOverlay.Active = false
G.BgOverlay.BackgroundColor3 = Color3.fromRGB(18, 4, 28)
G.BgOverlay.BackgroundTransparency = 1
G.BgOverlay.BorderSizePixel = 0
G.BgOverlay.Size = UDim2.new(1, 0, 1, 0)
G.BgOverlay.ZIndex = 2
G.BgOverlay.Parent = G.MobileStackPanel

G.UICorner_135 = Instance.new("UICorner")
G.UICorner_135.CornerRadius = UDim.new(0, 18)
G.UICorner_135.Parent = G.BgOverlay

G.StackBtn_autoLeft = Instance.new("Frame")
G.StackBtn_autoLeft.Name = "StackBtn_autoLeft"
G.StackBtn_autoLeft.Active = false
G.StackBtn_autoLeft.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.StackBtn_autoLeft.BackgroundTransparency = 0.10000000149011612
G.StackBtn_autoLeft.BorderSizePixel = 0
G.StackBtn_autoLeft.Position = UDim2.new(0, 14, 0, 14)
G.StackBtn_autoLeft.Size = UDim2.new(0, 58, 0, 58)
G.StackBtn_autoLeft.ZIndex = 12
G.StackBtn_autoLeft.Parent = G.MobileStackPanel

G.UICorner_136 = Instance.new("UICorner")
G.UICorner_136.CornerRadius = UDim.new(0, 10)
G.UICorner_136.Parent = G.StackBtn_autoLeft

G.TextLabel_84 = Instance.new("TextLabel")
G.TextLabel_84.BackgroundTransparency = 1
G.TextLabel_84.Position = UDim2.new(0, 5, 0, 5)
G.TextLabel_84.Size = UDim2.new(1, -10, 1, -10)
G.TextLabel_84.ZIndex = 6
G.TextLabel_84.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_84.Text = "AUTO LEFT"
G.TextLabel_84.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextLabel_84.TextSize = 9
G.TextLabel_84.TextWrapped = true
G.TextLabel_84.Parent = G.StackBtn_autoLeft

G.TextButton_61 = Instance.new("TextButton")
G.TextButton_61.BackgroundTransparency = 1
G.TextButton_61.BorderSizePixel = 0
G.TextButton_61.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_61.ZIndex = 20
G.TextButton_61.Text = ""
G.TextButton_61.Parent = G.StackBtn_autoLeft

G.StackBtn_autoRight = Instance.new("Frame")
G.StackBtn_autoRight.Name = "StackBtn_autoRight"
G.StackBtn_autoRight.Active = false
G.StackBtn_autoRight.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.StackBtn_autoRight.BackgroundTransparency = 0.10000000149011612
G.StackBtn_autoRight.BorderSizePixel = 0
G.StackBtn_autoRight.Position = UDim2.new(0, 82, 0, 14)
G.StackBtn_autoRight.Size = UDim2.new(0, 58, 0, 58)
G.StackBtn_autoRight.ZIndex = 12
G.StackBtn_autoRight.Parent = G.MobileStackPanel

G.UICorner_137 = Instance.new("UICorner")
G.UICorner_137.CornerRadius = UDim.new(0, 10)
G.UICorner_137.Parent = G.StackBtn_autoRight

G.TextLabel_85 = Instance.new("TextLabel")
G.TextLabel_85.BackgroundTransparency = 1
G.TextLabel_85.Position = UDim2.new(0, 5, 0, 5)
G.TextLabel_85.Size = UDim2.new(1, -10, 1, -10)
G.TextLabel_85.ZIndex = 6
G.TextLabel_85.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_85.Text = "AUTO RIGHT"
G.TextLabel_85.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextLabel_85.TextSize = 9
G.TextLabel_85.TextWrapped = true
G.TextLabel_85.Parent = G.StackBtn_autoRight

G.TextButton_62 = Instance.new("TextButton")
G.TextButton_62.BackgroundTransparency = 1
G.TextButton_62.BorderSizePixel = 0
G.TextButton_62.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_62.ZIndex = 20
G.TextButton_62.Text = ""
G.TextButton_62.Parent = G.StackBtn_autoRight

G.StackBtn_aimbot = Instance.new("Frame")
G.StackBtn_aimbot.Name = "StackBtn_aimbot"
G.StackBtn_aimbot.Active = false
G.StackBtn_aimbot.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.StackBtn_aimbot.BackgroundTransparency = 0.10000000149011612
G.StackBtn_aimbot.BorderSizePixel = 0
G.StackBtn_aimbot.Position = UDim2.new(0, 14, 0, 82)
G.StackBtn_aimbot.Size = UDim2.new(0, 58, 0, 58)
G.StackBtn_aimbot.ZIndex = 12
G.StackBtn_aimbot.Parent = G.MobileStackPanel

G.UICorner_138 = Instance.new("UICorner")
G.UICorner_138.CornerRadius = UDim.new(0, 10)
G.UICorner_138.Parent = G.StackBtn_aimbot

G.TextLabel_86 = Instance.new("TextLabel")
G.TextLabel_86.BackgroundTransparency = 1
G.TextLabel_86.Position = UDim2.new(0, 5, 0, 5)
G.TextLabel_86.Size = UDim2.new(1, -10, 1, -10)
G.TextLabel_86.ZIndex = 6
G.TextLabel_86.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_86.Text = "AIMBOT"
G.TextLabel_86.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextLabel_86.TextSize = 9
G.TextLabel_86.TextWrapped = true
G.TextLabel_86.Parent = G.StackBtn_aimbot

G.TextButton_63 = Instance.new("TextButton")
G.TextButton_63.BackgroundTransparency = 1
G.TextButton_63.BorderSizePixel = 0
G.TextButton_63.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_63.ZIndex = 20
G.TextButton_63.Text = ""
G.TextButton_63.Parent = G.StackBtn_aimbot

G.StackBtn_lagger = Instance.new("Frame")
G.StackBtn_lagger.Name = "StackBtn_lagger"
G.StackBtn_lagger.Active = false
G.StackBtn_lagger.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.StackBtn_lagger.BackgroundTransparency = 0.10000000149011612
G.StackBtn_lagger.BorderSizePixel = 0
G.StackBtn_lagger.Position = UDim2.new(0, 82, 0, 82)
G.StackBtn_lagger.Size = UDim2.new(0, 58, 0, 58)
G.StackBtn_lagger.ZIndex = 12
G.StackBtn_lagger.Parent = G.MobileStackPanel

G.UICorner_139 = Instance.new("UICorner")
G.UICorner_139.CornerRadius = UDim.new(0, 10)
G.UICorner_139.Parent = G.StackBtn_lagger

G.TextLabel_87 = Instance.new("TextLabel")
G.TextLabel_87.BackgroundTransparency = 1
G.TextLabel_87.Position = UDim2.new(0, 5, 0, 5)
G.TextLabel_87.Size = UDim2.new(1, -10, 1, -10)
G.TextLabel_87.ZIndex = 6
G.TextLabel_87.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_87.Text = "LAGGER NORMAL"
G.TextLabel_87.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextLabel_87.TextSize = 9
G.TextLabel_87.TextWrapped = true
G.TextLabel_87.Parent = G.StackBtn_lagger

G.TextButton_64 = Instance.new("TextButton")
G.TextButton_64.BackgroundTransparency = 1
G.TextButton_64.BorderSizePixel = 0
G.TextButton_64.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_64.ZIndex = 20
G.TextButton_64.Text = ""
G.TextButton_64.Parent = G.StackBtn_lagger

G.StackBtn_drop = Instance.new("Frame")
G.StackBtn_drop.Name = "StackBtn_drop"
G.StackBtn_drop.Active = false
G.StackBtn_drop.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.StackBtn_drop.BackgroundTransparency = 0.10000000149011612
G.StackBtn_drop.BorderSizePixel = 0
G.StackBtn_drop.Position = UDim2.new(0, 14, 0, 150)
G.StackBtn_drop.Size = UDim2.new(0, 58, 0, 58)
G.StackBtn_drop.ZIndex = 12
G.StackBtn_drop.Parent = G.MobileStackPanel

G.UICorner_140 = Instance.new("UICorner")
G.UICorner_140.CornerRadius = UDim.new(0, 10)
G.UICorner_140.Parent = G.StackBtn_drop

G.TextLabel_88 = Instance.new("TextLabel")
G.TextLabel_88.BackgroundTransparency = 1
G.TextLabel_88.Position = UDim2.new(0, 5, 0, 5)
G.TextLabel_88.Size = UDim2.new(1, -10, 1, -10)
G.TextLabel_88.ZIndex = 6
G.TextLabel_88.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_88.Text = "DROP BR"
G.TextLabel_88.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextLabel_88.TextSize = 9
G.TextLabel_88.TextWrapped = true
G.TextLabel_88.Parent = G.StackBtn_drop

G.TextButton_65 = Instance.new("TextButton")
G.TextButton_65.BackgroundTransparency = 1
G.TextButton_65.BorderSizePixel = 0
G.TextButton_65.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_65.ZIndex = 20
G.TextButton_65.Text = ""
G.TextButton_65.Parent = G.StackBtn_drop

G.StackBtn_lagger2 = Instance.new("Frame")
G.StackBtn_lagger2.Name = "StackBtn_lagger2"
G.StackBtn_lagger2.Active = false
G.StackBtn_lagger2.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.StackBtn_lagger2.BackgroundTransparency = 0.10000000149011612
G.StackBtn_lagger2.BorderSizePixel = 0
G.StackBtn_lagger2.Position = UDim2.new(0, 82, 0, 150)
G.StackBtn_lagger2.Size = UDim2.new(0, 58, 0, 58)
G.StackBtn_lagger2.ZIndex = 12
G.StackBtn_lagger2.Parent = G.MobileStackPanel

G.UICorner_141 = Instance.new("UICorner")
G.UICorner_141.CornerRadius = UDim.new(0, 10)
G.UICorner_141.Parent = G.StackBtn_lagger2

G.TextLabel_89 = Instance.new("TextLabel")
G.TextLabel_89.BackgroundTransparency = 1
G.TextLabel_89.Position = UDim2.new(0, 5, 0, 5)
G.TextLabel_89.Size = UDim2.new(1, -10, 1, -10)
G.TextLabel_89.ZIndex = 6
G.TextLabel_89.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_89.Text = "LAGGER CARRY"
G.TextLabel_89.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextLabel_89.TextSize = 9
G.TextLabel_89.TextWrapped = true
G.TextLabel_89.Parent = G.StackBtn_lagger2

G.TextButton_66 = Instance.new("TextButton")
G.TextButton_66.BackgroundTransparency = 1
G.TextButton_66.BorderSizePixel = 0
G.TextButton_66.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_66.ZIndex = 20
G.TextButton_66.Text = ""
G.TextButton_66.Parent = G.StackBtn_lagger2

G.StackBtn_tpDown = Instance.new("Frame")
G.StackBtn_tpDown.Name = "StackBtn_tpDown"
G.StackBtn_tpDown.Active = false
G.StackBtn_tpDown.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.StackBtn_tpDown.BackgroundTransparency = 0.10000000149011612
G.StackBtn_tpDown.BorderSizePixel = 0
G.StackBtn_tpDown.Position = UDim2.new(0, 14, 0, 218)
G.StackBtn_tpDown.Size = UDim2.new(0, 58, 0, 58)
G.StackBtn_tpDown.ZIndex = 12
G.StackBtn_tpDown.Parent = G.MobileStackPanel

G.UICorner_142 = Instance.new("UICorner")
G.UICorner_142.CornerRadius = UDim.new(0, 10)
G.UICorner_142.Parent = G.StackBtn_tpDown

G.TextLabel_90 = Instance.new("TextLabel")
G.TextLabel_90.BackgroundTransparency = 1
G.TextLabel_90.Position = UDim2.new(0, 5, 0, 5)
G.TextLabel_90.Size = UDim2.new(1, -10, 1, -10)
G.TextLabel_90.ZIndex = 6
G.TextLabel_90.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_90.Text = "TP DOWN"
G.TextLabel_90.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextLabel_90.TextSize = 9
G.TextLabel_90.TextWrapped = true
G.TextLabel_90.Parent = G.StackBtn_tpDown

G.TextButton_67 = Instance.new("TextButton")
G.TextButton_67.BackgroundTransparency = 1
G.TextButton_67.BorderSizePixel = 0
G.TextButton_67.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_67.ZIndex = 20
G.TextButton_67.Text = ""
G.TextButton_67.Parent = G.StackBtn_tpDown

G.StackBtn_carrySpeed = Instance.new("Frame")
G.StackBtn_carrySpeed.Name = "StackBtn_carrySpeed"
G.StackBtn_carrySpeed.Active = false
G.StackBtn_carrySpeed.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
G.StackBtn_carrySpeed.BackgroundTransparency = 0.10000000149011612
G.StackBtn_carrySpeed.BorderSizePixel = 0
G.StackBtn_carrySpeed.Position = UDim2.new(0, 82, 0, 218)
G.StackBtn_carrySpeed.Size = UDim2.new(0, 58, 0, 58)
G.StackBtn_carrySpeed.ZIndex = 12
G.StackBtn_carrySpeed.Parent = G.MobileStackPanel

G.UICorner_143 = Instance.new("UICorner")
G.UICorner_143.CornerRadius = UDim.new(0, 10)
G.UICorner_143.Parent = G.StackBtn_carrySpeed

G.TextLabel_91 = Instance.new("TextLabel")
G.TextLabel_91.BackgroundTransparency = 1
G.TextLabel_91.Position = UDim2.new(0, 5, 0, 5)
G.TextLabel_91.Size = UDim2.new(1, -10, 1, -10)
G.TextLabel_91.ZIndex = 6
G.TextLabel_91.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_91.Text = "CARRY SPEED"
G.TextLabel_91.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextLabel_91.TextSize = 9
G.TextLabel_91.TextWrapped = true
G.TextLabel_91.Parent = G.StackBtn_carrySpeed

G.TextButton_68 = Instance.new("TextButton")
G.TextButton_68.BackgroundTransparency = 1
G.TextButton_68.BorderSizePixel = 0
G.TextButton_68.Size = UDim2.new(1, 0, 1, 0)
G.TextButton_68.ZIndex = 20
G.TextButton_68.Text = ""
G.TextButton_68.Parent = G.StackBtn_carrySpeed

G.VYZECCButtonScale = Instance.new("UIScale")
G.VYZECCButtonScale.Name = "VYZECCButtonScale"
G.VYZECCButtonScale.Scale = 0.69999998807907104
G.VYZECCButtonScale.Parent = G.MobileStackPanel

local StealBarRoot = Instance.new("Frame")
StealBarRoot.Name = "StealBarRoot"
StealBarRoot.AnchorPoint = Vector2.new(0.5, 1)
StealBarRoot.BackgroundColor3 = Color3.fromRGB(14, 8, 24)
StealBarRoot.BorderSizePixel = 0
StealBarRoot.Position = UDim2.new(0.5, 0, 1, -100)
StealBarRoot.Size = UDim2.new(0, 315, 0, 53)
StealBarRoot.ZIndex = 50
StealBarRoot.Parent = G.VYZECCHubV1

local StealUICorner = Instance.new("UICorner")
StealUICorner.CornerRadius = UDim.new(0, 10)
StealUICorner.Parent = StealBarRoot

local StealUIStroke = Instance.new("UIStroke")
StealUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
StealUIStroke.Color = Color3.fromRGB(91, 20, 140)
StealUIStroke.Thickness = 1.5
StealUIStroke.Parent = StealBarRoot

local StealLabel = Instance.new("TextLabel")
StealLabel.Name = "StealLabel"
StealLabel.BackgroundTransparency = 1
StealLabel.Position = UDim2.new(0, 0, 0, -2)
StealLabel.Size = UDim2.new(1, 0, 0, 24)
StealLabel.ZIndex = 56
StealLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
StealLabel.Text = "discord.gg/XNByTnwf25"
StealLabel.TextColor3 = Color3.fromRGB(220, 160, 255)
StealLabel.TextSize = 12
StealLabel.Parent = StealBarRoot

local StealPingLabel = Instance.new("TextLabel")
StealPingLabel.Name = "PingLabel"
StealPingLabel.BackgroundTransparency = 1
StealPingLabel.Position = UDim2.new(0, 8, 1, -20)
StealPingLabel.Size = UDim2.new(0, 80, 0, 18)
StealPingLabel.ZIndex = 56
StealPingLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
StealPingLabel.Text = "PING: --"
StealPingLabel.TextColor3 = Color3.fromRGB(110, 50, 180)
StealPingLabel.TextSize = 10
StealPingLabel.TextXAlignment = Enum.TextXAlignment.Left
StealPingLabel.Parent = StealBarRoot

local StealFpsLabel = Instance.new("TextLabel")
StealFpsLabel.Name = "FpsLabel"
StealFpsLabel.BackgroundTransparency = 1
StealFpsLabel.Position = UDim2.new(1, -78, 1, -20)
StealFpsLabel.Size = UDim2.new(0, 70, 0, 18)
StealFpsLabel.ZIndex = 56
StealFpsLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
StealFpsLabel.Text = "FPS: --"
StealFpsLabel.TextColor3 = Color3.fromRGB(110, 50, 180)
StealFpsLabel.TextSize = 10
StealFpsLabel.TextXAlignment = Enum.TextXAlignment.Right
StealFpsLabel.Parent = StealBarRoot

local StealRadiusLabel = Instance.new("TextLabel")
StealRadiusLabel.Name = "RadiusLabel"
StealRadiusLabel.BackgroundTransparency = 1
StealRadiusLabel.Visible = false
StealRadiusLabel.Size = UDim2.new(0, 0, 0, 0)
StealRadiusLabel.Text = ""
StealRadiusLabel.Parent = StealBarRoot

local ProgressTrack = Instance.new("Frame")
ProgressTrack.Name = "ProgressTrack"
ProgressTrack.BackgroundColor3 = Color3.fromRGB(28, 12, 42)
ProgressTrack.BorderSizePixel = 0
ProgressTrack.Position = UDim2.new(0, 14, 0.5, -5)
ProgressTrack.Size = UDim2.new(1, -28, 0, 10)
ProgressTrack.ZIndex = 52
ProgressTrack.Parent = StealBarRoot

local ProgressUICorner = Instance.new("UICorner")
ProgressUICorner.CornerRadius = UDim.new(1, 0)
ProgressUICorner.Parent = ProgressTrack

local ProgressStroke = Instance.new("UIStroke")
ProgressStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ProgressStroke.Color = Color3.fromRGB(90, 35, 140)
ProgressStroke.Thickness = 1
ProgressStroke.Transparency = 0.35
ProgressStroke.Parent = ProgressTrack

local Fill = Instance.new("Frame")
Fill.Name = "Fill"
Fill.BackgroundColor3 = Color3.fromRGB(180, 70, 255)
Fill.BorderSizePixel = 0
Fill.Size = UDim2.new(0, 0, 1, 0)
Fill.ZIndex = 53
Fill.Parent = ProgressTrack

local FillUICorner = Instance.new("UICorner")
FillUICorner.CornerRadius = UDim.new(1, 0)
FillUICorner.Parent = Fill

local FillGradient = Instance.new("UIGradient")
FillGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 140, 40)),
	ColorSequenceKeypoint.new(0.55, Color3.fromRGB(200, 70, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(140, 40, 255)),
})
FillGradient.Rotation = 0
FillGradient.Parent = Fill

local StealClickBtn = Instance.new("TextButton")
StealClickBtn.BackgroundTransparency = 1
StealClickBtn.Size = UDim2.new(1, 0, 1, 0)
StealClickBtn.ZIndex = 55
StealClickBtn.Text = ""
StealClickBtn.Parent = StealBarRoot

local StealScale = Instance.new("UIScale")
StealScale.Scale = 0.7
StealScale.Parent = StealBarRoot

local HttpServicelocal HttpService = game:GetService("HttpService")
pcall(function()
	local CP = game:GetService("ContentProvider")
	local assets = {
		"rbxassetid://75548910103458",
		"rbxassetid://96235452296851",
	}
	task.spawn(function() pcall(function() CP:PreloadAsync(assets) end) end)
end)

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer


local localSpeedBillboard = nil
local localRagOverheadLabel = nil
do
	local ContentProvider = game:GetService("ContentProvider")
	local SPEED_IMAGE = "rbxassetid://75548910103458"
	local speedBillboard = nil
	local speedImage = nil
	local speedText = nil
	local speedConn = nil
	local characterConn = nil

	
	task.spawn(function()
		pcall(function()
			ContentProvider:PreloadAsync({SPEED_IMAGE})
		end)
	end)

	local function removeSpeedDisplay()
		if speedConn then
			speedConn:Disconnect()
			speedConn = nil
		end
		if speedBillboard then
			speedBillboard:Destroy()
			speedBillboard = nil
		end
		speedImage = nil
		speedText = nil
		localSpeedBillboard = nil
		localRagOverheadLabel = nil
	end

	local function attachSpeedDisplay(character)
		removeSpeedDisplay()
		if not character then return end

		local head = character:FindFirstChild("Head") or character:WaitForChild("Head", 8)
		local root = character:FindFirstChild("HumanoidRootPart") or character:WaitForChild("HumanoidRootPart", 8)
		if not head or not root or not character.Parent then return end

		local billboard = Instance.new("BillboardGui")
		billboard.Name = "VyzeccLocalSpeedDisplay"
		billboard.Adornee = head
		billboard.AlwaysOnTop = true
		billboard.LightInfluence = 0
		billboard.MaxDistance = 250
		billboard.Size = UDim2.fromOffset(180, 58)
		billboard.StudsOffsetWorldSpace = Vector3.new(0, 2.2, 0)

		-- no background oval: only centered text (slightly larger)
		local label = Instance.new("TextLabel")
		label.Name = "SpeedText"
		label.BackgroundTransparency = 1
		label.AnchorPoint = Vector2.new(0.5, 0)
		label.Position = UDim2.new(0.5, 0, 0, 2)
		label.Size = UDim2.new(1, 0, 0, 28)
		label.Font = Enum.Font.GothamBold
		label.Text = "0.0"
		label.TextColor3 = Color3.fromRGB(240, 235, 255)
		label.TextSize = 20
		label.TextXAlignment = Enum.TextXAlignment.Center
		label.TextYAlignment = Enum.TextYAlignment.Center
		label.TextStrokeColor3 = Color3.fromRGB(20, 8, 40)
		label.TextStrokeTransparency = 0.35
		label.Parent = billboard

		local brand = Instance.new("TextLabel")
		brand.Name = "Brand"
		brand.BackgroundTransparency = 1
		brand.AnchorPoint = Vector2.new(0.5, 0)
		brand.Position = UDim2.new(0.5, 0, 0, 30)
		brand.Size = UDim2.new(1, 0, 0, 24)
		brand.Font = Enum.Font.Gotham
		brand.Text = "vyzecc"
		brand.TextColor3 = Color3.fromRGB(180, 160, 210)
		brand.TextSize = 15
		brand.TextXAlignment = Enum.TextXAlignment.Center
		brand.TextYAlignment = Enum.TextYAlignment.Top
		brand.TextStrokeColor3 = Color3.fromRGB(20, 8, 40)
		brand.TextStrokeTransparency = 0.4
		brand.Parent = billboard

		billboard.Parent = LocalPlayer:WaitForChild("PlayerGui")
		speedBillboard = billboard
		localSpeedBillboard = billboard
		speedImage = nil
		speedText = label

		local lastText = "0.0"
		local elapsed = 0
		speedConn = RunService.Heartbeat:Connect(function(dt)
			if not billboard.Parent or not root.Parent then
				removeSpeedDisplay()
				return
			end

			elapsed += dt
			if elapsed < 0.05 then return end
			elapsed = 0

			local humanoid = character:FindFirstChildOfClass("Humanoid")
			local moving = humanoid and humanoid.MoveDirection.Magnitude > 0.05
			local configuredSpeed = 0

			if moving and type(_G._VioletteccGetSpeed) == "function" then
				local ok, value = pcall(_G._VioletteccGetSpeed)
				if ok then configuredSpeed = tonumber(value) or 0 end
			end
			-- fallback: horizontal velocity magnitude when configured speed unavailable
			if moving and configuredSpeed <= 0 then
				local vel = root.AssemblyLinearVelocity
				configuredSpeed = Vector3.new(vel.X, 0, vel.Z).Magnitude
			end
			local displayedSpeed = moving and configuredSpeed or 0
			local newText = string.format("%.1f", displayedSpeed)
			if newText ~= lastText and label.Parent then
				lastText = newText
				label.Text = newText
			end
		end)

	end

	if characterConn then characterConn:Disconnect() end
	characterConn = LocalPlayer.CharacterAdded:Connect(function(character)
		task.defer(attachSpeedDisplay, character)
	end)
	if LocalPlayer.Character then
		task.defer(attachSpeedDisplay, LocalPlayer.Character)
	end

	G.VYZECCHubV1.Destroying:Connect(function()
		removeSpeedDisplay()
		if characterConn then
			characterConn:Disconnect()
			characterConn = nil
		end
	end)
end

local Mouse = LocalPlayer:GetMouse()
local _V3 = Vector3.new
local _HST = Enum.HumanoidStateType
local _HM = "Humanoid"
local _HR = "HumanoidRootPart"

G.MainOuter.Visible = true
G.MainOuter.Size = UDim2.new(0, 280, 0, 420)
G.MainOuter.ClipsDescendants = true
G.MainOuter.Active = true

for _, page in pairs({G.VyzeccPage_Speed, G.VyzeccPage_Combat, G.VyzeccPage_Misc, G.VyzeccPage_Visuals, G.VyzeccPage_Interface, G.VyzeccPage_Steal, G.VyzeccPage_Movement}) do
	if page then page.Visible = false end
end

local isMinimized = false
local currentPage = nil
local stealProgress = 0
local stealActive = false
local radiusValue = 60
local mobileToggles = {}
local startBatAimbot, stopBatAimbot

local St = {
	normalSpeed = tonumber(G.TextBox and G.TextBox.Text) or 60,
	carrySpeed = tonumber(G.TextBox_2 and G.TextBox_2.Text) or 30,
	burstNormalSpeed = tonumber(G.TextBox_3 and G.TextBox_3.Text) or 15,
	burstCarrySpeed = tonumber(G.TextBox_4 and G.TextBox_4.Text) or 10,
	speedToggled = false,
	laggerMode = 0,
	_prevCarry = nil,
	_prevSpeed = false,
	lastMoveDir = _V3(0, 0, 0),
	speedChangeMethod = "v2",
	antiRagdollEnabled = false,
	autoBatToggled = false,
	desyncAimbotEnabled = false,
	autoLeftEnabled = false,
	autoRightEnabled = false,
	_autoCarryHandoff = false,
	dropEnabled = false,
	_tpInProgress = false,
	guiScale = tonumber(G.TextBox_12 and G.TextBox_12.Text) or 0.7,
	sideButtonScale = tonumber(G.TextBox_13 and G.TextBox_13.Text) or 0.7,
	progressBarSize = tonumber(G.TextBox_14 and G.TextBox_14.Text) or 0.7,
	openUiButtonScale = tonumber(G.TextBox_16 and G.TextBox_16.Text) or 1.0,
	uiLocked = false,              
	sideButtonsLocked = false,     
	sidePanelLocked = false,       
	sideButtonsVisible = true,
	sidePanelVisible = true,
}

local Keys = { speed = Enum.KeyCode.LeftShift, lagger = Enum.KeyCode.LeftControl, aimbot = Enum.KeyCode.E, drop = Enum.KeyCode.X, tpDown = Enum.KeyCode.T, autoLeft = Enum.KeyCode.Z, autoRight = Enum.KeyCode.C }
local KeyBindings = {
	speed={inputType=Enum.UserInputType.Keyboard,keyCode=Enum.KeyCode.LeftShift,platform="Keyboard"},
	lagger={inputType=Enum.UserInputType.Keyboard,keyCode=Enum.KeyCode.LeftControl,platform="Keyboard"},
	aimbot={inputType=Enum.UserInputType.Keyboard,keyCode=Enum.KeyCode.E,platform="Keyboard"},
	drop={inputType=Enum.UserInputType.Keyboard,keyCode=Enum.KeyCode.X,platform="Keyboard"},
	tpDown={inputType=Enum.UserInputType.Keyboard,keyCode=Enum.KeyCode.T,platform="Keyboard"},
	autoLeft={inputType=Enum.UserInputType.Keyboard,keyCode=Enum.KeyCode.Z,platform="Keyboard"},
	autoRight={inputType=Enum.UserInputType.Keyboard,keyCode=Enum.KeyCode.C,platform="Keyboard"},
}
local function getBindPlatform(inputType)
	if inputType ~= Enum.UserInputType.Gamepad1 then return "Keyboard" end
	local ok,gs=pcall(game.GetService,game,"GuiService")
	if ok and gs then
		local ok2,platform=pcall(function() return gs:GetPlatform() end)
		if ok2 then
			local n=tostring(platform)
			if n:find("PlayStation") then return "PlayStation" end
			if n:find("Xbox") then return "Xbox" end
		end
	end
	return "Gamepad"
end
local function setBinding(name,inputType,keyCode,platform)
	if not name then return end
	inputType=inputType or Enum.UserInputType.Keyboard; keyCode=keyCode or Enum.KeyCode.Unknown
	KeyBindings[name]={inputType=inputType,keyCode=keyCode,platform=platform or getBindPlatform(inputType)}; Keys[name]=keyCode
end
local function bindingMatches(name,input)
	local b=KeyBindings[name]; return b and input and b.keyCode~=Enum.KeyCode.Unknown and input.UserInputType==b.inputType and input.KeyCode==b.keyCode
end
local function bindingText(name)
	local b=KeyBindings[name]
	if not b or not b.keyCode or b.keyCode==Enum.KeyCode.Unknown then return "…" end
	if b.inputType == Enum.UserInputType.Gamepad1 then
		return b.keyCode.Name
	end
	return b.keyCode.Name
end

local MOVE_KEYS = {
	[Enum.KeyCode.W] = true, [Enum.KeyCode.A] = true,
	[Enum.KeyCode.S] = true, [Enum.KeyCode.D] = true,
	[Enum.KeyCode.Up] = true, [Enum.KeyCode.Left] = true,
	[Enum.KeyCode.Down] = true, [Enum.KeyCode.Right] = true,
}

local rebinding = nil

local function setSideButtonState(frame, on, duration)
    if not frame then return end
    local target = on and Color3.fromRGB(126, 20, 200) or Color3.fromRGB(18, 8, 28)
    TweenService:Create(frame, TweenInfo.new(duration or 0.15, Enum.EasingStyle.Quad), {
        BackgroundColor3 = target
    }):Play()
end

local AutoPath = {
    L = false,
    R = false,
    phaseL = 1,
    phaseR = 1,
    connL = nil,
    connR = nil,
}


local AP = {
    L1 = Vector3.new(-476.48, -6.28, 92.73),
    L2 = Vector3.new(-483.12, -4.95, 94.80),
    L_FACE = Vector3.new(-482.25, -4.96, 92.09),
    R1 = Vector3.new(-476.16, -6.52, 25.62),
    R2 = Vector3.new(-483.06, -5.03, 25.48),
    R_FACE = Vector3.new(-482.06, -6.93, 35.47),
}


local AUTO_NORMAL_L1 = AP.L1
local AUTO_NORMAL_L2 = AP.L2
local AUTO_NORMAL_R1 = AP.R1
local AUTO_NORMAL_R2 = AP.R2
local AUTO_WAYPOINTS = {
    L1 = AP.L1, LEND = AP.L2, LFINAL = AP.L_FACE,
    R1 = AP.R1, REND = AP.R2, RFINAL = AP.R_FACE,
}

local function autoRootHumanoid()
    local char = LocalPlayer.Character
    if not char then return nil, nil end
    return char:FindFirstChild("HumanoidRootPart"), char:FindFirstChildOfClass("Humanoid")
end

local function autoFlat(root, target)
    return Vector3.new(target.X - root.Position.X, 0, target.Z - root.Position.Z)
end



local _noPlayerCollAcc = 0
local function noPlayerCollision()
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer then
			local c = plr.Character
			if c then
				for _, d in ipairs(c:GetDescendants()) do
					if d:IsA("BasePart") and d.CanCollide then
						d.CanCollide = false
					end
				end
			end
		end
	end
end

local function noCollideCarried()
	local char = LocalPlayer.Character
	if not char then return end
	for _, child in ipairs(char:GetChildren()) do
		if child:IsA("Model") then
			for _, d in ipairs(child:GetDescendants()) do
				if d:IsA("BasePart") then
					d.CanCollide = false
				end
			end
		end
	end
	for _, name in ipairs({"Carrying", "IsCarrying", "Grabbed", "Holding", "StealHold", "HasGrab"}) do
		local obj = char:FindFirstChild(name)
		if obj and obj:IsA("ObjectValue") and obj.Value and obj.Value:IsA("Model") then
			for _, d in ipairs(obj.Value:GetDescendants()) do
				if d:IsA("BasePart") then
					d.CanCollide = false
				end
			end
		end
	end
end

local function applyNoCollisions()
	noCollideCarried()
	_noPlayerCollAcc += 1
	if _noPlayerCollAcc >= 3 then
		_noPlayerCollAcc = 0
		noPlayerCollision()
	end
end

-- Down Hub style carrying detection + active speed
local _csWalkHum, _csNormalWs, _csLastCarryCheck, _csIsCarrying = nil, nil, 0, false
local function isCarryingDownStyle()
	local now = tick()
	if now - (_csLastCarryCheck or 0) < 0.1 then
		return _csIsCarrying
	end
	_csLastCarryCheck = now
	local char = LocalPlayer.Character
	if not char then _csIsCarrying = false; return false end
	local hum = char:FindFirstChildOfClass("Humanoid")
	local ws = hum and hum.WalkSpeed or 16
	if hum then
		if _csWalkHum ~= hum then
			_csWalkHum = hum
			_csNormalWs = ws
		elseif not _csIsCarrying and ws > (_csNormalWs or ws) then
			_csNormalWs = ws
		end
	end
	local baseline = _csNormalWs or ws
	local bySpeed = hum ~= nil and ws > 0 and baseline > 0
		and ws <= baseline * 0.95 and (baseline - ws) >= 1
	local byAttr = false
	local ok, v = pcall(function() return LocalPlayer:GetAttribute("Stealing") end)
	if ok and v == true then byAttr = true end
	local ok2, v2 = pcall(function() return char:GetAttribute("Stealing") end)
	if ok2 and v2 == true then byAttr = true end
	if not byAttr then
		for _, name in ipairs({"Carrying", "IsCarrying", "Grabbed", "Holding", "StealHold", "HasGrab"}) do
			local obj = char:FindFirstChild(name)
			if obj then
				if (obj:IsA("BoolValue") and obj.Value)
					or (obj:IsA("ObjectValue") and obj.Value)
					or (obj:IsA("StringValue") and obj.Value ~= "") then
					byAttr = true
					break
				end
			end
		end
	end
	_csIsCarrying = bySpeed or byAttr
	return _csIsCarrying
end

local function getActiveSpeed()
	-- Down Hub order: auto L/R => normal; lagger modes; carrying => carry; toggle => carry; else normal
	if St.autoLeftEnabled or St.autoRightEnabled then
		return math.max(1, tonumber(St.normalSpeed) or 60)
	end
	if St.laggerMode == 1 then
		return math.max(1, tonumber(St.burstNormalSpeed) or 15)
	end
	if St.laggerMode == 2 then
		return math.max(1, tonumber(St.burstCarrySpeed) or 10)
	end
	if isCarryingDownStyle() then
		return math.max(1, tonumber(St.carrySpeed) or 30)
	end
	if St.speedToggled then
		return math.max(1, tonumber(St.carrySpeed) or 30)
	end
	return math.max(1, tonumber(St.normalSpeed) or 60)
end

local function autoPathSpeed()
	return getActiveSpeed()
end

local function autoSpeed()
	return getActiveSpeed()
end

local function autoCarrySpeed()
	return math.max(1, tonumber(St.carrySpeed) or 30)
end

local function autoStop(which)
    local root, hum = autoRootHumanoid()
    if hum then hum:Move(Vector3.zero, false) end
    if root then
        root.AssemblyLinearVelocity = Vector3.new(0, root.AssemblyLinearVelocity.Y, 0)
        root.AssemblyAngularVelocity = Vector3.zero
    end
    if which == "L" then
        if AutoPath.connL then AutoPath.connL:Disconnect(); AutoPath.connL = nil end
        AutoPath.L = false
        AutoPath.phaseL = 1
        St.autoLeftEnabled = false
        mobileToggles["AUTO LEFT"] = false
        if G.StackBtn_autoLeft then
            pcall(function() setSideButtonState(G.StackBtn_autoLeft, false) end)
            pcall(function() setFrameOn(G.StackBtn_autoLeft, false) end)
        end
    else
        if AutoPath.connR then AutoPath.connR:Disconnect(); AutoPath.connR = nil end
        AutoPath.R = false
        AutoPath.phaseR = 1
        St.autoRightEnabled = false
        mobileToggles["AUTO RIGHT"] = false
        if G.StackBtn_autoRight then
            pcall(function() setSideButtonState(G.StackBtn_autoRight, false) end)
            pcall(function() setFrameOn(G.StackBtn_autoRight, false) end)
        end
    end
end

local function autoTryRouteSteal()
    local hook = _G._RaVeTryAutoRouteSteal
    if type(hook) == "function" then pcall(hook) end
end


local function autoStartLeft()
    if AutoPath.connL then AutoPath.connL:Disconnect() end
    if AutoPath.R then autoStop("R") end
    AutoPath.L = true
    St.autoLeftEnabled = true
    mobileToggles["AUTO LEFT"] = true
    if G.StackBtn_autoLeft then
        pcall(function() setSideButtonState(G.StackBtn_autoLeft, true) end)
        pcall(function() setFrameOn(G.StackBtn_autoLeft, true) end)
    end
    AutoPath.phaseL = 1
    
    pcall(function()
        if _G._VezyBatAimbotOn and type(stopBatAimbot) == "function" then stopBatAimbot() end
    end)
    AutoPath.connL = RunService.Heartbeat:Connect(function()
        if not AutoPath.L or not St.autoLeftEnabled then return end
        local root, hum = autoRootHumanoid()
        if not root or not hum or hum.Health <= 0 then return end
        applyNoCollisions()
        local spd = autoPathSpeed()

        if AutoPath.phaseL == 1 then
            local tgt = Vector3.new(AP.L1.X, root.Position.Y, AP.L1.Z)
            if (tgt - root.Position).Magnitude < 1 then
                AutoPath.phaseL = 2
                local d = AP.L2 - root.Position
                local mv = Vector3.new(d.X, 0, d.Z)
                if mv.Magnitude > 0.01 then
                    mv = mv.Unit
                    hum:Move(mv, false)
                    root.AssemblyLinearVelocity = Vector3.new(mv.X * spd, root.AssemblyLinearVelocity.Y, mv.Z * spd)
                end
                return
            end
            local d = AP.L1 - root.Position
            local mv = Vector3.new(d.X, 0, d.Z)
            if mv.Magnitude > 0.01 then
                mv = mv.Unit
                hum:Move(mv, false)
                root.AssemblyLinearVelocity = Vector3.new(mv.X * spd, root.AssemblyLinearVelocity.Y, mv.Z * spd)
            end
        elseif AutoPath.phaseL == 2 then
            local tgt = Vector3.new(AP.L2.X, root.Position.Y, AP.L2.Z)
            if (tgt - root.Position).Magnitude < 1 then
                hum:Move(Vector3.zero, false)
                root.AssemblyLinearVelocity = Vector3.zero
                
                local facePos = Vector3.new(AP.L_FACE.X, root.Position.Y, AP.L_FACE.Z)
                if (facePos - root.Position).Magnitude > 0.01 then
                    pcall(function() root.CFrame = CFrame.new(root.Position, facePos) end)
                end
                if St.autoCarryOn then
                    St.speedToggled = true
                end
                autoTryRouteSteal()
                autoStop("L")
                return
            end
            local d = AP.L2 - root.Position
            local mv = Vector3.new(d.X, 0, d.Z)
            if mv.Magnitude > 0.01 then
                mv = mv.Unit
                hum:Move(mv, false)
                root.AssemblyLinearVelocity = Vector3.new(mv.X * spd, root.AssemblyLinearVelocity.Y, mv.Z * spd)
            end
        end
    end)
end

local function autoStartRight()
    if AutoPath.connR then AutoPath.connR:Disconnect() end
    if AutoPath.L then autoStop("L") end
    AutoPath.R = true
    St.autoRightEnabled = true
    mobileToggles["AUTO RIGHT"] = true
    if G.StackBtn_autoRight then
        pcall(function() setSideButtonState(G.StackBtn_autoRight, true) end)
        pcall(function() setFrameOn(G.StackBtn_autoRight, true) end)
    end
    AutoPath.phaseR = 1
    pcall(function()
        if _G._VezyBatAimbotOn and type(stopBatAimbot) == "function" then stopBatAimbot() end
    end)
    AutoPath.connR = RunService.Heartbeat:Connect(function()
        if not AutoPath.R or not St.autoRightEnabled then return end
        local root, hum = autoRootHumanoid()
        if not root or not hum or hum.Health <= 0 then return end
        applyNoCollisions()
        local spd = autoPathSpeed()

        if AutoPath.phaseR == 1 then
            local tgt = Vector3.new(AP.R1.X, root.Position.Y, AP.R1.Z)
            if (tgt - root.Position).Magnitude < 1 then
                AutoPath.phaseR = 2
                local d = AP.R2 - root.Position
                local mv = Vector3.new(d.X, 0, d.Z)
                if mv.Magnitude > 0.01 then
                    mv = mv.Unit
                    hum:Move(mv, false)
                    root.AssemblyLinearVelocity = Vector3.new(mv.X * spd, root.AssemblyLinearVelocity.Y, mv.Z * spd)
                end
                return
            end
            local d = AP.R1 - root.Position
            local mv = Vector3.new(d.X, 0, d.Z)
            if mv.Magnitude > 0.01 then
                mv = mv.Unit
                hum:Move(mv, false)
                root.AssemblyLinearVelocity = Vector3.new(mv.X * spd, root.AssemblyLinearVelocity.Y, mv.Z * spd)
            end
        elseif AutoPath.phaseR == 2 then
            local tgt = Vector3.new(AP.R2.X, root.Position.Y, AP.R2.Z)
            if (tgt - root.Position).Magnitude < 1 then
                hum:Move(Vector3.zero, false)
                root.AssemblyLinearVelocity = Vector3.zero
                local facePos = Vector3.new(AP.R_FACE.X, root.Position.Y, AP.R_FACE.Z)
                if (facePos - root.Position).Magnitude > 0.01 then
                    pcall(function() root.CFrame = CFrame.new(root.Position, facePos) end)
                end
                if St.autoCarryOn then
                    St.speedToggled = true
                end
                autoTryRouteSteal()
                autoStop("R")
                return
            end
            local d = AP.R2 - root.Position
            local mv = Vector3.new(d.X, 0, d.Z)
            if mv.Magnitude > 0.01 then
                mv = mv.Unit
                hum:Move(mv, false)
                root.AssemblyLinearVelocity = Vector3.new(mv.X * spd, root.AssemblyLinearVelocity.Y, mv.Z * spd)
            end
        end
    end)
end

local function toggleAutoLeft(on)
    if on == nil then on = not AutoPath.L end
    if on then autoStartLeft() else autoStop("L") end
end

local function toggleAutoRight(on)
    if on == nil then on = not AutoPath.R end
    if on then autoStartRight() else autoStop("R") end
end

_G._VynxToggleAutoLeft = toggleAutoLeft
_G._VynxToggleAutoRight = toggleAutoRight
_G._VynxStartFullAutoLeft = function() toggleAutoLeft(true) end
_G._VynxStopFullAutoLeft = function() toggleAutoLeft(false) end
_G._VynxStartFullAutoRight = function() toggleAutoRight(true) end
_G._VynxStopFullAutoRight = function() toggleAutoRight(false) end
_G._AdaptSetAutoLeft = toggleAutoLeft
_G._AdaptSetAutoRight = toggleAutoRight

UserInputService.InputBegan:Connect(function(input, processed)
    if (processed and input.UserInputType == Enum.UserInputType.Keyboard) or rebinding then return end
    if bindingMatches("autoLeft", input) then
        toggleAutoLeft()
    elseif bindingMatches("autoRight", input) then
        toggleAutoRight()
    end
end)

LocalPlayer.CharacterRemoving:Connect(function()
    autoStop("L")
    autoStop("R")
end)




for _, hiddenRow in ipairs({G.Frame_128, G.Frame_129, G.Frame_130, G.Frame_131, G.Frame_132, G.Frame_133, G.Frame_134}) do
    if hiddenRow then hiddenRow.Visible = false; hiddenRow.Size = UDim2.new(1, 0, 0, 0) end
end

local pages = {
	MAIN     = G.VyzeccPage_Speed,
	COMBAT   = G.VyzeccPage_Combat,
	MISC     = G.VyzeccPage_Misc,
	VISUALS  = G.VyzeccPage_Visuals,
	UI       = G.VyzeccPage_Interface,
	STEAL    = G.VyzeccPage_Steal,
	MOVEMENT = G.VyzeccPage_Movement,
}

local navButtons = {
	MAIN    = {btn = G.VyzeccNav_MAIN,      stroke = G.UIStroke},
	COMBAT  = {btn = G.VyzeccNav_COMBAT,    stroke = G.UIStroke_2},
	MISC    = {btn = G.VyzeccNav_MISC,      stroke = G.UIStroke_3},
	VISUALS = {btn = G.VyzeccNav_VISUALS,   stroke = G.UIStroke_4},
	UI      = {btn = G.VyzeccNav_CUSTOMIZE, stroke = G.UIStroke_5},
}

local dragControllers = {}





local function makeDraggable(frame, handle, lockCheck, opts)
	opts = opts or {}
	handle = handle or frame
	local threshold = tonumber(opts.threshold) or 0
	local sensitivity = tonumber(opts.sensitivity) or 1
	local dragging, pending, dragInput, dragStart, startPos, startAbs
	local enabled = true
	local keepOnScreen = opts.keepOnScreen == true

	
	local function parentScale()
		local sc = 1
		local inst = frame.Parent
		while inst do
			local u = inst:FindFirstChildOfClass("UIScale")
			if u and u.Scale > 0 then sc = sc * u.Scale end
			inst = inst.Parent
		end
		return sc
	end

	
	local function getBounds()
		local gui = frame:FindFirstAncestorWhichIsA("ScreenGui")
		if gui and gui.AbsoluteSize.X > 0 and gui.AbsoluteSize.Y > 0 then
			return gui.AbsolutePosition, gui.AbsoluteSize
		end
		local cam = workspace.CurrentCamera
		return Vector2.new(0, 0), (cam and cam.ViewportSize or Vector2.new(1920, 1080))
	end

	if frame and frame:IsA("GuiObject") then
		if opts.forceActive == false then
			frame.Active = false
		else
			frame.Active = true
		end
	end
	if handle and handle:IsA("GuiObject") then handle.Active = true end

	local function finishDrag()
		dragging = false
		pending = false
		dragInput = nil
	end

	local function beginDrag(input)
		if not enabled or (lockCheck and lockCheck()) then return end
		if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
		pending = true
		dragging = (threshold <= 0)
		dragInput = input
		dragStart = input.Position
		startPos = frame.Position
		startAbs = frame.AbsolutePosition
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then finishDrag() end
		end)
	end

	local function update(input)
		if not enabled or not input then return end
		if not dragging and not pending then return end
		if lockCheck and lockCheck() then finishDrag(); return end
		local delta = input.Position - dragStart
		if pending and not dragging then
			if delta.Magnitude < threshold then return end
			dragging = true
			pending = false
			if type(opts.onDragStart) == "function" then
				pcall(opts.onDragStart)
			end
			
			startPos = frame.Position
			startAbs = frame.AbsolutePosition
			dragStart = input.Position
			delta = Vector2.new(0, 0)
		end
		if not dragging then return end
		
		
		
		local bpos, bsize = getBounds()
		local size = frame.AbsoluteSize
		
		local origin = startAbs or frame.AbsolutePosition
		local desired = Vector2.new(origin.X + delta.X * sensitivity, origin.Y + delta.Y * sensitivity)
		local minX, maxX, minY, maxY
		if keepOnScreen then
			minX, maxX = bpos.X, bpos.X + math.max(0, bsize.X - size.X)
			minY, maxY = bpos.Y, bpos.Y + math.max(0, bsize.Y - size.Y)
		else
			minX, maxX = bpos.X - size.X * 0.7, bpos.X + bsize.X - size.X * 0.3
			minY, maxY = bpos.Y, bpos.Y + math.max(0, bsize.Y - 40)
		end
		local tx = math.clamp(desired.X, minX, maxX)
		local ty = math.clamp(desired.Y, minY, maxY)
		local sc = parentScale()
		
		frame.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + (tx - origin.X) / sc,
			startPos.Y.Scale, startPos.Y.Offset + (ty - origin.Y) / sc
		)
	end

	
	handle.InputBegan:Connect(beginDrag)
	if frame ~= handle then
		
		frame.InputBegan:Connect(function(input)
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
			
			local pos = input.Position
			for _, child in ipairs(frame:GetChildren()) do
				if child:IsA("GuiObject") and child.Visible then
					local ap = child.AbsolutePosition
					local as = child.AbsoluteSize
					if pos.X >= ap.X and pos.X <= ap.X + as.X and pos.Y >= ap.Y and pos.Y <= ap.Y + as.Y then
						return
					end
				end
			end
			beginDrag(input)
		end)
	end

	UserInputService.InputChanged:Connect(function(input)
		if not dragging and not pending then return end
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			update(input)
		end
	end)
	UserInputService.InputEnded:Connect(function(input)
		if (dragging or pending) and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			finishDrag()
		end
	end)

	local ctrl = {
		setEnabled = function(v) enabled = v and true or false; if not enabled then finishDrag() end end,
		isEnabled = function() return enabled end,
	}
	table.insert(dragControllers, ctrl)
	return ctrl
end


local mainDrag = makeDraggable(G.MainOuter, G.HeaderBar, function() return St.uiLocked == true end, {sensitivity = 1, threshold = 0})
-- persist main hub position
do
	local lastSave = 0
	G.MainOuter:GetPropertyChangedSignal("Position"):Connect(function()
		local now = os.clock()
		if now - lastSave < 0.35 then return end
		lastSave = now
		if type(_G.VYZECC_SaveConfig) == "function" then
			task.defer(function() pcall(_G.VYZECC_SaveConfig) end)
		end
	end)
end

local stealLastDrag = 0
local stealDrag = makeDraggable(StealBarRoot, StealClickBtn, function() return St.uiLocked == true end, {
	sensitivity = 1, threshold = 6, keepOnScreen = true,
	onDragStart = function() stealLastDrag = os.clock() end,
})
if G.MobileStackPanel then G.MobileStackPanel.Active = false end
-- mobile: only real buttons capture touch; empty panel area passes through to jump
pcall(function()
	for _, d in ipairs(G.MobileStackPanel:GetDescendants()) do
		if d:IsA("TextButton") or d:IsA("ImageButton") then
			d.Active = true
			d.Selectable = false
		elseif d:IsA("GuiObject") and (d:IsA("Frame") or d:IsA("ImageLabel") or d:IsA("TextLabel")) then
			d.Active = false
		end
	end
	G.MobileStackPanel.Active = false
end)

local panelDrag = makeDraggable(G.MobileStackPanel, G.MobileStackPanel, function() return St.sidePanelLocked == true or St.uiLocked == true end, {sensitivity = 1, threshold = 4, keepOnScreen = true, forceActive = false})


local buttonDrags = {}
local stackFrames = {
	G.StackBtn_autoLeft, G.StackBtn_autoRight, G.StackBtn_aimbot, G.StackBtn_lagger,
	G.StackBtn_drop, G.StackBtn_lagger2, G.StackBtn_tpDown, G.StackBtn_carrySpeed,
}

local defaultButtonPositions = {}
local defaultPanelPos = G.MobileStackPanel.Position
local defaultMainPos = G.MainOuter.Position
local defaultStealPos = StealBarRoot.Position

for _, fr in ipairs(stackFrames) do
	if fr then
		fr.Active = true
		defaultButtonPositions[fr] = fr.Position
		local dragHandle = fr:FindFirstChildWhichIsA("TextButton") or fr
		
		local ctrl = makeDraggable(fr, dragHandle, function() return St.uiLocked == true end, {
			sensitivity = 1, threshold = 8, keepOnScreen = true, forceActive = false,
			onDragStart = function()
				fr:SetAttribute("_SideButtonWasDragged", true)
				task.delay(0.6, function()
					if fr and fr.Parent then fr:SetAttribute("_SideButtonWasDragged", false) end
				end)
			end
		})
		buttonDrags[fr] = ctrl
		ctrl.setEnabled(true)
	end
end
panelDrag.setEnabled(false) 


local function applyOpenUiButtonScale(v)
	v = math.clamp(tonumber(v) or St.openUiButtonScale, 0.4, 1.6)
	St.openUiButtonScale = v
	if G.VYZECCMiniRestoreScale then G.VYZECCMiniRestoreScale.Scale = v end
	if G.TextBox_16 then G.TextBox_16.Text = string.format("%.2f", v) end
end

local function applyGuiScale(v)
	v = math.clamp(tonumber(v) or St.guiScale, 0.4, 1.6)
	St.guiScale = v
	if G.UIScale then G.UIScale.Scale = v end
	if G.TextBox_12 then G.TextBox_12.Text = string.format("%.2f", v) end
end

local function applyButtonScale(v)
	v = math.clamp(tonumber(v) or St.sideButtonScale, 0.4, 1.6)
	St.sideButtonScale = v
	if G.VYZECCButtonScale then G.VYZECCButtonScale.Scale = v end
	if G.TextBox_13 then G.TextBox_13.Text = string.format("%.2f", v) end
	if G.TextButton_ButtonUI then G.TextButton_ButtonUI.Text = tostring(math.floor(v * 100 + 0.5)) .. "%" end
end



local function applyStealBarScale(v)
	v = math.clamp(tonumber(v) or St.progressBarSize, 0.4, 1.6)
	St.progressBarSize = v
	if StealScale then StealScale.Scale = v end
	if G.TextBox_14 then G.TextBox_14.Text = string.format("%.2f", v) end
end

applyGuiScale(St.guiScale)
applyButtonScale(St.sideButtonScale)
applyStealBarScale(St.progressBarSize)
applyOpenUiButtonScale(St.openUiButtonScale)

G.VyzeccMiniRestoreButton.Visible = false
G.VyzeccMiniRestoreTitle.Visible = false

local function setMinimized(state)
	isMinimized = state
	if state then
		TweenService:Create(G.MainOuter, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			BackgroundTransparency = 1
		}):Play()
		task.delay(0.12, function()
			G.MainOuter.Visible = false
			G.MainOuter.BackgroundTransparency = 0
		end)
		G.VyzeccMiniRestoreButton.Visible = true
		G.VyzeccMiniRestoreTitle.Visible = true
		G.TextButton.Text = "+"
		if G.VYZECCMiniRestoreScale then
			G.VYZECCMiniRestoreScale.Scale = 0.4
			TweenService:Create(G.VYZECCMiniRestoreScale, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1}):Play()
		end
	else
		G.MainOuter.Visible = true
		G.MainOuter.BackgroundTransparency = 1
		TweenService:Create(G.MainOuter, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			BackgroundTransparency = 0
		}):Play()
		G.VyzeccMiniRestoreButton.Visible = false
		G.VyzeccMiniRestoreTitle.Visible = false
		G.TextButton.Text = "-"
	end
end

G.TextButton.MouseButton1Click:Connect(function()
	setMinimized(not isMinimized)
end)
G.VyzeccMiniRestoreButton.MouseButton1Click:Connect(function()
	setMinimized(false)
end)
G.VyzeccMiniRestoreTitle.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		setMinimized(false)
	end
end)

local function selectPage(pageName)
	
	
	local pageChanged = currentPage ~= pageName
	currentPage = pageName
	for _, page in pairs(pages) do
		if page then page.Visible = false end
	end
	local target = pages[pageName]
	if target then
		target.Visible = true
		target.CanvasPosition = Vector2.new(0, 0)
	end
	for name, data in pairs(navButtons) do
		local selected = (name == pageName)
		if pageChanged or not data.btn:GetAttribute("VyzeccNavStyled") then
			TweenService:Create(data.btn, TweenInfo.new(0.15), {
				BackgroundColor3 = selected and Color3.fromRGB(95, 40, 160) or Color3.fromRGB(18, 8, 28),
				BackgroundTransparency = selected and 0 or 0.22,
				TextColor3 = selected and Color3.fromRGB(249, 240, 255) or Color3.fromRGB(150, 100, 200)
			}):Play()
			if data.stroke then
				TweenService:Create(data.stroke, TweenInfo.new(0.15), {
					Color = selected and Color3.fromRGB(160, 80, 220) or Color3.fromRGB(119, 25, 185),
					Thickness = selected and 1.4 or 1
				}):Play()
			end
			data.btn:SetAttribute("VyzeccNavStyled", true)
		end
	end
end

G.VyzeccNav_MAIN.MouseButton1Click:Connect(function() selectPage("MAIN") end)
G.VyzeccNav_COMBAT.MouseButton1Click:Connect(function() selectPage("COMBAT") end)
G.VyzeccNav_MISC.MouseButton1Click:Connect(function() selectPage("MISC") end)
G.VyzeccNav_VISUALS.MouseButton1Click:Connect(function() selectPage("VISUALS") end)
G.VyzeccNav_CUSTOMIZE.MouseButton1Click:Connect(function() selectPage("UI") end)
selectPage("MAIN")

local function setToggleVisual(pill, on)
	local dot = pill:FindFirstChild("VyzeccToggleDot")
	if not dot then return end
	pill:SetAttribute("VyzeccToggleOn", on)
	local pillColor = on and Color3.fromRGB(110, 50, 180) or Color3.fromRGB(24, 12, 40)
	local dotColor = on and Color3.fromRGB(249, 240, 255) or Color3.fromRGB(40, 20, 70)
	local stroke = pill:FindFirstChildOfClass("UIStroke")
	local strokeColor = on and Color3.fromRGB(160, 90, 230) or Color3.fromRGB(55, 25, 90)
	TweenService:Create(pill, TweenInfo.new(0.18, Enum.EasingStyle.Quad), {BackgroundColor3 = pillColor}):Play()
	TweenService:Create(dot, TweenInfo.new(0.18, Enum.EasingStyle.Quad), {
		BackgroundColor3 = dotColor,
		Position = on and UDim2.new(1, -15, 0.5, -6) or UDim2.new(0, 3, 0.5, -6)
	}):Play()
	if stroke then
		TweenService:Create(stroke, TweenInfo.new(0.18), {Color = strokeColor}):Play()
	end
end

local _vyzeccToggleCallbacks = setmetatable({}, {__mode = "k"})
local _vyzeccToggleConnections = setmetatable({}, {__mode = "k"})
local _vyzeccToggleFallbackConnections = setmetatable({}, {__mode = "k"})
local function wireNamedToggle(pill, initial, onChange)
	if not pill then return end
	if _vyzeccToggleFallbackConnections[pill] then
		pcall(function() _vyzeccToggleFallbackConnections[pill]:Disconnect() end)
		_vyzeccToggleFallbackConnections[pill] = nil
	end
	_vyzeccToggleCallbacks[pill] = onChange
	local btn = pill:FindFirstChildOfClass("TextButton")
	if initial ~= nil and pill:GetAttribute("VyzeccToggleInitialized") ~= true then
		setToggleVisual(pill, initial)
		pill:SetAttribute("VyzeccToggleInitialized", true)
	end
	if btn and not _vyzeccToggleConnections[pill] then
		_vyzeccToggleConnections[pill] = btn.Activated:Connect(function()
			local cur = pill:GetAttribute("VyzeccToggleOn") == true
			local nxt = not cur
			setToggleVisual(pill, nxt)
			local callback = _vyzeccToggleCallbacks[pill]
			if callback then
				local ok, err = pcall(callback, nxt)
				if not ok then warn("Toggle callback failed: " .. tostring(err)) end
			end
			if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
		end)
	end
end


do
local _fps={descConn=nil,lightCache=nil,terrainCache=nil,baseParts={},effectsDisabled={},meshParts={},models={},attachments={}}
local function processFPSObj(v)
pcall(function()
local lpChar = LocalPlayer.Character
if lpChar and v:IsDescendantOf(lpChar) then return end
if v:IsA("Model") then
if _fps.models[v]==nil then _fps.models[v]={LevelOfDetail=v.LevelOfDetail,ModelStreamingMode=v.ModelStreamingMode} end
v.LevelOfDetail=Enum.ModelLevelOfDetail.Disabled
v.ModelStreamingMode=Enum.ModelStreamingMode.Nonatomic
elseif v:IsA("MeshPart") then
if _fps.meshParts[v]==nil then _fps.meshParts[v]={CastShadow=v.CastShadow,DoubleSided=v.DoubleSided,RenderFidelity=v.RenderFidelity} end
v.CastShadow=false
v.DoubleSided=false
pcall(function() v.RenderFidelity=Enum.RenderFidelity.Performance end)
elseif v:IsA("BasePart") then
if _fps.baseParts[v]==nil then _fps.baseParts[v]={CastShadow=v.CastShadow} end
v.CastShadow=false
elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") or v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Beam") then
if v.Enabled then table.insert(_fps.effectsDisabled,v) end
v.Enabled=false
elseif v:IsA("Explosion") then
v.BlastPressure=1
v.BlastRadius=1
end
end)
end
local function applyFPSBoost()
local _fpsObjects=workspace:GetDescendants();for i,v in ipairs(_fpsObjects)do processFPSObj(v);if i%180==0 then task.wait()end end;_fpsObjects=nil
pcall(function()
local lighting=game:GetService("Lighting");if not _fps.lightCache then _fps.lightCache={GlobalShadows=lighting.GlobalShadows,FogEnd=lighting.FogEnd,Brightness=lighting.Brightness} end
for _,v in pairs(lighting:GetDescendants())do
pcall(function()
if v:IsA("BloomEffect")or v:IsA("BlurEffect")or v:IsA("SunRaysEffect")or v:IsA("DepthOfFieldEffect")or v:IsA("ColorCorrectionEffect")then if v.Enabled then table.insert(_fps.effectsDisabled,v)end;v.Enabled=false end
end)
end
lighting.GlobalShadows=false;lighting.FogEnd=9e9;lighting.Brightness=0;local terrain=workspace:FindFirstChildOfClass("Terrain")
if terrain then
if not _fps.terrainCache then _fps.terrainCache={WaterReflectance=terrain.WaterReflectance,WaterTransparency=terrain.WaterTransparency,WaterVyzeccSize=terrain.WaterVyzeccSize,WaterVyzeccSpeed=terrain.WaterVyzeccSpeed} end;terrain.WaterReflectance=0;terrain.WaterTransparency=0.7;terrain.WaterVyzeccSize=0;terrain.WaterVyzeccSpeed=0
end
end)
if _fps.descConn then _fps.descConn:Disconnect()end
_fps._descQueue={}
_fps._descScheduled=false
local function flushFpsQueue()
_fps._descScheduled=false
if not St.fpsBoostEnabled then _fps._descQueue={} return end
local q=_fps._descQueue
_fps._descQueue={}
for i,v in ipairs(q) do
if v and v.Parent then processFPSObj(v) end
if i%40==0 then task.wait() end
end
end
_fps.descConn=workspace.DescendantAdded:Connect(function(v)
if not St.fpsBoostEnabled then return end
table.insert(_fps._descQueue,v)
if not _fps._descScheduled then
_fps._descScheduled=true
task.defer(flushFpsQueue)
end
end)
end
local function disableFPSBoost()
St.fpsBoostEnabled=false;if _fps.descConn then _fps.descConn:Disconnect();_fps.descConn=nil end
for model,info in pairs(_fps.models)do pcall(function()if model and model.Parent then model.LevelOfDetail=info.LevelOfDetail;model.ModelStreamingMode=info.ModelStreamingMode end end)end
for mesh,info in pairs(_fps.meshParts)do pcall(function()if mesh and mesh.Parent then mesh.Material=info.Material;mesh.Reflectance=info.Reflectance;mesh.CastShadow=info.CastShadow;mesh.DoubleSided=info.DoubleSided;mesh.RenderFidelity=info.RenderFidelity end end)end
for part,info in pairs(_fps.baseParts)do pcall(function()if part and part.Parent then part.Material=info.Material;part.Reflectance=info.Reflectance;part.CastShadow=info.CastShadow end end)end
for attachment,visible in pairs(_fps.attachments)do pcall(function()if attachment and attachment.Parent then attachment.Visible=visible end end)end
_fps.models={};_fps.meshParts={};_fps.baseParts={};_fps.attachments={}
for _,v in ipairs(_fps.effectsDisabled)do pcall(function()if v and v.Parent then v.Enabled=true end end)end
_fps.effectsDisabled={}
pcall(function()
local lighting=game:GetService("Lighting");if _fps.lightCache then lighting.GlobalShadows=_fps.lightCache.GlobalShadows;lighting.FogEnd=_fps.lightCache.FogEnd;lighting.Brightness=_fps.lightCache.Brightness;_fps.lightCache=nil end;local terrain=workspace:FindFirstChildOfClass("Terrain")
if terrain and _fps.terrainCache then terrain.WaterReflectance=_fps.terrainCache.WaterReflectance;terrain.WaterTransparency=_fps.terrainCache.WaterTransparency;terrain.WaterVyzeccSize=_fps.terrainCache.WaterVyzeccSize;terrain.WaterVyzeccSpeed=_fps.terrainCache.WaterVyzeccSpeed;_fps.terrainCache=nil end
end)
end

if G.Frame_62 then G.Frame_62.Visible = false end
end


do
	local Promoter = {
		enabled = false,
		locked = false,
		gui = nil,
		frame = nil,
		position = UDim2.new(0.5, -105, 0, 10),
	}
	St.promoterModeOn = false
	St.promoterLocked = false
	St.promoterPosition = { xs = 0.5, xo = -105, ys = 0, yo = 10 }

	local function savePromoterPos()
		if not Promoter.frame then return end
		local p = Promoter.frame.Position
		St.promoterPosition = {
			xs = p.X.Scale, xo = p.X.Offset,
			ys = p.Y.Scale, yo = p.Y.Offset,
		}
		Promoter.position = p
		if type(_G.VYZECC_SaveConfig) == "function" then
			task.defer(function() pcall(_G.VYZECC_SaveConfig) end)
		end
	end

	local function applySavedPos()
		local pos = St.promoterPosition
		if type(pos) == "table" then
			local xs = tonumber(pos.xs)
			local xo = tonumber(pos.xo)
			local ys = tonumber(pos.ys)
			local yo = tonumber(pos.yo)
			if xs and xo and ys and yo then
				-- migra vecchia pos al centro schermo verso alto-centro
				if ys == 0.5 and (yo == -18 or yo == -48 or yo == -105) then
					ys, yo = 0, 10
				end
				Promoter.position = UDim2.new(xs, xo, ys, yo)
				St.promoterPosition = { xs = xs, xo = xo, ys = ys, yo = yo }
			end
		else
			Promoter.position = UDim2.new(0.5, -105, 0, 10)
			St.promoterPosition = { xs = 0.5, xo = -105, ys = 0, yo = 10 }
		end
		if Promoter.frame then
			Promoter.frame.Position = Promoter.position
		end
	end

	local function destroyPromoterGui()
		if Promoter.gui then
			pcall(function() Promoter.gui:Destroy() end)
		end
		Promoter.gui, Promoter.frame, Promoter.mini = nil, nil, nil
	end

	local function createPromoterGui()
		destroyPromoterGui()
		local gui = Instance.new("ScreenGui")
		gui.Name = "VyzeccPromoterMode"
		gui.ResetOnSpawn = false
		gui.IgnoreGuiInset = true
		gui.DisplayOrder = 2147483646
		gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		pcall(function()
			gui.Parent = game:GetService("CoreGui")
		end)
		if not gui.Parent then
			gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
		end

		local frame = Instance.new("Frame")
		frame.Name = "PromoterCard"
		frame.Size = UDim2.new(0, 210, 0, 36)
		applySavedPos()
		frame.Position = Promoter.position
		frame.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
		frame.BorderSizePixel = 0
		frame.Active = true
		frame.ClipsDescendants = true
		frame.ZIndex = 50
		frame.Parent = gui
		Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)

		local stroke = Instance.new("UIStroke")
		stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		stroke.Color = Color3.fromRGB(160, 80, 220)
		stroke.Thickness = 1.2
		stroke.Parent = frame

		local discord = Instance.new("TextLabel")
		discord.BackgroundTransparency = 1
		discord.Position = UDim2.new(0, 10, 0, 0)
		discord.Size = UDim2.new(1, -48, 1, 0)
		discord.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
		discord.Text = "discord.gg/XNByTnwf25"
		discord.TextColor3 = Color3.fromRGB(249, 240, 255)
		discord.TextSize = 13
		discord.TextXAlignment = Enum.TextXAlignment.Left
		discord.TextYAlignment = Enum.TextYAlignment.Center
		discord.ZIndex = 51
		discord.Parent = frame

		local lockBtn = Instance.new("TextButton")
		lockBtn.Name = "LockBtn"
		lockBtn.Size = UDim2.new(0, 34, 0, 22)
		lockBtn.Position = UDim2.new(1, -38, 0.5, -11)
		lockBtn.BackgroundColor3 = Color3.fromRGB(28, 12, 48)
		lockBtn.BorderSizePixel = 0
		lockBtn.AutoButtonColor = false
		lockBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
		lockBtn.Text = Promoter.locked and "L" or "U"
		lockBtn.TextColor3 = Color3.fromRGB(249, 240, 255)
		lockBtn.TextSize = 11
		lockBtn.ZIndex = 52
		lockBtn.Parent = frame
		Instance.new("UICorner", lockBtn).CornerRadius = UDim.new(0, 6)

		local function refreshLockVisual()
			lockBtn.Text = Promoter.locked and "L" or "U"
			lockBtn.BackgroundColor3 = Promoter.locked and Color3.fromRGB(95, 40, 160) or Color3.fromRGB(28, 12, 48)
		end
		refreshLockVisual()

		lockBtn.Activated:Connect(function()
			Promoter.locked = not Promoter.locked
			St.promoterLocked = Promoter.locked
			refreshLockVisual()
			savePromoterPos()
		end)

		local dragging, dragStart, startPos = false, nil, nil
		frame.InputBegan:Connect(function(input)
			if Promoter.locked then return end
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						if dragging then
							dragging = false
							savePromoterPos()
						end
					end
				end)
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if not dragging or Promoter.locked then return end
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				local delta = input.Position - dragStart
				frame.Position = UDim2.new(
					startPos.X.Scale, startPos.X.Offset + delta.X,
					startPos.Y.Scale, startPos.Y.Offset + delta.Y
				)
			end
		end)

		Promoter.gui = gui
		Promoter.frame = frame
		Promoter.mini = nil
		applySavedPos()
	end

local function setPromoterMode(on)
		on = on == true
		Promoter.enabled = on
		St.promoterModeOn = on
		Promoter.locked = St.promoterLocked == true
		if on then
			createPromoterGui()
		else
			if Promoter.frame then
				savePromoterPos()
			end
			destroyPromoterGui()
		end
		if type(_G.VYZECC_SaveConfig) == "function" then
			task.defer(function() pcall(_G.VYZECC_SaveConfig) end)
		end
	end

	_G.VYZECC_SetPromoterMode = setPromoterMode
	_G.VYZECC_ApplyPromoterPos = applySavedPos
	_G.VYZECC_GetPromoterState = function()
		return {
			on = St.promoterModeOn == true,
			locked = St.promoterLocked == true,
			position = St.promoterPosition,
		}
	end

	if G.VyzeccTogglePill_Promoter then
		wireNamedToggle(G.VyzeccTogglePill_Promoter, false, setPromoterMode)
	end
end

wireNamedToggle(G.VyzeccTogglePill_35, false, function(on)
	
	
	St.uiLocked = on == true
	St.lockUI = on == true
end)


St.sideButtonsLocked = false
St.sidePanelLocked = false
for _, ctrl in pairs(buttonDrags) do ctrl.setEnabled(true) end

local hidePanelPill = G.VyzeccTogglePill_32
local function setSidePanelBackgroundVisible(visible)
	local show = visible == true
	if G.MobileStackPanel then
		G.MobileStackPanel.BackgroundTransparency = show and 0 or 1
	end
	if G.UIStroke_88 then
		G.UIStroke_88.Transparency = show and 0 or 1
	end
	if G.BgImage then
		G.BgImage.ImageTransparency = show and 0 or 1
	end
	if G.BgOverlay then
		G.BgOverlay.BackgroundTransparency = 1
	end
end

St.sidePanelVisible = false
if hidePanelPill then hidePanelPill:SetAttribute("VyzeccToggleOn", false) end
setSidePanelBackgroundVisible(false)

if G.TextButton_58 then
	G.TextButton_58.MouseButton1Click:Connect(function()
		for fr, pos in pairs(defaultButtonPositions) do
			if fr and fr.Parent then fr.Position = pos end
		end
		if G.MobileStackPanel then G.MobileStackPanel.Position = defaultPanelPos end
		local old = G.TextButton_58.Text
		G.TextButton_58.Text = "OK"
		task.delay(0.6, function()
			if G.TextButton_58 then G.TextButton_58.Text = old end
		end)
	end)
end

local function bindScaleBox(box, applyFn)
	if not box then return end
	box.ClearTextOnFocus = false
	box.Focused:Connect(function()
		box.TextColor3 = Color3.fromRGB(249, 240, 255)
	end)
	box.FocusLost:Connect(function()
		box.TextColor3 = Color3.fromRGB(150, 100, 200)
		local n = tonumber(box.Text)
		if n then
			applyFn(n)
		else
			applyFn(nil) 
		end
	end)
end

bindScaleBox(G.TextBox_12, applyGuiScale)
bindScaleBox(G.TextBox_13, applyButtonScale)
bindScaleBox(G.TextBox_14, applyStealBarScale)
bindScaleBox(G.TextBox_16, applyOpenUiButtonScale)

local function saveInterfaceScaleBoxes()
	if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
end
for _, box in ipairs({G.TextBox_12, G.TextBox_13, G.TextBox_14, G.TextBox_16}) do
	if box then
		box.FocusLost:Connect(saveInterfaceScaleBoxes)
		box:GetPropertyChangedSignal("Text"):Connect(function()
			if not box:IsFocused() then saveInterfaceScaleBoxes() end
		end)
	end
end

local interfaceSizeOpen = false
local function setInterfaceSizeOpen(state)
	interfaceSizeOpen = state == true
	if G.Frame_120 then G.Frame_120.Visible = interfaceSizeOpen end
	if G.Frame_122 then G.Frame_122.Visible = interfaceSizeOpen end
	if G.Frame_124 then G.Frame_124.Visible = interfaceSizeOpen end
	if G.Arrow_3 then G.Arrow_3.Text = interfaceSizeOpen and "▲" or "▼" end
end
if G.SizeDropdown_3 then
	G.SizeDropdown_3.Active = true
	G.SizeDropdown_3.AutoButtonColor = false
	G.SizeDropdown_3.Activated:Connect(function()
		setInterfaceSizeOpen(not interfaceSizeOpen)
	end)
end
setInterfaceSizeOpen(false)

local function updateSpeedModeButton()
	if not G.TextButton_2 then return end
	if St.laggerMode ~= 0 then
		G.TextButton_2.Text = "Lagger"
	else
		G.TextButton_2.Text = St.speedToggled and "Carry" or "Normal"
	end
end

local function updateLaggerModeButton()
	if not G.TextButton_3 then return end
	if St.laggerMode == 0 then
		G.TextButton_3.Text = "Lagger Off"
	elseif St.laggerMode == 1 then
		G.TextButton_3.Text = "Lagger On"
	else
		G.TextButton_3.Text = "Lagger Carry"
	end
end

local function setLaggerMode(mode)
	if mode == St.laggerMode then return end
	local oldMode = St.laggerMode
	if mode == 0 then
		St.carrySpeed = St._prevCarry or St.carrySpeed
		St.speedToggled = St._prevSpeed or false
		if G.TextBox_2 then G.TextBox_2.Text = tostring(math.floor(St.carrySpeed)) end
	elseif mode == 1 or mode == 2 then
		if oldMode == 0 then
			St._prevCarry = St.carrySpeed
			St._prevSpeed = St.speedToggled
		end
		St.speedToggled = false
	end
	St.laggerMode = mode
	updateSpeedModeButton()
	updateLaggerModeButton()
	syncMobileSpeedVisuals()
	if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
end

local function toggleLaggerMode()
	
	if St.laggerMode == 0 then
		setLaggerMode(2)
	elseif St.laggerMode == 2 then
		setLaggerMode(1)
	else
		setLaggerMode(0)
	end
end

local function toggleSpeedMode()
	if St.laggerMode ~= 0 then
		setLaggerMode(0)
		St.speedToggled = false
	else
		St.speedToggled = not St.speedToggled
	end
	updateSpeedModeButton()
	syncMobileSpeedVisuals()
	if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
end

local function setFrameOn(frame, on)
	if not frame then return end
	TweenService:Create(frame, TweenInfo.new(0.15), {
		BackgroundColor3 = on and Color3.fromRGB(126, 20, 200) or Color3.fromRGB(18, 8, 28)
	}):Play()
end

function syncMobileSpeedVisuals()
	setFrameOn(G.StackBtn_carrySpeed, St.laggerMode == 0 and St.speedToggled)
	setFrameOn(G.StackBtn_lagger, St.laggerMode == 1)
	setFrameOn(G.StackBtn_lagger2, St.laggerMode == 2)
	setFrameOn(G.StackBtn_autoLeft, AutoPath.L)
	setFrameOn(G.StackBtn_autoRight, AutoPath.R)
	mobileToggles["CARRY SPEED"] = St.laggerMode == 0 and St.speedToggled
	mobileToggles["LAGGER NORMAL"] = St.laggerMode == 1
	mobileToggles["LAGGER CARRY"] = St.laggerMode == 2
end

if G.TextButton_2 then
	G.TextButton_2.MouseButton1Click:Connect(toggleSpeedMode)
end
if G.TextButton_3 then
	G.TextButton_3.MouseButton1Click:Connect(toggleLaggerMode)
end
updateSpeedModeButton()
updateLaggerModeButton()

local function bindSpeedBox(box, key)
	if not box then return end
	box.ClearTextOnFocus = false
	box.Focused:Connect(function()
		box.TextColor3 = Color3.fromRGB(249, 240, 255)
	end)
	box.FocusLost:Connect(function()
		box.TextColor3 = Color3.fromRGB(150, 100, 200)
		local n = tonumber(box.Text)
		if n and n > 0 and n <= 500 then
			St[key] = math.floor(n)
			box.Text = tostring(St[key])
		else
			box.Text = tostring(math.floor(St[key] or 0))
		end
		if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
	end)
end

bindSpeedBox(G.TextBox, "normalSpeed")
bindSpeedBox(G.TextBox_2, "carrySpeed")
bindSpeedBox(G.TextBox_3, "burstNormalSpeed")
bindSpeedBox(G.TextBox_4, "burstCarrySpeed")

local function keyCodeToName(kc) return (kc and kc~=Enum.KeyCode.Unknown) and kc.Name or "NONE" end


local SUPPORTED_GAMEPAD_KEYS = {
	[Enum.KeyCode.ButtonA] = true, [Enum.KeyCode.ButtonB] = true,
	[Enum.KeyCode.ButtonX] = true, [Enum.KeyCode.ButtonY] = true,
	[Enum.KeyCode.ButtonL1] = true, [Enum.KeyCode.ButtonL2] = true,
	[Enum.KeyCode.ButtonL3] = true, [Enum.KeyCode.ButtonR1] = true,
	[Enum.KeyCode.ButtonR2] = true, [Enum.KeyCode.ButtonR3] = true,
	[Enum.KeyCode.ButtonStart] = true, [Enum.KeyCode.ButtonSelect] = true,
	[Enum.KeyCode.DPadUp] = true, [Enum.KeyCode.DPadDown] = true,
	[Enum.KeyCode.DPadLeft] = true, [Enum.KeyCode.DPadRight] = true,
}

local function startRebind(which,btn)
	if rebinding then return end
	rebinding=which
	if btn then btn.Text="…"; btn.TextColor3=Color3.fromRGB(249,240,255) end

	local connections = {}
	local function finishRebind(input)
		if not rebinding then return end
		local kb = input.UserInputType == Enum.UserInputType.Keyboard
		local gp = input.UserInputType == Enum.UserInputType.Gamepad1
		if not (kb or gp) or input.KeyCode == Enum.KeyCode.Unknown then return end
		if gp and not SUPPORTED_GAMEPAD_KEYS[input.KeyCode] then return end

		if kb and input.KeyCode == Enum.KeyCode.Escape then
			if btn then btn.Text=bindingText(which); btn.TextColor3=Color3.fromRGB(150,100,200) end
		else
			setBinding(which,input.UserInputType,input.KeyCode,getBindPlatform(input.UserInputType))
			if btn then btn.Text=bindingText(which); btn.TextColor3=Color3.fromRGB(150,100,200) end
			if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
		end

		rebinding=nil
		for _, connection in ipairs(connections) do
			if connection.Connected then connection:Disconnect() end
		end
	end

	connections[#connections+1] = UserInputService.InputBegan:Connect(function(input,gameProcessed)
		if gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard then return end
		finishRebind(input)
	end)

	
	connections[#connections+1] = UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Gamepad1 and input.KeyCode == Enum.KeyCode.ButtonL2 then
			finishRebind(input)
		end
	end)
end
if G.TextButton_5 then G.TextButton_5.Text=bindingText("speed"); G.TextButton_5:SetAttribute("BindTypes","Keyboard / PlayStation / Xbox / Gamepad"); G.TextButton_5.MouseButton1Click:Connect(function() startRebind("speed",G.TextButton_5) end) end
if G.TextButton_6 then G.TextButton_6.Text=bindingText("lagger"); G.TextButton_6:SetAttribute("BindTypes","Keyboard / PlayStation / Xbox / Gamepad"); G.TextButton_6.MouseButton1Click:Connect(function() startRebind("lagger",G.TextButton_6) end) end
if G.TextButton_10 then G.TextButton_10.Text=bindingText("autoLeft"); G.TextButton_10:SetAttribute("BindTypes","Keyboard / PlayStation / Xbox / Gamepad"); G.TextButton_10.MouseButton1Click:Connect(function() startRebind("autoLeft",G.TextButton_10) end) end
if G.TextButton_11 then G.TextButton_11.Text=bindingText("autoRight"); G.TextButton_11:SetAttribute("BindTypes","Keyboard / PlayStation / Xbox / Gamepad"); G.TextButton_11.MouseButton1Click:Connect(function() startRebind("autoRight",G.TextButton_11) end) end

if _G._VYZECC_speedControllerCleanup then pcall(_G._VYZECC_speedControllerCleanup) end
local _speedControllerToken = {}
_G._VYZECC_speedControllerToken = _speedControllerToken

local HIJACK = _G._VelHijackStore
if type(HIJACK) ~= "table" then
	HIJACK = { v = Vector3.zero }
	_G._VelHijackStore = HIJACK
end
HIJACK.v = Vector3.zero

_G._VioletteccFakeSpeed = tonumber(_G._VioletteccFakeSpeed) or 16

_G._VioletteccGetSpeed = function()
	return getActiveSpeed()
end

if not _G._VelHijackInstalled then
	local ok = pcall(function()
		local _mt = getrawmetatable(game)
		setreadonly(_mt, false)

		local _oi = _mt.__index
		local _on = _mt.__newindex

		local function isOurRoot(t, k)
			local _tk = tostring(k)
			if _tk ~= "AssemblyLinearVelocity" and _tk ~= "Velocity" then return false end
			if typeof(t) ~= "Instance" or not t:IsA("BasePart") then return false end
			local _tn = t.Name
			if _tn ~= "HumanoidRootPart" and _tn ~= "Torso" and _tn ~= "UpperTorso" then return false end
			local char = LocalPlayer.Character
			return char ~= nil and t:IsDescendantOf(char)
		end

		local wrap = (type(newcclosure) == "function") and newcclosure or function(f) return f end
		local noVirt = (type(LPH_NO_VIRTUALIZE) == "function") and LPH_NO_VIRTUALIZE or function(f) return f end

		_mt.__index = wrap(noVirt(function(t, k)
			if type(checkcaller) == "function" and not checkcaller() then
				local good, mine = pcall(isOurRoot, t, k)
				if good and mine then return HIJACK.v end
			end
			return _oi(t, k)
		end))

		_mt.__newindex = wrap(noVirt(function(t, k, v)
			if type(checkcaller) == "function" and not checkcaller() then
				local good, mine = pcall(isOurRoot, t, k)
				if good and mine then
					HIJACK.v = v
					return
				end
			end
			return _on(t, k, v)
		end))

		setreadonly(_mt, true)
	end)
	_G._VelHijackInstalled = ok and true or false
end

local _r = Random.new()
local _acc = 0
local moveConn = nil

local function _gc()
	local c = LocalPlayer.Character
	if not c then return nil, nil, nil end
	local h = c:FindFirstChildOfClass("Humanoid")
	local r = c:FindFirstChild("HumanoidRootPart")
	if h and h.Health > 0 and r then return c, h, r end
	return nil, nil, nil
end

local _ijLastJump = 0
local _lvBoost, _lvAtt = nil, nil
local _lvMaxForce, _lvFreeForce = 2200, 500
local _lvBlockedTime = 0
local _lvRayParams, _lvRayFilter, _lvRayFilterTime = nil, nil, 0

local function destroyMoveLV()
	if _lvBoost and _lvBoost.Parent then pcall(function() _lvBoost:Destroy() end) end
	if _lvAtt and _lvAtt.Parent then pcall(function() _lvAtt:Destroy() end) end
	_lvBoost, _lvAtt = nil, nil
end

local function setupMoveLV(hrp)
	if _lvBoost and _lvBoost.Parent == hrp then return end
	destroyMoveLV()
	local att = Instance.new("Attachment")
	att.Name = "VyzeccMoveAtt"
	att.Parent = hrp
	local lv = Instance.new("LinearVelocity")
	lv.Name = "VyzeccMoveLV"
	lv.Attachment0 = att
	lv.RelativeTo = Enum.ActuatorRelativeTo.World
	lv.VelocityConstraintMode = Enum.VelocityConstraintMode.Plane
	lv.PrimaryTangentAxis = Vector3.new(1, 0, 0)
	lv.SecondaryTangentAxis = Vector3.new(0, 0, 1)
	lv.MaxForce = _lvMaxForce
	lv.Enabled = false
	lv.Parent = hrp
	_lvAtt = att
	_lvBoost = lv
end

local function setMoveLV(root, hx, hz)
	-- kept for auto left/right & other callers (AssemblyLinearVelocity path)
	if not root or not root.Parent then return end
	local y = root.AssemblyLinearVelocity.Y
	if _ijLastJump and (os.clock() - _ijLastJump) < 0.12 then
		y = math.max(y, tonumber(St.jumpPower) or 50)
	end
	root.AssemblyLinearVelocity = Vector3.new(hx or 0, y, hz or 0)
end

local function startMovement()
	if moveConn then moveConn:Disconnect() moveConn = nil end
	moveConn = RunService.Heartbeat:Connect(function(dt)
		if _G._VYZECC_speedControllerToken ~= _speedControllerToken then return end
		local c, h, r = _gc()
		if not c or not h or not r then
			destroyMoveLV()
			return
		end

		-- pair with bat aimbot: yield control (Down Hub _batAimbotToggled)
		if _G._VezyBatAimbotOn then
			if _lvBoost then
				_lvBoost.PlaneVelocity = Vector2.zero
				_lvBoost.Enabled = false
			end
			return
		end

		local st = h:GetState()
		local ragdolled = h.PlatformStand
			or st == Enum.HumanoidStateType.Physics
			or st == Enum.HumanoidStateType.Ragdoll
			or st == Enum.HumanoidStateType.FallingDown
		if ragdolled then
			St.lastMoveDir = Vector3.zero
			if _lvBoost then
				_lvBoost.PlaneVelocity = Vector2.zero
				_lvBoost.Enabled = false
			end
			return
		end

		-- pair with auto left / auto right: they drive movement themselves
		if St.autoLeftEnabled or St.autoRightEnabled then
			if _lvBoost then
				_lvBoost.PlaneVelocity = Vector2.zero
				_lvBoost.Enabled = false
			end
			return
		end

		if _G.dropActive then
			if _lvBoost then
				_lvBoost.PlaneVelocity = Vector2.zero
				_lvBoost.Enabled = false
			end
			return
		end

		local speed = getActiveSpeed()
		if not speed or speed <= 0 then return end
		local moveDir = h.MoveDirection
		local moving = moveDir.Magnitude > 0.1

		-- wall slide ray (Down Hub)
		local wallNormalFlat = nil
		if moving then
			if not _lvRayParams then
				_lvRayParams = RaycastParams.new()
				_lvRayParams.FilterType = Enum.RaycastFilterType.Exclude
				_lvRayFilter = {}
				_lvRayFilterTime = 0
			end
			local now = tick()
			if now - _lvRayFilterTime > 1 then
				_lvRayFilterTime = now
				table.clear(_lvRayFilter)
				_lvRayFilter[1] = c
				for _, p in ipairs(Players:GetPlayers()) do
					if p.Character then _lvRayFilter[#_lvRayFilter + 1] = p.Character end
				end
				_lvRayParams.FilterDescendantsInstances = _lvRayFilter
			end
			local flatDir = Vector3.new(moveDir.X, 0, moveDir.Z)
			if flatDir.Magnitude > 0.001 then
				flatDir = flatDir.Unit
				local hit = workspace:Raycast(r.Position + Vector3.new(0, 1, 0), flatDir * 2.5, _lvRayParams)
				if hit and hit.Instance and hit.Instance.CanCollide then
					local nf = Vector3.new(hit.Normal.X, 0, hit.Normal.Z)
					if nf.Magnitude > 0.7 then wallNormalFlat = nf.Unit end
				end
			end
		end

		local hVel = Vector3.new(r.AssemblyLinearVelocity.X, 0, r.AssemblyLinearVelocity.Z)
		local blocked = wallNormalFlat ~= nil or (moving and hVel.Magnitude < 2)
		if blocked then
			pcall(applyNoCollisions)
		end

		setupMoveLV(r)
		local lv = _lvBoost
		if not lv then return end
		lv.Enabled = true

		if moving then
			pcall(function()
				if r.SetNetworkOwner then r:SetNetworkOwner(LocalPlayer) end
			end)
			local flat = Vector3.new(moveDir.X, 0, moveDir.Z).Unit
			St.lastMoveDir = flat
			if wallNormalFlat then
				local wanted = flat * speed
				local along = wanted - wallNormalFlat * wanted:Dot(wallNormalFlat)
				if along.Magnitude < 0.5 then
					lv.PlaneVelocity = Vector2.zero
				else
					lv.PlaneVelocity = Vector2.new(along.X, along.Z)
				end
			else
				lv.PlaneVelocity = Vector2.new(flat.X * speed, flat.Z * speed)
			end
		else
			St.lastMoveDir = Vector3.zero
			lv.PlaneVelocity = Vector2.zero
		end

		if blocked then
			_lvBlockedTime = _lvBlockedTime + (dt or 0.016)
		else
			_lvBlockedTime = 0
		end
		if _lvBlockedTime > 0.35 then
			if lv.MaxForce ~= _lvFreeForce then lv.MaxForce = _lvFreeForce end
		elseif lv.MaxForce ~= _lvMaxForce then
			lv.MaxForce = _lvMaxForce
		end
	end)
end

local function stopMovement()
	if moveConn then moveConn:Disconnect() moveConn = nil end
	destroyMoveLV()
	HIJACK.v = Vector3.zero
end

startMovement()

_G._VYZECC_speedControllerCleanup = function()
	stopMovement()
	if _G._VYZECC_speedControllerToken == _speedControllerToken then
		_G._VYZECC_speedControllerToken = nil
	end
end

G.VYZECCHubV1.Destroying:Connect(function()
	if _G._VYZECC_speedControllerToken == _speedControllerToken then
		_G._VYZECC_speedControllerCleanup()
	end
end)

UserInputService.InputBegan:Connect(function(inp, gp)
	if gp and inp.UserInputType == Enum.UserInputType.Keyboard then return end
	if inp.UserInputType ~= Enum.UserInputType.Keyboard and inp.UserInputType ~= Enum.UserInputType.Gamepad1 then return end
	if rebinding then return end
	if bindingMatches("speed", inp) then
		if St.laggerMode ~= 0 then
			setLaggerMode(0)
			St.speedToggled = false
		else
			St.speedToggled = not St.speedToggled
		end
		updateSpeedModeButton()
		syncMobileSpeedVisuals()
		if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
	elseif bindingMatches("lagger", inp) then
		toggleLaggerMode()
	end
end)

local stackBtns = {
	{frame = G.StackBtn_autoLeft,   btn = G.TextButton_61, name = "AUTO LEFT"},
	{frame = G.StackBtn_autoRight,  btn = G.TextButton_62, name = "AUTO RIGHT"},
	{frame = G.StackBtn_aimbot,     btn = G.TextButton_63, name = "AIMBOT"},
	{frame = G.StackBtn_lagger,     btn = G.TextButton_64, name = "LAGGER NORMAL"},
	{frame = G.StackBtn_drop,       btn = G.TextButton_65, name = "DROP BR"},
	{frame = G.StackBtn_lagger2,    btn = G.TextButton_66, name = "LAGGER CARRY"},
	{frame = G.StackBtn_tpDown,     btn = G.TextButton_67, name = "TP DOWN"},
	{frame = G.StackBtn_carrySpeed, btn = G.TextButton_68, name = "CARRY SPEED"},
}

for _, data in ipairs(stackBtns) do
	mobileToggles[data.name] = false
	if data.btn and data.frame then
		data.btn.MouseButton1Click:Connect(function()
			if data.frame:GetAttribute("_SideButtonWasDragged") then
				data.frame:SetAttribute("_SideButtonWasDragged", false)
				return
			end
			mobileToggles[data.name] = not mobileToggles[data.name]
			local on = mobileToggles[data.name]

			if data.name == "AUTO LEFT" then
				toggleAutoLeft(on)
				setFrameOn(G.StackBtn_autoLeft, AutoPath.L)
				mobileToggles["AUTO LEFT"] = AutoPath.L
			elseif data.name == "AUTO RIGHT" then
				toggleAutoRight(on)
				setFrameOn(G.StackBtn_autoRight, AutoPath.R)
				mobileToggles["AUTO RIGHT"] = AutoPath.R
			elseif data.name == "AIMBOT" then
				if on then startBatAimbot() else stopBatAimbot() end
				on = _G._VezyBatAimbotOn == true
				mobileToggles["AIMBOT"] = on
			elseif data.name == "CARRY SPEED" then
				if St.laggerMode ~= 0 then setLaggerMode(0) end
				St.speedToggled = on
				updateSpeedModeButton()
			elseif data.name == "LAGGER NORMAL" then
				if on then setLaggerMode(1) else setLaggerMode(0) end
			elseif data.name == "LAGGER CARRY" then
				if on then setLaggerMode(2) else setLaggerMode(0) end
			end

			if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
			if data.name ~= "AUTO LEFT" and data.name ~= "AUTO RIGHT" and data.name ~= "DROP BR" and data.name ~= "TP DOWN" then
				local targetColor = on and Color3.fromRGB(126, 20, 200) or Color3.fromRGB(18, 8, 28)
				TweenService:Create(data.frame, TweenInfo.new(0.18, Enum.EasingStyle.Quad), {
					BackgroundColor3 = targetColor
				}):Play()
			end

			local scaleObj = data.frame:FindFirstChildOfClass("UIScale")
			if not scaleObj then
				scaleObj = Instance.new("UIScale")
				scaleObj.Parent = data.frame
			end
			scaleObj.Scale = 0.85
			TweenService:Create(scaleObj, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1}):Play()
		end)
	end
end

local function setStealProgress(p)
	stealProgress = math.clamp(p, 0, 1)
	TweenService:Create(Fill, TweenInfo.new(0.08), {
		Size = UDim2.new(stealProgress, 0, 1, 0)
	}):Play()
end

StealClickBtn.MouseButton1Click:Connect(function()
	if os.clock() - stealLastDrag < 0.35 then return end
	stealActive = not stealActive
	if not stealActive then
		setStealProgress(0)
	end
end)

RunService.RenderStepped:Connect(function(dt)
	if stealActive then
		setStealProgress(stealProgress + dt * 0.22)
		if stealProgress >= 1 then
			stealActive = false
			task.delay(0.4, function()
				if not stealActive then setStealProgress(0) end
			end)
		end
	end
end)

local frameCount = 0
local lastTime = tick()
RunService.RenderStepped:Connect(function()
	frameCount = frameCount + 1
	local now = tick()
	if now - lastTime >= 0.5 then
		local fps = math.floor(frameCount / (now - lastTime))
		frameCount = 0
		lastTime = now
		StealFpsLabel.Text = "FPS: " .. fps
	end
end)

task.spawn(function()
	while true do
		task.wait(1.5)
		local ok, ping = pcall(function()
			return math.floor(LocalPlayer:GetNetworkPing() * 1000)
		end)
		if ok and ping then
			StealPingLabel.Text = "PING: " .. ping .. "ms"
			if ping < 80 then
				StealPingLabel.TextColor3 = Color3.fromRGB(50, 220, 120)
			elseif ping < 150 then
				StealPingLabel.TextColor3 = Color3.fromRGB(110, 50, 180)
			else
				StealPingLabel.TextColor3 = Color3.fromRGB(220, 80, 80)
			end
		end
	end
end)



St.autoCarryOn = false
St.autoCarryMode = "V1" 
St.antiRagdollEnabled = false
St.antiRagdollMode = "V2" 
St.infJumpEnabled = false
St.infJumpMode = "hold"
St.jumpPower = 50
St.holdJumpEnabled = false

_G._VynxAutoSpeedOn = false
_G._VynxAutoSpeedMode = "On Pick Up"
_G._VynxAutoSpeedRange = tonumber(_G._VynxAutoSpeedRange) or 15

local function paintCarryFromAuto(on)
	if on then
		if St.laggerMode ~= 0 then setLaggerMode(0) end
		St.speedToggled = true
	else
	end
	updateSpeedModeButton()
	syncMobileSpeedVisuals()
end

local AC = {
	active = false,
	previous = nil, 
	graceUntil = 0,
	conn = nil,
}
local softSteal = { spots = {}, nextScan = 0, latched = false, held = false, armed = true }

local function isIgnoredCarryTool(name)
	local n = tostring(name or ""):lower()
	return n:find("bat") or n:find("slap") or n:find("medusa")
		or n:find("head") or n:find("stone")
end

local function isCarryingBrainrot(char)
	if not char then return false end
	local LP = LocalPlayer
	if LP:GetAttribute("Stealing") == true or LP:GetAttribute("AntiKick") == true
		or char:GetAttribute("Stealing") == true then return true end
	for _, name in ipairs({"Carrying", "IsCarrying", "Grabbed", "Holding", "StealHold", "HasGrab"}) do
		local value = char:FindFirstChild(name, true)
		if value and ((value:IsA("BoolValue") and value.Value)
			or (value:IsA("ObjectValue") and value.Value)
			or (value:IsA("StringValue") and value.Value ~= "")) then return true end
	end
	for _, child in ipairs(char:GetChildren()) do
		local n = child.Name:lower()
		if child:IsA("Tool") and not isIgnoredCarryTool(n) then return true end
		if child:IsA("Model") and child:FindFirstChildWhichIsA("BasePart", true)
			and (n:find("brainrot") or n:find("animal") or n:find("carry")
				or n:find("grab") or n:find("steal") or n:find("hold")) then return true end
	end
	return false
end

local function enableAutoCarrySpeed()
	if AC.active then AC.graceUntil = tick() + 0.75; return end
	AC.previous = { speedToggled = St.speedToggled, laggerMode = St.laggerMode }
	AC.active = true
	AC.graceUntil = tick() + 0.75
	if St.laggerMode ~= 0 then setLaggerMode(0) end
	St.speedToggled = true
	updateSpeedModeButton()
	syncMobileSpeedVisuals()
end

local function disableAutoCarrySpeed()
	if not AC.active then return end
	local previous = AC.previous
	AC.active, AC.previous = false, nil
	if previous then
		if previous.laggerMode and previous.laggerMode ~= 0 then
			setLaggerMode(previous.laggerMode)
		else
			St.speedToggled = previous.speedToggled and true or false
			updateSpeedModeButton()
			syncMobileSpeedVisuals()
		end
	end
end

local function softStealScan()
	local spots = {}
	local plots = workspace:FindFirstChild("Plots")
	if not plots then softSteal.spots = spots; return end
	for _, plot in ipairs(plots:GetChildren()) do
		local sign = plot:FindFirstChild("PlotSign")
		local yourBase = sign and sign:FindFirstChild("YourBase")
		local mine = yourBase and yourBase:IsA("BillboardGui") and yourBase.Enabled == true
		if not mine then
			local podiums = plot:FindFirstChild("AnimalPodiums")
			if podiums then
				for _, podium in ipairs(podiums:GetChildren()) do
					local base = podium:FindFirstChild("Base")
					local spawnPart = base and base:FindFirstChild("Spawn")
					if spawnPart then spots[#spots + 1] = spawnPart.Position end
				end
			end
		end
	end
	softSteal.spots = spots
end

local function softStealInRange(char)
	local root = char and char:FindFirstChild("HumanoidRootPart")
	if not root then return false end
	local range = tonumber(_G._VynxAutoSpeedRange) or 15
	local target = _G._VioletteccStealTargetPos or _G._RaVeStealTargetPos
	if typeof(target) == "Vector3" and (root.Position - target).Magnitude <= range then
		return true
	end
	local now = tick()
	if now >= softSteal.nextScan then
		softSteal.nextScan = now + 0.5
		softStealScan()
	end
	for _, spot in ipairs(softSteal.spots) do
		if (root.Position - spot).Magnitude <= range then return true end
	end
	return false
end

local function softStealApply()
	if not AC.active then
		AC.previous = { speedToggled = St.speedToggled, laggerMode = St.laggerMode }
		AC.active = true
	end
	AC.graceUntil = tick() + 0.75
	if St.laggerMode ~= 0 then setLaggerMode(0) end
	St.speedToggled = true
	updateSpeedModeButton()
	syncMobileSpeedVisuals()
end

local function startAutoSpeed()
	if AC.conn then AC.conn:Disconnect() AC.conn = nil end
	AC.conn = RunService.RenderStepped:Connect(function()
		if not St.autoCarryOn then
			disableAutoCarrySpeed()
			return
		end
		local char = LocalPlayer.Character
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		if not char or not hum or hum.Health <= 0 then
			disableAutoCarrySpeed()
			return
		end

		if St.autoCarryMode == "V2" then
			local inRange = softStealInRange(char)
			local carrying = isCarryingBrainrot(char)
			if not inRange then softSteal.armed = true end
			if not inRange or St.speedToggled ~= true then softSteal.latched = false end
			if inRange and softSteal.armed and not softSteal.latched then
				softSteal.latched = true
				softSteal.held = false
				softStealApply()
			end
			if AC.active then
				if carrying then
					softSteal.held = true
					AC.graceUntil = tick() + 0.75
				elseif softSteal.held then
					softSteal.held = false
					softSteal.latched = false
					softSteal.armed = false
					disableAutoCarrySpeed()
				elseif not inRange and tick() > AC.graceUntil then
					softSteal.latched = false
					disableAutoCarrySpeed()
				end
			end
			return
		end

		if isCarryingBrainrot(char) then
			enableAutoCarrySpeed()
		elseif AC.active then
			disableAutoCarrySpeed()
		end
	end)
end

local function stopAutoSpeed()
	if AC.conn then AC.conn:Disconnect() AC.conn = nil end
	softSteal.latched, softSteal.held, softSteal.armed = false, false, true
	disableAutoCarrySpeed()
end

LocalPlayer.CharacterAdded:Connect(function()
	softSteal.latched, softSteal.held, softSteal.armed = false, false, true
end)

_G._CandyIsCarrying = isCarryingBrainrot
_G.AutoCarrySpeed = {
	IsCarryingBrainrot = isCarryingBrainrot,
	Enable = enableAutoCarrySpeed,
	Disable = disableAutoCarrySpeed,
}

wireNamedToggle(G.VyzeccTogglePill_2, false, function(on)
	St.autoCarryOn = on
	_G._VynxAutoSpeedOn = on
	if on then startAutoSpeed() else stopAutoSpeed() end
end)

if G.TextButton_9 then
	G.TextButton_9.Text = St.autoCarryMode
	G.TextButton_9.MouseButton1Click:Connect(function()
		St.autoCarryMode = (St.autoCarryMode == "V1") and "V2" or "V1"
		_G._VynxAutoSpeedMode = (St.autoCarryMode == "V2") and "Soft Steal" or "On Pick Up"
		G.TextButton_9.Text = St.autoCarryMode
		softSteal.latched, softSteal.held, softSteal.armed = false, false, true
		if St.autoCarryOn then
			stopAutoSpeed()
			startAutoSpeed()
		end
	end)
end

local AntiRagdoll = {
	Enabled = false,
	Connection = nil,
	ResetCooldown = 0,
}

local function arIsRagdolled()
	local char = LocalPlayer.Character
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if not hum then return false end
	local state = hum:GetState()
	return state == Enum.HumanoidStateType.Physics
		or state == Enum.HumanoidStateType.Ragdoll
		or state == Enum.HumanoidStateType.FallingDown
end

local function arRecoverV1(hum, root)
	pcall(function()
		hum:ChangeState(Enum.HumanoidStateType.GettingUp)
		root.AssemblyLinearVelocity = Vector3.zero
		root.AssemblyAngularVelocity = Vector3.zero
		hum.PlatformStand = false
		hum.Sit = false
		hum.AutoRotate = true
	end)
end

local function arRecoverV2(hum, root, char)
	pcall(function()
		hum:ChangeState(Enum.HumanoidStateType.GettingUp)
		root.Velocity = Vector3.zero
		root.RotVelocity = Vector3.zero
		root.AssemblyLinearVelocity = Vector3.zero
		root.AssemblyAngularVelocity = Vector3.zero
		for _, obj in ipairs(char:GetDescendants()) do
			if obj:IsA("Motor6D") then obj.Enabled = true end
			if obj:IsA("Constraint") then obj.Enabled = true end
		end
		workspace.CurrentCamera.CameraSubject = hum
		local PM = LocalPlayer.PlayerScripts:FindFirstChild("PlayerModule")
		if PM then
			local ok, CM = pcall(require, PM:FindFirstChild("ControlModule"))
			if ok and CM and CM.Enable then CM:Enable() end
		end
		hum.AutoRotate = true
		hum.PlatformStand = false
		hum.Sit = false
	end)
end

local function arStart()
	if AntiRagdoll.Connection then return end
	AntiRagdoll.Enabled = true
	AntiRagdoll.Connection = RunService.Heartbeat:Connect(function()
		if not St.antiRagdollEnabled then return end
		local char = LocalPlayer.Character
		if not char then return end
		local hum = char:FindFirstChildOfClass("Humanoid")
		local root = char:FindFirstChild("HumanoidRootPart")
		if not hum or not root or hum.Health <= 0 then return end
		if _G.dropActive then return end

		local state, now = hum:GetState(), tick()
		if state == Enum.HumanoidStateType.Physics
			or state == Enum.HumanoidStateType.Ragdoll
			or state == Enum.HumanoidStateType.FallingDown then
			if now - AntiRagdoll.ResetCooldown > 0.15 then
				AntiRagdoll.ResetCooldown = now
				arRecoverV2(hum, root, char)
			end
		end
	end)
end

local function arStop()
	AntiRagdoll.Enabled = false
	if AntiRagdoll.Connection then
		AntiRagdoll.Connection:Disconnect()
		AntiRagdoll.Connection = nil
	end
	AntiRagdoll.ResetCooldown = 0
end

LocalPlayer.CharacterAdded:Connect(function()
	task.wait(0.5)
	if not St.antiRagdollEnabled then return end
	if AntiRagdoll.Connection then
		AntiRagdoll.Connection:Disconnect()
		AntiRagdoll.Connection = nil
	end
	arStart()
end)

_G._VioletteccStartAntiRagdoll = arStart
_G._VioletteccStopAntiRagdoll = arStop

wireNamedToggle(G.VyzeccTogglePill_3, false, function(on)
	St.antiRagdollEnabled = on
	if on then arStart() else arStop() end
end)

St.antiRagdollMode = "V2"
if G.TextButton_13 then G.TextButton_13.Visible = false end


local _ijConns = {}
local _padJumpHeld = false

local _ijCanJump = true
local _ijTouchHeld = false
local _ijMobileConns = {}

local function applyJumpVelocity()
	if not St.infJumpEnabled then return end
	if not _ijCanJump then return end
	if _G.dropActive or St._tpInProgress then return end
	if _G._VezyBatAimbotOn and false then return end
	local char = LocalPlayer.Character
	if not char then return end
	local hum = char:FindFirstChildOfClass("Humanoid")
	local root = char:FindFirstChild("HumanoidRootPart")
	if not hum or not root or hum.Health <= 0 then return end
	_ijCanJump = false
	_ijLastJump = os.clock()
	local jp = math.clamp(tonumber(St.jumpPower) or 50, 20, 120)
	local v = root.AssemblyLinearVelocity
	root.AssemblyLinearVelocity = Vector3.new(v.X, jp, v.Z)
	task.delay(0.08, function()
		_ijCanJump = true
	end)
end

local function bindMobileJumpButton(btn)
	for _, c in ipairs(_ijMobileConns) do pcall(function() c:Disconnect() end) end
	table.clear(_ijMobileConns)
	_ijTouchHeld = false
	if not btn or not btn:IsA("GuiButton") then return end
	_ijMobileConns[1] = btn.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch then
			_ijTouchHeld = true
		end
	end)
	_ijMobileConns[2] = btn.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch then
			_ijTouchHeld = false
		end
	end)
	_ijMobileConns[3] = btn.AncestryChanged:Connect(function(_, parent)
		if not parent then _ijTouchHeld = false end
	end)
	_ijMobileConns[4] = btn.Activated:Connect(function()
		if not St.infJumpEnabled then return end
		if St.infJumpMode ~= "hold" then
			applyJumpVelocity()
		end
	end)
end

local function findMobileJumpButton()
	local pg = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	if not pg then return end
	local jb = pg:FindFirstChild("JumpButton", true)
	if jb and jb:IsA("GuiButton") then
		bindMobileJumpButton(jb)
	end
end

local function stopInfJump()
	for _, c in ipairs(_ijConns) do pcall(function() c:Disconnect() end) end
	_ijConns = {}
	for _, c in ipairs(_ijMobileConns) do pcall(function() c:Disconnect() end) end
	_ijMobileConns = {}
	_padJumpHeld = false
	_ijTouchHeld = false
	_ijCanJump = true
end

local function startInfJump()
	stopInfJump()
	St.infJumpMode = St.infJumpMode or "hold"
	St.jumpPower = tonumber(St.jumpPower) or 50
	_ijConns[#_ijConns + 1] = UserInputService.JumpRequest:Connect(function()
		if not St.infJumpEnabled then return end
		if St.infJumpMode == "hold" then return end
		applyJumpVelocity()
	end)
	_ijConns[#_ijConns + 1] = UserInputService.InputBegan:Connect(function(input, gp)
		if input.KeyCode == Enum.KeyCode.Space or input.KeyCode == Enum.KeyCode.ButtonA then
			_padJumpHeld = true
			if St.infJumpEnabled and St.infJumpMode ~= "hold" then
				applyJumpVelocity()
			end
		end
	end)
	_ijConns[#_ijConns + 1] = UserInputService.InputEnded:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.Space or input.KeyCode == Enum.KeyCode.ButtonA then
			_padJumpHeld = false
		end
	end)
	_ijConns[#_ijConns + 1] = RunService.Heartbeat:Connect(function()
		if not St.infJumpEnabled then return end
		local char = LocalPlayer.Character
		if not char then return end
		local root = char:FindFirstChild("HumanoidRootPart")
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not root or not hum or hum.Health <= 0 then return end
		if St.infJumpMode == "hold" then
			local held = false
			pcall(function() held = UserInputService:IsKeyDown(Enum.KeyCode.Space) end)
			if not held then
				held = _padJumpHeld == true or _ijTouchHeld == true
			end
			if held then
				applyJumpVelocity()
			end
		end
		local velocity = root.AssemblyLinearVelocity
		if velocity.Y < -120 then
			root.AssemblyLinearVelocity = Vector3.new(velocity.X, -120, velocity.Z)
		end
	end)
	pcall(findMobileJumpButton)
	local pg = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	if pg then
		_ijConns[#_ijConns + 1] = pg.DescendantAdded:Connect(function(d)
			if d.Name == "JumpButton" and d:IsA("GuiButton") then
				bindMobileJumpButton(d)
			end
		end)
	end
end

wireNamedToggle(G.VyzeccTogglePill, false, function(on)
	St.infJumpEnabled = on
	if on then startInfJump() else stopInfJump() end
end)

if G.Frame_16 then G.Frame_16.Visible = false end
if G.SizeDropdown then G.SizeDropdown.Visible = false end
if G.Arrow then G.Arrow.Visible = false end
if G.JumpModeBtn then
	G.JumpModeBtn.Text = (St.infJumpMode == "manual") and "Tap" or "Hold"
	G.JumpModeBtn.MouseButton1Click:Connect(function()
		if St.infJumpMode == "hold" then
			St.infJumpMode = "manual"
			G.JumpModeBtn.Text = "Tap"
		else
			St.infJumpMode = "hold"
			G.JumpModeBtn.Text = "Hold"
		end
		if St.infJumpEnabled then
			stopInfJump()
			startInfJump()
		end
		if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
	end)
end

local _antiDieEnabled = false
local _antiDieConn = nil
local _antiDieCharConn = nil
local _antiDieDeathConns = {}
local function setAntiDieEnabled(on)
	on = on == true
	if _antiDieEnabled == on then return end

	_antiDieEnabled = on

	local function clearDeathConns()
		for _, c in ipairs(_antiDieDeathConns) do
			pcall(function() c:Disconnect() end)
		end
		table.clear(_antiDieDeathConns)
	end

	if _antiDieConn then
		pcall(function() _antiDieConn:Disconnect() end)
		_antiDieConn = nil
	end
	if _antiDieCharConn then
		pcall(function() _antiDieCharConn:Disconnect() end)
		_antiDieCharConn = nil
	end
	clearDeathConns()

	local function restoreHumanoid(hum)
		if not hum then return end
		pcall(function()
			hum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
			hum.BreakJointsOnDeath = true
			if hum.MaxHealth ~= hum.MaxHealth or hum.MaxHealth > 1e9 then
				hum.MaxHealth = 100
			elseif hum.MaxHealth <= 0 then
				hum.MaxHealth = 100
			end
			local mh = hum.MaxHealth
			if mh ~= mh or mh > 1e6 then
				hum.MaxHealth = 100
				mh = 100
			end
			hum.Health = math.clamp(hum.Health > 1e6 and mh or hum.Health, 0, mh)
			if hum.Health > mh or hum.Health ~= hum.Health then
				hum.Health = mh
			end
		end)
		pcall(function()
			hum.MaxHealth = 100
			hum.Health = 100
			hum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
			hum.BreakJointsOnDeath = true
		end)
	end

	local function protectChar(char)
		if not char or not _antiDieEnabled then return end
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not hum then
			hum = char:FindFirstChild("Humanoid")
		end
		if not hum then return end

		pcall(function()
			hum.MaxHealth = math.huge
			hum.Health = math.huge
			hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
			hum.BreakJointsOnDeath = false
		end)

		local sc = hum.StateChanged:Connect(function(_, newState)
			if not _antiDieEnabled then return end
			if newState == Enum.HumanoidStateType.Dead then
				pcall(function()
					hum.Health = math.huge
					hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
				end)
			end
		end)
		table.insert(_antiDieDeathConns, sc)

		local hc = hum:GetPropertyChangedSignal("Health"):Connect(function()
			if not _antiDieEnabled then return end
			if hum.Health < hum.MaxHealth then
				pcall(function()
					hum.Health = math.huge
				end)
			end
		end)
		table.insert(_antiDieDeathConns, hc)
	end

	if on then
		protectChar(LocalPlayer.Character)

		_antiDieCharConn = LocalPlayer.CharacterAdded:Connect(function(char)
			if not _antiDieEnabled then return end
			task.wait(0.1)
			if not _antiDieEnabled then return end
			clearDeathConns()
			protectChar(char)
		end)

		_antiDieConn = RunService.Heartbeat:Connect(function()
			if not _antiDieEnabled then return end
			local char = LocalPlayer.Character
			local hum = char and char:FindFirstChildOfClass("Humanoid")
			if not hum or not hum.Parent then return end
			pcall(function()
				if hum.Health < hum.MaxHealth then
					hum.Health = math.huge
				end
				if hum:GetStateEnabled(Enum.HumanoidStateType.Dead) then
					hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
				end
				if hum.BreakJointsOnDeath then
					hum.BreakJointsOnDeath = false
				end
			end)
		end)
	else
		local char = LocalPlayer.Character
		if char then
			restoreHumanoid(char:FindFirstChildOfClass("Humanoid"))
		end
	end
end

G.Frame_AntiDie = Instance.new("Frame")
G.Frame_AntiDie.Name = "Frame_AntiDie"
G.Frame_AntiDie.BackgroundTransparency = 1
G.Frame_AntiDie.BorderSizePixel = 0
G.Frame_AntiDie.LayoutOrder = 9
G.Frame_AntiDie.Size = UDim2.new(1, 0, 0, 40)
G.Frame_AntiDie.Parent = G.VyzeccPage_Misc

G.TextLabel_AntiDie = Instance.new("TextLabel")
G.TextLabel_AntiDie.BackgroundTransparency = 1
G.TextLabel_AntiDie.Position = UDim2.new(0, 12, 0, 0)
G.TextLabel_AntiDie.Size = UDim2.new(1, -64, 1, 0)
G.TextLabel_AntiDie.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
G.TextLabel_AntiDie.Text = "Anti Die"
G.TextLabel_AntiDie.TextColor3 = Color3.fromRGB(234, 225, 240)
G.TextLabel_AntiDie.TextSize = 11
G.TextLabel_AntiDie.TextXAlignment = Enum.TextXAlignment.Left
G.TextLabel_AntiDie.Parent = G.Frame_AntiDie

G.VyzeccTogglePill_AntiDie = Instance.new("Frame")
G.VyzeccTogglePill_AntiDie.Name = "VyzeccTogglePill"
G.VyzeccTogglePill_AntiDie.BackgroundColor3 = Color3.fromRGB(24, 12, 40)
G.VyzeccTogglePill_AntiDie.BorderSizePixel = 0
G.VyzeccTogglePill_AntiDie.Position = UDim2.new(1, -54, 0.5, -9)
G.VyzeccTogglePill_AntiDie.Size = UDim2.new(0, 40, 0, 18)
G.VyzeccTogglePill_AntiDie.ZIndex = 7
G.VyzeccTogglePill_AntiDie:SetAttribute("VyzeccToggleOn", false)
G.VyzeccTogglePill_AntiDie.Parent = G.Frame_AntiDie

local antiDieCorner = Instance.new("UICorner")
antiDieCorner.CornerRadius = UDim.new(0, 9)
antiDieCorner.Parent = G.VyzeccTogglePill_AntiDie
local antiDieStroke = Instance.new("UIStroke")
antiDieStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
antiDieStroke.Color = Color3.fromRGB(55, 25, 90)
antiDieStroke.Parent = G.VyzeccTogglePill_AntiDie
local antiDieDot = Instance.new("Frame")
antiDieDot.Name = "VyzeccToggleDot"
antiDieDot.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
antiDieDot.BorderSizePixel = 0
antiDieDot.Position = UDim2.new(0, 3, 0.5, -6)
antiDieDot.Size = UDim2.new(0, 12, 0, 12)
antiDieDot.ZIndex = 8
antiDieDot.Parent = G.VyzeccTogglePill_AntiDie
local antiDieDotCorner = Instance.new("UICorner")
antiDieDotCorner.CornerRadius = UDim.new(0, 6)
antiDieDotCorner.Parent = antiDieDot
local antiDieButton = Instance.new("TextButton")
antiDieButton.BackgroundTransparency = 1
antiDieButton.BorderSizePixel = 0
antiDieButton.Size = UDim2.new(1, 0, 1, 0)
antiDieButton.ZIndex = 9
antiDieButton.Text = ""
antiDieButton.Parent = G.VyzeccTogglePill_AntiDie

wireNamedToggle(G.VyzeccTogglePill_AntiDie, false, setAntiDieEnabled)

St.dropType = "Jump Drop" 
St.dropKey = Enum.KeyCode.X
local Drop = { active = false }
_G._RaVeDropToken = _G._RaVeDropToken or 0

local dropConn = nil
local function runDropBrainrot()
	if Drop.active then return end
	local char = LocalPlayer.Character
	local root = char and char:FindFirstChild("HumanoidRootPart")
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if not root or not hum or hum.Health <= 0 then return end

	Drop.active = true
	_G.dropActive = true
	_G.IsDropping = true
	setSideButtonState(G.StackBtn_drop, true, 0.08)
	task.delay(0.3, function()
		setSideButtonState(G.StackBtn_drop, false, 0.12)
	end)
	local startY = root.Position.Y
	local startedAt = tick()

	if dropConn then dropConn:Disconnect(); dropConn = nil end
	dropConn = RunService.Heartbeat:Connect(function()
		local currentChar = LocalPlayer.Character
		local currentRoot = currentChar and currentChar:FindFirstChild("HumanoidRootPart")
		local currentHum = currentChar and currentChar:FindFirstChildOfClass("Humanoid")
		if currentChar ~= char or not currentRoot or not currentHum or currentHum.Health <= 0 then
			if dropConn then dropConn:Disconnect(); dropConn = nil end
			Drop.active = false
			_G.dropActive = false
			_G.IsDropping = false
			return
		end

		if tick() - startedAt >= 0.2 then
			if dropConn then dropConn:Disconnect(); dropConn = nil end
			local _, yaw = currentRoot.CFrame:ToEulerAnglesYXZ()
			currentRoot.CFrame = CFrame.new(currentRoot.Position.X, startY, currentRoot.Position.Z) * CFrame.Angles(0, yaw, 0)
			currentRoot.AssemblyLinearVelocity = Vector3.zero
			pcall(function() currentRoot.Velocity = Vector3.zero end)
			Drop.active = false
			_G.dropActive = false
			_G.IsDropping = false
			return
		end

		currentRoot.AssemblyLinearVelocity = Vector3.new(
			currentRoot.AssemblyLinearVelocity.X,
			150,
			currentRoot.AssemblyLinearVelocity.Z
		)
	end)
end

_G._VynxRunDrop = runDropBrainrot

if G.TextButton_14 then
	G.TextButton_14.Visible = false
end

if G.TextButton_15 then
	G.TextButton_15.Text = bindingText("drop")
	G.TextButton_15:SetAttribute("BindTypes","Keyboard / PlayStation / Xbox / Gamepad")
	G.TextButton_15.MouseButton1Click:Connect(function()
		startRebind("drop", G.TextButton_15)
	end)
end

St.tpDownKey = Enum.KeyCode.Unknown
St.autoTpDownEnabled = false
St.autoTpDownHeight = tonumber(G.TextBox_6 and G.TextBox_6.Text) or 20
_G._VynxAutoTPDownEnabled = false
_G._VynxAutoTPDownHeightTrigger = St.autoTpDownHeight

local function resolveAimbotSpeedForTp()
	if _G._VezyBatSpeedEnabled then
		if St.laggerMode ~= 0 then
			return math.clamp(tonumber(_G._VezyBatAimbotSpeedLagger) or 40, 1, 200)
		end
		return math.clamp(tonumber(_G._VezyBatAimbotSpeed) or 58, 1, 200)
	end
	if St.laggerMode == 1 or St.laggerMode == 2 then
		return math.clamp(tonumber(St.burstNormalSpeed) or 15, 1, 200)
	end
	return math.clamp(tonumber(St.normalSpeed) or 60, 1, 200)
end

local function getCharacterStandHeight(hum, hrp)
	local half = 1
	pcall(function() half = hrp.Size.Y * 0.5 end)
	if half <= 0 then half = 1 end
	local stand = half * 3
	pcall(function()
		if hum and hum.RigType == Enum.HumanoidRigType.R6 then
			stand = half * 3
		elseif hum then
			stand = half + (hum.HipHeight or half * 2)
		end
	end)
	if stand ~= stand or stand < 1 or stand > 12 then
		stand = half * 3
	end
	return stand + 0.15
end

local function rayGroundY(char, hrp, hum)
	local filter = { char }
	pcall(function()
		for _, plr in ipairs(Players:GetPlayers()) do
			if plr ~= LocalPlayer and plr.Character then
				table.insert(filter, plr.Character)
			end
		end
	end)
	local params = RaycastParams.new()
	params.FilterDescendantsInstances = filter
	params.FilterType = Enum.RaycastFilterType.Exclude
	params.IgnoreWater = true
	pcall(function() params.RespectCanCollide = true end)
	local pos = hrp.Position
	local half = 1
	pcall(function() half = hrp.Size.Y * 0.5 end)
	local scanY = pos.Y - half - 0.1
	local groundY = nil
	for _ = 1, 12 do
		local hit = workspace:Raycast(Vector3.new(pos.X, scanY, pos.Z), Vector3.new(0, -4000, 0), params)
		if not hit then break end
		local inst = hit.Instance
		local skip = false
		if inst then
			pcall(function()
				if inst:IsA("BasePart") and inst.CanCollide == false then
					skip = true
				end
				local model = inst:FindFirstAncestorOfClass("Model")
				if model and model:FindFirstChildOfClass("Humanoid") then
					skip = true
				end
			end)
		else
			skip = true
		end
		if skip then
			if inst then table.insert(filter, inst) end
			params.FilterDescendantsInstances = filter
			scanY = hit.Position.Y - 0.05
		else
			groundY = hit.Position.Y
			break
		end
	end
	if not groundY then return -7 end
	return groundY + getCharacterStandHeight(hum, hrp)
end

local function runTPDown()
	setSideButtonState(G.StackBtn_tpDown, true, 0.08)
	task.delay(0.3, function()
		setSideButtonState(G.StackBtn_tpDown, false, 0.12)
	end)
	pcall(function()
		local c = LocalPlayer.Character
		if not c then return end
		local hrp = c:FindFirstChild("HumanoidRootPart")
		local hum = c:FindFirstChildOfClass("Humanoid")
		if not hrp or not hum then return end
		local aimbotOn = _G._VezyBatAimbotOn == true
		St._tpInProgress = true
		St._tpAimbotKeep = aimbotOn
		local yaw = select(2, hrp.CFrame:ToEulerAnglesYXZ())
		local prevVel = hrp.AssemblyLinearVelocity
		local prevHoriz = Vector3.new(prevVel.X, 0, prevVel.Z)
		local targetY = rayGroundY(c, hrp, hum)

		hrp.CFrame = CFrame.new(hrp.Position.X, targetY, hrp.Position.Z) * CFrame.Angles(0, yaw, 0)
		pcall(function() hrp.Velocity = Vector3.zero end)

		if aimbotOn then
			local spd = resolveAimbotSpeedForTp()
			local horiz = prevHoriz
			if horiz.Magnitude < 1 then
				local best, bestDist = nil, 120
				for _, p in ipairs(Players:GetPlayers()) do
					if p ~= LocalPlayer and p.Character then
						local tr = p.Character:FindFirstChild("HumanoidRootPart")
						local hm = p.Character:FindFirstChildOfClass("Humanoid")
						if tr and hm and hm.Health > 0 then
							local d = (tr.Position - hrp.Position).Magnitude
							if d < bestDist then best, bestDist = tr, d end
						end
					end
				end
				if best then
					local flat = Vector3.new(best.Position.X - hrp.Position.X, 0, best.Position.Z - hrp.Position.Z)
					if flat.Magnitude > 0.05 then horiz = flat.Unit * spd end
				end
			else
				horiz = horiz.Unit * spd
			end
			hrp.AssemblyLinearVelocity = Vector3.new(horiz.X, math.clamp(prevVel.Y, -40, 40), horiz.Z)
			pcall(function()
				hum.PlatformStand = false
				hum.AutoRotate = false
			end)
		else
			hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
		end

		task.delay(0.18, function()
			St._tpInProgress = false
			St._tpAimbotKeep = false
		end)
	end)
end

_G._VynxRunTPDown = runTPDown

if G.TextButton_16 then
	G.TextButton_16.Text = "…"
	G.TextButton_16.MouseButton1Click:Connect(function()
		startRebind("tpDown", G.TextButton_16)
	end)
end

if G.TextBox_6 then
	G.TextBox_6.FocusLost:Connect(function()
		local n = tonumber(G.TextBox_6.Text)
		if n and n >= 5 and n <= 200 then
			St.autoTpDownHeight = n
			_G._VynxAutoTPDownHeightTrigger = n
			G.TextBox_6.Text = tostring(math.floor(n))
		else
			G.TextBox_6.Text = tostring(St.autoTpDownHeight)
		end
	end)
end

wireNamedToggle(G.VyzeccTogglePill_4, false, function(on)
	St.autoTpDownEnabled = on
	_G._VynxAutoTPDownEnabled = on
end)

RunService.Heartbeat:Connect(function()
	if not St.autoTpDownEnabled then return end
	local char = LocalPlayer.Character
	if not char then return end
	if not isCarryingBrainrot(char) then return end
	local root = char:FindFirstChild("HumanoidRootPart")
	if not root then return end
	local rp = RaycastParams.new()
	rp.FilterDescendantsInstances = { char }
	rp.FilterType = Enum.RaycastFilterType.Exclude
	local hit = workspace:Raycast(root.Position, Vector3.new(0, -2000, 0), rp)
	if not hit then return end
	local trigger = St.autoTpDownHeight or 20
	if root.Position.Y - hit.Position.Y > trigger then
		runTPDown()
	end
end)

UserInputService.InputBegan:Connect(function(inp, gp)
	if gp and inp.UserInputType == Enum.UserInputType.Keyboard then return end
	if inp.UserInputType ~= Enum.UserInputType.Keyboard and inp.UserInputType ~= Enum.UserInputType.Gamepad1 then return end
	if rebinding then return end
	if bindingMatches("drop", inp) then
		runDropBrainrot()
	elseif bindingMatches("tpDown", inp) then
		runTPDown()
	end
end)

if G.TextButton_65 then
	G.TextButton_65.MouseButton1Click:Connect(function()
		runDropBrainrot()
	end)
end
if G.TextButton_67 then
	G.TextButton_67.MouseButton1Click:Connect(function()
		runTPDown()
	end)
end

local function buildLateSection()
local specialPills = {
	[G.VyzeccTogglePill] = true,
	[G.VyzeccTogglePill_5] = true,
	[G.VyzeccTogglePill_2] = true,
	[G.VyzeccTogglePill_3] = true,
	[G.VyzeccTogglePill_4] = true,
	[G.VyzeccTogglePill_22] = true,
	[G.VyzeccTogglePill_23] = true,
	[G.VyzeccTogglePill_24] = true,
	[G.VyzeccTogglePill_25] = true,
	[G.VyzeccTogglePill_26] = true,
	[G.VyzeccTogglePill_27] = true,
	[G.VyzeccTogglePill_29] = true,
	[G.VyzeccTogglePill_31] = true,
	[G.VyzeccTogglePill_32] = true,
	[G.VyzeccTogglePill_33] = true,
	[G.VyzeccTogglePill_34] = true,
	[G.VyzeccTogglePill_35] = true,
}

local toggleCount = 0
for _, desc in ipairs(G.VYZECCHubV1:GetDescendants()) do
	if desc.Name == "VyzeccTogglePill" and desc:IsA("Frame") and not specialPills[desc] then
		local clickBtn = desc:FindFirstChildOfClass("TextButton")
		if clickBtn then
			toggleCount = toggleCount + 1
			setToggleVisual(desc, desc:GetAttribute("VyzeccToggleOn") == true)
			
			
			
			
		end
	end
end

local textBoxCount = 0
for _, desc in ipairs(G.VYZECCHubV1:GetDescendants()) do
	if desc:IsA("TextBox") then
		textBoxCount = textBoxCount + 1
		desc.ClearTextOnFocus = false
		desc.TextEditable = true
	end
end

local extraBtnCount = 0
for _, desc in ipairs(G.VYZECCHubV1:GetDescendants()) do
	if desc:IsA("TextButton") then
		if desc.Parent and desc.Parent.Name == "VyzeccTogglePill" then
		elseif desc.Parent == G.HeaderBar then
		elseif desc.Name:match("^VyzeccNav_") then
		else
			extraBtnCount = extraBtnCount + 1
			desc.MouseButton1Down:Connect(function()
				local s = desc:FindFirstChildOfClass("UIScale")
				if not s then
					s = Instance.new("UIScale")
					s.Parent = desc
				end
				TweenService:Create(s, TweenInfo.new(0.08), {Scale = 0.92}):Play()
			end)
			desc.MouseButton1Up:Connect(function()
				local s = desc:FindFirstChildOfClass("UIScale")
				if s then TweenService:Create(s, TweenInfo.new(0.12, Enum.EasingStyle.Back), {Scale = 1}):Play() end
			end)
			desc.MouseLeave:Connect(function()
				local s = desc:FindFirstChildOfClass("UIScale")
				if s then TweenService:Create(s, TweenInfo.new(0.12), {Scale = 1}):Play() end
			end)
		end
	end
end

if G.Frame_95 then G.Frame_95.Visible = false end 
if G.Frame_97 then G.Frame_97.Visible = false end 
if G.Frame_105 then G.Frame_105.Visible = false end 

_G._VezyBatAimbotSpeed = tonumber(G.TextBox_8 and G.TextBox_8.Text) or 58
_G._VezyBatAimbotSpeedLagger = tonumber(G.TextBox_9 and G.TextBox_9.Text) or 40
_G._VezyBatAimbotOn = false
_G._VezyBatAimbotMode = "new" 
_G._VioletteccAimbotAutoSwing = false

local batSpeedOpen = false
local function setBatSpeedOpen(on)
	batSpeedOpen = on and true or false
	if G.Frame_90 then
		G.Frame_90.Visible = batSpeedOpen
		G.Frame_90.Size = UDim2.new(1, 0, 0, 38)
	end
	if G.Frame_92 then
		G.Frame_92.Visible = batSpeedOpen
		G.Frame_92.Size = UDim2.new(1, 0, 0, 38)
	end
	if G.Arrow_2 then
		G.Arrow_2.Text = batSpeedOpen and "▲" or "▼"
	end
	local page = G.VyzeccPage_Combat
	if page then
		local lay = page:FindFirstChildOfClass("UIListLayout")
		if lay then
			pcall(function()
				local sf = page:FindFirstAncestorOfClass("ScrollingFrame")
				if sf then
					sf.CanvasSize = UDim2.new(0, 0, 0, lay.AbsoluteContentSize.Y + 20)
				end
			end)
		end
	end
end

local _batSpeedClickAt = 0
local function toggleBatSpeedOpen()
	local now = os.clock()
	if now - _batSpeedClickAt < 0.18 then return end
	_batSpeedClickAt = now
	setBatSpeedOpen(not batSpeedOpen)
end

if G.VyzeccTogglePill_22 then
	setToggleVisual(G.VyzeccTogglePill_22, false)
end

if G.SizeDropdown_2 then
	G.SizeDropdown_2.Active = true
	G.SizeDropdown_2.AutoButtonColor = false
	G.SizeDropdown_2.Activated:Connect(toggleBatSpeedOpen)
end
if G.Arrow_2 then
end

setBatSpeedOpen(false)

if G.TextBox_8 then
	G.TextBox_8.FocusLost:Connect(function()
		local n = tonumber(G.TextBox_8.Text)
		if n and n > 0 and n < 200 then
			_G._VezyBatAimbotSpeed = n
			G.TextBox_8.Text = tostring(n)
		else
			G.TextBox_8.Text = tostring(_G._VezyBatAimbotSpeed or 58)
		end
		if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
	end)
end
if G.TextBox_9 then
	G.TextBox_9.FocusLost:Connect(function()
		local n = tonumber(G.TextBox_9.Text)
		if n and n > 0 and n < 200 then
			_G._VezyBatAimbotSpeedLagger = n
			G.TextBox_9.Text = tostring(n)
		else
			G.TextBox_9.Text = tostring(_G._VezyBatAimbotSpeedLagger or 40)
		end
		if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
	end)
end

wireNamedToggle(G.VyzeccTogglePill_23, false, function(on)
	_G._VioletteccAimbotAutoSwing = on and true or false
	if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
end)

local Aim = { conn = nil, target = nil, equipped = false, nextTargetScan = 0, nextSwing = 0 }
if G.TextButton_42 then G.TextButton_42.Text = bindingText("aimbot"); G.TextButton_42:SetAttribute("BindTypes","Keyboard / PlayStation / Xbox / Gamepad") end
if G.TextButton_42 then G.TextButton_42.MouseButton1Click:Connect(function() startRebind("aimbot", G.TextButton_42) end) end

local function aimbotSpeed()
	if _G._VezyBatSpeedEnabled then
		if St.laggerMode ~= 0 then
			return math.clamp(tonumber(_G._VezyBatAimbotSpeedLagger) or 40, 1, 200)
		end
		return math.clamp(tonumber(_G._VezyBatAimbotSpeed) or 58, 1, 200)
	end
	if St.laggerMode == 1 or St.laggerMode == 2 then
		return math.clamp(tonumber(St.burstNormalSpeed) or 15, 1, 200)
	end
	return math.clamp(tonumber(St.normalSpeed) or 60, 1, 200)
end

local function isBatTool(tool)
	return tool and tool:IsA("Tool") and tool.Name:lower():find("bat", 1, true) ~= nil
end

local function findBatTool()
	local char = LocalPlayer.Character
	if char then
		for _, tool in ipairs(char:GetChildren()) do
			if isBatTool(tool) then return tool end
		end
	end
	local backpack = LocalPlayer:FindFirstChild("Backpack")
	if backpack then
		for _, tool in ipairs(backpack:GetChildren()) do
			if isBatTool(tool) then return tool end
		end
	end
	return nil
end

local function equipBatTool(humanoid, character)
	local bat = findBatTool()
	if not bat then return nil end
	if bat.Parent ~= character then
		pcall(function()
			humanoid:UnequipTools()
			humanoid:EquipTool(bat)
		end)
	end
	if bat.Parent == character then return bat end
	return nil
end

local AIM_CFG = {
	FOLLOW_SPEED = 62,
	ACTIVATE_DISTANCE = 10.5,
	MIN_FOLLOW_DISTANCE = 0.55,
	PREDICTION_TIME = 0.18,
	PREDICT_AHEAD = 0.9,
	MAX_VELOCITY_CHANGE = 200,
	VELOCITY_SMOOTHING = 0.38,
	MAX_HORIZONTAL_VELOCITY = 105,
	SERVER_TICKRATE = 1 / 60,
	MIN_PING_COMPENSATION = 0.035,
	MAX_PING_COMPENSATION = 0.35,
	ACCELERATION_PREDICTION_WEIGHT = 0.4,
	DIRECTION_CHANGE_DETECTION_TIME = 0.12,
	QUICK_DIRECTION_CHANGE_MULTIPLIER = 1.6,
	GRAVITY = 196.2,
	AIR_CONTROL_FACTOR = 0.88,
	MIN_AIRBORNE_TIME = 0.05,
	SWING_COOLDOWN = 0.06,
	ORBIT_RADIUS = 0.9,
	ORBIT_HEIGHT = 0.4,
	TURN_RATE = 52,
	STICKY_TIME = 0.6,
	RETARGET_RATIO = 0.7,
	CLOSE_SLOW = 0.72,
	FAR_BOOST = 1.12,
}

local _aimShared = {
	stickyRoot = nil,
	stickyUntil = 0,
	lastTargetPos = nil,
	targetVelocity = Vector3.zero,
	smoothedVelocity = Vector3.zero,
	velocityHistory = {},
	accelerationHistory = {},
	aerialVelocityHistory = {},
	previousDirection = nil,
	lastDirectionChangeTime = 0,
	airborneTime = 0,
	lastActivationTime = 0,
	currentPing = 0.08,
	realPingMs = 60,
	lastPingCheck = 0,
}

local function _aimAvg(list)
	if #list == 0 then return Vector3.zero end
	local s = Vector3.zero
	for _, v in ipairs(list) do s = s + v end
	return s / #list
end

local function _aimPush(list, value, maxn)
	table.insert(list, value)
	if #list > maxn then table.remove(list, 1) end
end

local function _aimSamplePing()
	local now = tick()
	if now - (_aimShared.lastPingCheck or 0) < 0.35 then return end
	_aimShared.lastPingCheck = now
	local ok, v = pcall(function()
		return game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
	end)
	if ok and type(v) == "number" then
		_aimShared.realPingMs = math.floor(v)
	else
		pcall(function() _aimShared.realPingMs = math.floor((LocalPlayer:GetNetworkPing() or 0.06) * 1000) end)
	end
	_aimShared.currentPing = math.clamp(
		(_aimShared.realPingMs or 60) / 1000,
		AIM_CFG.MIN_PING_COMPENSATION,
		AIM_CFG.MAX_PING_COMPENSATION
	)
end

local function _aimResetTrack()
	local A = _aimShared
	A.lastTargetPos = nil
	A.targetVelocity = Vector3.zero
	A.smoothedVelocity = Vector3.zero
	A.velocityHistory = {}
	A.accelerationHistory = {}
	A.aerialVelocityHistory = {}
	A.previousDirection = nil
	A.airborneTime = 0
end

local function getClosestTarget()
	local char = LocalPlayer.Character
	if not char then return nil end
	local root = char:FindFirstChild("HumanoidRootPart")
	if not root then return nil end
	local rpos = root.Position
	local now = tick()
	local A = _aimShared

	if A.stickyRoot and now < A.stickyUntil then
		local st = A.stickyRoot
		if st.Parent then
			local hum = st.Parent:FindFirstChildOfClass("Humanoid")
			if hum and hum.Health > 0 then
				local d = (st.Position - rpos).Magnitude
				if d < 30 then return st end
			end
		end
	end

	local closest, minDist = nil, math.huge
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer then
			local c = plr.Character
			if c then
				local tRoot = c:FindFirstChild("HumanoidRootPart")
				local hum = c:FindFirstChildOfClass("Humanoid")
				if tRoot and hum and hum.Health > 0 then
					local d = (tRoot.Position - rpos).Magnitude
					if d < minDist then
						minDist = d
						closest = tRoot
					end
				end
			end
		end
	end

	if A.stickyRoot and closest and A.stickyRoot ~= closest and now < A.stickyUntil then
		local oldD = (A.stickyRoot.Position - rpos).Magnitude
		if minDist > oldD * AIM_CFG.RETARGET_RATIO then
			return A.stickyRoot
		end
	end

	if closest then
		if A.stickyRoot ~= closest then
			_aimResetTrack()
		end
		A.stickyRoot = closest
		A.stickyUntil = now + AIM_CFG.STICKY_TIME
	end
	return closest
end

local function _aimFireBat(bat)
	if not bat then return end
	pcall(function() bat:Activate() end)
	pcall(function()
		for _, d in ipairs(bat:GetDescendants()) do
			if d:IsA("RemoteEvent") then
				d:FireServer()
				break
			end
		end
	end)
end

local function _aimLookAt(root, direction)
	if direction.Magnitude < 0.05 then return end
	local flat = Vector3.new(direction.X, 0, direction.Z)
	if flat.Magnitude < 0.05 then return end
	local look = root.CFrame.LookVector
	local flatLook = Vector3.new(look.X, 0, look.Z)
	if flatLook.Magnitude < 0.01 then flatLook = Vector3.new(0, 0, -1) end
	flatLook = flatLook.Unit
	local axis = flatLook:Cross(flat.Unit)
	local dot = math.clamp(flatLook:Dot(flat.Unit), -1, 1)
	local angle = math.acos(dot)
	if axis.Magnitude > 0.01 and angle > 0.02 then
		root.AssemblyAngularVelocity = axis.Unit * math.clamp(angle * AIM_CFG.TURN_RATE, -26, 26)
	else
		root.AssemblyAngularVelocity = Vector3.zero
	end
end

-- BloodHounds core: Normal (V1) uses activateDist 10.5, Bypass (Bat V2) uses 11.5
local function _aimCoreStep(dt, speedValue, activateDist)
	_aimSamplePing()
	local char = LocalPlayer.Character
	if not char then return end
	local root = char:FindFirstChild("HumanoidRootPart")
	local hum = char:FindFirstChildOfClass("Humanoid")
	if not root or not hum or hum.Health <= 0 then return end
	hum.AutoRotate = false
	if hum.PlatformStand then hum.PlatformStand = false end

	local bat = equipBatTool(hum, char)

	local targetRoot = getClosestTarget()
	if not targetRoot then
		_aimResetTrack()
		local now = os.clock()
		if _G._VioletteccAimbotAutoSwing == true and now >= (Aim.nextSwing or 0) then
			local idleBat = equipBatTool(hum, char)
			if idleBat then _aimFireBat(idleBat) end
			Aim.nextSwing = now + 0.14
		end
		return
	end
	local targetHum = targetRoot.Parent and targetRoot.Parent:FindFirstChildOfClass("Humanoid")
	if not targetHum or targetHum.Health <= 0 then
		_aimResetTrack()
		return
	end

	local A = _aimShared
	local CFG = AIM_CFG
	local targetPos = targetRoot.Position
	local myPos = root.Position
	local distNow = (targetPos - myPos).Magnitude
	local safeDt = math.max(dt, 1 / 240)

	if A.lastTargetPos then
		local raw = (targetPos - A.lastTargetPos) / safeDt
		local delta = raw - A.targetVelocity
		if delta.Magnitude > CFG.MAX_VELOCITY_CHANGE then
			raw = A.targetVelocity + delta.Unit * CFG.MAX_VELOCITY_CHANGE
		end
		local horiz = Vector3.new(raw.X, 0, raw.Z)
		if horiz.Magnitude > CFG.MAX_HORIZONTAL_VELOCITY then
			horiz = horiz.Unit * CFG.MAX_HORIZONTAL_VELOCITY
			raw = Vector3.new(horiz.X, raw.Y, horiz.Z)
		end
		_aimPush(A.accelerationHistory, (raw - A.targetVelocity) / safeDt, 5)
		_aimPush(A.velocityHistory, raw, 8)
		A.targetVelocity = raw
		A.smoothedVelocity = A.smoothedVelocity:Lerp(raw, CFG.VELOCITY_SMOOTHING)
	end
	A.lastTargetPos = targetPos

	local airborne = targetHum.FloorMaterial == Enum.Material.Air
	A.airborneTime = airborne and (A.airborneTime + safeDt) or 0
	if airborne and A.airborneTime >= CFG.MIN_AIRBORNE_TIME then
		_aimPush(A.aerialVelocityHistory, A.targetVelocity, 6)
	elseif not airborne then
		A.aerialVelocityHistory = {}
	end

	local predVel = A.smoothedVelocity
	if airborne and #A.aerialVelocityHistory > 0 then
		local avgAir = _aimAvg(A.aerialVelocityHistory)
		predVel = Vector3.new(avgAir.X, A.targetVelocity.Y, avgAir.Z) * CFG.AIR_CONTROL_FACTOR
	end

	local quickTurn = false
	local hVel = Vector3.new(A.targetVelocity.X, 0, A.targetVelocity.Z)
	if hVel.Magnitude > 5 then
		local dir = hVel.Unit
		if A.previousDirection and A.previousDirection:Dot(dir) < 0.45 then
			quickTurn = tick() - (A.lastDirectionChangeTime or 0) < CFG.DIRECTION_CHANGE_DETECTION_TIME
			A.lastDirectionChangeTime = tick()
		end
		A.previousDirection = dir
	end

	local lead = (A.currentPing or 0.08) + CFG.SERVER_TICKRATE + CFG.PREDICTION_TIME * 0.35
	if quickTurn then lead = lead * CFG.QUICK_DIRECTION_CHANGE_MULTIPLIER end

	local predicted = targetPos + predVel * lead
	local accel = _aimAvg(A.accelerationHistory)
	predicted = predicted + accel * CFG.ACCELERATION_PREDICTION_WEIGHT * (lead * lead * 0.5)
	if airborne then
		predicted = predicted + Vector3.new(0, -0.5 * CFG.GRAVITY * lead * lead, 0)
	end
	local horizPred = Vector3.new(predVel.X, 0, predVel.Z)
	if horizPred.Magnitude > 1 then
		predicted = predicted + horizPred.Unit * CFG.PREDICT_AHEAD
	end

	local toMe = myPos - targetPos
	local flatToMe = Vector3.new(toMe.X, 0, toMe.Z)
	local orbitR = CFG.ORBIT_RADIUS
	local orbitH = CFG.ORBIT_HEIGHT
	if flatToMe.Magnitude > 0.15 then
		predicted = predicted + flatToMe.Unit * orbitR
	end
	predicted = Vector3.new(predicted.X, targetPos.Y + orbitH, predicted.Z)

	local goal = predicted - myPos
	_aimLookAt(root, goal)

	local actDist = activateDist or CFG.ACTIVATE_DISTANCE
	if distNow <= actDist and tick() - (A.lastActivationTime or 0) >= CFG.SWING_COOLDOWN then
		_aimFireBat(bat)
		A.lastActivationTime = tick()
		if distNow <= 4.5 then
			task.delay(0.035, function()
				if _G._VezyBatAimbotOn then
					local c2 = LocalPlayer.Character
					local h2 = c2 and c2:FindFirstChildOfClass("Humanoid")
					local b2 = h2 and equipBatTool(h2, c2)
					_aimFireBat(b2)
				end
			end)
		end
	end

	local followSpeed = math.clamp(tonumber(speedValue) or CFG.FOLLOW_SPEED, 1, 130)
	local speedMul = 1
	if distNow > 18 then
		speedMul = CFG.FAR_BOOST
	elseif distNow < orbitR + 1.8 then
		speedMul = CFG.CLOSE_SLOW
	end
	local speed = followSpeed * speedMul
	local flatGoal = Vector3.new(goal.X, 0, goal.Z)
	local vy = root.AssemblyLinearVelocity.Y
	if math.abs(goal.Y) > 1.5 then
		vy = math.clamp(goal.Y * 5.8, -speed, speed)
	end

	if St and (St._tpInProgress or St._tpAimbotKeep) then
		vy = math.clamp(root.AssemblyLinearVelocity.Y, -35, 55)
	end

	if flatGoal.Magnitude > CFG.MIN_FOLLOW_DISTANCE then
		local moveDir = flatGoal.Unit
		root.AssemblyLinearVelocity = Vector3.new(moveDir.X * speed, vy, moveDir.Z * speed)
	else
		root.AssemblyLinearVelocity = Vector3.new(0, vy * 0.35, 0)
	end
end

local function syncAimbotButtonVisual(on)
	on = on == true
	mobileToggles["AIMBOT"] = on
	setFrameOn(G.StackBtn_aimbot, on)
end

stopBatAimbot = function()
	_G._VezyBatAimbotOn = false
	syncAimbotButtonVisual(false)
	if Aim.conn then Aim.conn:Disconnect() Aim.conn = nil end
	Aim.target, Aim.equipped = nil, false
	Aim.activeMode = nil
	_aimShared.stickyRoot = nil
	_aimShared.stickyUntil = 0
	_aimResetTrack()
	local c = LocalPlayer.Character
	local h = c and c:FindFirstChildOfClass("Humanoid")
	local r = c and c:FindFirstChild("HumanoidRootPart")
	if h then
		h.AutoRotate = true
		h.PlatformStand = false
		pcall(function() h:ChangeState(Enum.HumanoidStateType.Running) end)
	end
	if r then
		r.AssemblyAngularVelocity = Vector3.zero
	end
end

startBatAimbot = function()
	-- force clean restart so only the currently selected mode logic runs
	if Aim.conn then
		Aim.conn:Disconnect()
		Aim.conn = nil
	end
	_aimResetTrack()
	_aimShared.stickyRoot = nil
	_aimShared.stickyUntil = 0
	_aimShared.lastActivationTime = 0

	_G._VezyBatAimbotOn = true
	syncAimbotButtonVisual(true)
	Aim.equipped = false
	Aim.nextTargetScan = 0
	Aim.nextSwing = 0

	local useBypass = (_G._VezyBatAimbotMode == "old")
	Aim.activeMode = useBypass and "old" or "new"
	local activateDist = useBypass and 11.5 or 10.5

	Aim.conn = RunService.RenderStepped:Connect(function(dt)
		if not _G._VezyBatAimbotOn then return end
		-- if mode was changed while running, restart with the new logic
		local wantBypass = (_G._VezyBatAimbotMode == "old")
		local wantMode = wantBypass and "old" or "new"
		if Aim.activeMode ~= wantMode then
			Aim.activeMode = wantMode
			_aimResetTrack()
			_aimShared.lastActivationTime = 0
			activateDist = wantBypass and 11.5 or 10.5
		end
		local spd = aimbotSpeed()
		_aimCoreStep(dt, spd, activateDist)
	end)
end

_G.VezyStartBatAimbot = startBatAimbot
_G.VezyStopBatAimbot = stopBatAimbot
_G.VezyStartBatAimbotDispatch = startBatAimbot

if G.TextButton_42 then
	G.TextButton_42.MouseButton1Click:Connect(function()
		startRebind("aimbot", G.TextButton_42)
	end)
end
if G.TextButton_43 then
	local function refreshModeBtn()
		if _G._VezyBatAimbotMode == "old" then
			G.TextButton_43.Text = "Bypass"
		else
			G.TextButton_43.Text = "Normal"
			_G._VezyBatAimbotMode = "new"
		end
	end
	refreshModeBtn()
	G.TextButton_43.MouseButton1Click:Connect(function()
		if _G._VezyBatAimbotMode == "old" then
			_G._VezyBatAimbotMode = "new"
		else
			_G._VezyBatAimbotMode = "old"
		end
		refreshModeBtn()
		if _G._VezyBatAimbotOn then
			startBatAimbot() 
		end
		if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
	end)
end

UserInputService.InputBegan:Connect(function(inp, gp)
	if gp and inp.UserInputType == Enum.UserInputType.Keyboard then return end
	if inp.UserInputType ~= Enum.UserInputType.Keyboard and inp.UserInputType ~= Enum.UserInputType.Gamepad1 then return end
	if rebinding then return end
	if bindingMatches("aimbot", inp) then
		local enabled = not _G._VezyBatAimbotOn
		if enabled then startBatAimbot() else stopBatAimbot() end
		if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
	end
end)

if G.TextButton_69 then
	G.TextButton_69.MouseButton1Click:Connect(function()
		if _G._VezyBatAimbotOn then stopBatAimbot() else startBatAimbot() end
		if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
	end)
end



_G._VezyBatSpeedEnabled = false
if G.VyzeccTogglePill_22 then
	wireNamedToggle(G.VyzeccTogglePill_22, false, function(on)
		_G._VezyBatSpeedEnabled = on
		if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
	end)
end


do
	local camera = workspace.CurrentCamera
	local fovEnabled = false
	local fovValue = 70
	local draggingFov = false
	local function setFovValue(value)
		fovValue = math.clamp(math.floor((tonumber(value) or 70) + 0.5), 70, 120)
		_G._VyzeccFovValue = fovValue
		if G.TextLabel_43 then G.TextLabel_43.Text = tostring(fovValue) end
		local alpha = (fovValue - 70) / 50
		if G.Frame_74 then G.Frame_74.Size = UDim2.new(alpha, 0, 1, 0) end
		if G.Frame_75 then G.Frame_75.Position = UDim2.new(alpha, -6, 0.5, -6) end
		if fovEnabled and workspace.CurrentCamera then workspace.CurrentCamera.FieldOfView = fovValue end
	end
	_G._VyzeccFovSetValue = setFovValue
	local function setFovEnabled(on)
		fovEnabled = on == true
		_G._VyzeccFovEnabled = fovEnabled
		if fovEnabled then
			if workspace.CurrentCamera then workspace.CurrentCamera.FieldOfView = fovValue end
		else
			if workspace.CurrentCamera then workspace.CurrentCamera.FieldOfView = 70 end
		end
	end
	if G.VyzeccTogglePill_19 then wireNamedToggle(G.VyzeccTogglePill_19, false, setFovEnabled) end
	local function updateFromX(x)
		if not G.Frame_73 then return end
		local width = math.max(1, G.Frame_73.AbsoluteSize.X)
		local alpha = math.clamp((x - G.Frame_73.AbsolutePosition.X) / width, 0, 1)
		setFovValue(70 + alpha * 50)
	end
	if G.TextButton_32 then
		G.TextButton_32.Activated:Connect(function() end)
		G.TextButton_32.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				draggingFov = true; updateFromX(input.Position.X)
			end
		end)
	end
	UserInputService.InputChanged:Connect(function(input)
		if draggingFov and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then updateFromX(input.Position.X) end
	end)
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then draggingFov = false end
	end)
	setFovValue(70)
	if G.VYZECCHubV1.Destroying then G.VYZECCHubV1.Destroying:Connect(function() if workspace.CurrentCamera then workspace.CurrentCamera.FieldOfView = 70 end end) end
end


do
	local savedHeadState = nil
	local function applyHeadless(on)
		local char = LocalPlayer.Character
		local head = char and char:FindFirstChild("Head")
		if not head then return end
		if on then
			if not savedHeadState or savedHeadState.head ~= head then
				savedHeadState = {head = head, transparency = head.Transparency, decals = {}}
				for _, child in ipairs(head:GetChildren()) do if child:IsA("Decal") or child:IsA("Texture") then savedHeadState.decals[child] = child.Transparency end end
			end
			head.Transparency = 1
			for _, child in ipairs(head:GetChildren()) do if child:IsA("Decal") or child:IsA("Texture") then child.Transparency = 1 end end
		else
			if savedHeadState and savedHeadState.head == head then
				head.Transparency = savedHeadState.transparency
				for obj, value in pairs(savedHeadState.decals) do if obj and obj.Parent then obj.Transparency = value end end
			end
			savedHeadState = nil
		end
	end
	if G.VyzeccTogglePill_20 then wireNamedToggle(G.VyzeccTogglePill_20, false, applyHeadless) end
	LocalPlayer.CharacterAdded:Connect(function(char)
		task.wait(0.5)
		if G.VyzeccTogglePill_20 and G.VyzeccTogglePill_20:GetAttribute("VyzeccToggleOn") then applyHeadless(true) end
	end)
end


do
	local bodyLockOn = false
	local bodyLockRange = 20
	local bodyLockConn = nil
	local function setBodyLock(on)
		bodyLockOn = on == true
		if bodyLockConn then bodyLockConn:Disconnect(); bodyLockConn = nil end
		if not bodyLockOn then
			local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			if hum then hum.AutoRotate = true end
			return
		end
		bodyLockConn = RunService.Heartbeat:Connect(function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			local hum = char and char:FindFirstChildOfClass("Humanoid")
			if not root or not hum or hum.Health <= 0 then return end
			local target, bestDist = nil, bodyLockRange
			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= LocalPlayer and player.Character then
					local targetRoot = player.Character:FindFirstChild("HumanoidRootPart")
					local targetHum = player.Character:FindFirstChildOfClass("Humanoid")
					if targetRoot and targetHum and targetHum.Health > 0 then
						local distance = (targetRoot.Position - root.Position).Magnitude
						if distance <= bestDist then target, bestDist = targetRoot, distance end
					end
				end
			end
			if not target then hum.AutoRotate = true; root.AssemblyAngularVelocity = Vector3.zero; return end
			hum.AutoRotate = false
			local offset = target.Position - root.Position
			local desired = Vector3.new(offset.X, 0, offset.Z)
			local facing = Vector3.new(root.CFrame.LookVector.X, 0, root.CFrame.LookVector.Z)
			if desired.Magnitude > 0.01 and facing.Magnitude > 0.01 then
				local angle = math.acos(math.clamp(facing.Unit:Dot(desired.Unit), -1, 1))
				local cross = facing.Unit:Cross(desired.Unit)
				root.AssemblyAngularVelocity = Vector3.new(0, cross.Y * angle * 10, 0)
			end
		end)
	end
	_G._VyzeccSetBodyLockRange = function(value)
		local n = tonumber(value)
		if n and n >= 1 then bodyLockRange = math.clamp(n, 1, 500); if G.TextBox_7 then G.TextBox_7.Text = tostring(bodyLockRange) end end
	end
	if G.VyzeccTogglePill_9 then wireNamedToggle(G.VyzeccTogglePill_9, false, setBodyLock) end
	if G.TextBox_7 then
		G.TextBox_7.FocusLost:Connect(function()
			local n = tonumber(G.TextBox_7.Text)
			if n and n >= 1 then _G._VyzeccSetBodyLockRange(n) else G.TextBox_7.Text = tostring(bodyLockRange) end
			if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
		end)
	end
end


do
	local modes = {"Off", "Both", "Left", "Right"}
	local modeIndex = 1
	local assets = {
		["Left Leg"] = {id = "rbxassetid://139607673", target = "LeftUpperLeg", hide = {"LeftUpperLeg", "LeftLowerLeg", "LeftFoot"}},
		["Right Leg"] = {id = "rbxassetid://139607718", target = "RightUpperLeg", hide = {"RightUpperLeg", "RightLowerLeg", "RightFoot"}},
	}
	local function clearKorblox()
		local char = LocalPlayer.Character; if not char then return end
		for _, name in ipairs({"Korblox_LeftLeg", "Korblox_RightLeg"}) do local old = char:FindFirstChild(name); if old then old:Destroy() end end
		for _, name in ipairs({"LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}) do
			local limb = char:FindFirstChild(name); if limb and limb:IsA("BasePart") then limb.Transparency = 0; limb.LocalTransparencyModifier = 0 end
		end
	end
	local function attachKorblox(which)
		local config = assets[which]
		local char = LocalPlayer.Character
		local target = char and char:FindFirstChild(config.target)
		if not target or not target:IsA("BasePart") then return end
		if which == "Left Leg" then
			local ok, objects = pcall(function() return game:GetObjects("rbxassetid://139607673") end)
			if not ok or not objects or not objects[1] then return end
			local old = char:FindFirstChild("Korblox_LeftLeg")
			if old then old:Destroy() end
			for _, d in ipairs(char:GetChildren()) do
				if d:IsA("CharacterMesh") and d.Name == "Korblox_LeftCharacterMesh" then d:Destroy() end
			end
			local model = Instance.new("Model")
			model.Name = "Korblox_LeftLeg"
			for _, obj in ipairs(objects) do obj.Parent = model end
			local parts, meshes = {}, {}
			for _, obj in ipairs(model:GetDescendants()) do
				if obj:IsA("BasePart") then table.insert(parts, obj)
				elseif obj:IsA("CharacterMesh") then table.insert(meshes, obj) end
			end
			if #parts == 0 and #meshes == 0 then model:Destroy(); return end
			for _, name in ipairs({"LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "Left Leg"}) do
				local limb = char:FindFirstChild(name)
				if limb and limb:IsA("BasePart") then limb.Transparency = 1; limb.LocalTransparencyModifier = 1 end
			end
			model.Parent = char
			for _, part in ipairs(parts) do
				local host = char:FindFirstChild(part.Name)
				if not host or not host:IsA("BasePart") then host = target end
				part.Anchored = false
				part.CanCollide = false
				part.CanTouch = false
				part.CanQuery = false
				part.Massless = true
				part.CFrame = host.CFrame
				local weld = Instance.new("WeldConstraint")
				weld.Part0 = host
				weld.Part1 = part
				weld.Parent = part
			end
			for _, mesh in ipairs(meshes) do
				mesh.Name = "Korblox_LeftCharacterMesh"
				mesh.Parent = char
			end
			return
		end
		for _, partName in ipairs(config.hide) do
			local part = char:FindFirstChild(partName)
			if part and part:IsA("BasePart") then part.Transparency = 1; part.LocalTransparencyModifier = 1 end
		end
		local ok, objects = pcall(function() return game:GetObjects(config.id) end)
		local model = ok and objects and objects[1]
		local mesh = model and (model:IsA("BasePart") and model or model:FindFirstChildWhichIsA("BasePart", true))
		if not mesh then if model then pcall(function() model:Destroy() end) end; return end
		model.Name = which == "Left Leg" and "Korblox_LeftLeg" or "Korblox_RightLeg"
		mesh.CanCollide = false; mesh.CanTouch = false; mesh.CanQuery = false; mesh.Massless = true; mesh.CFrame = target.CFrame
		local weld = Instance.new("WeldConstraint"); weld.Part0 = target; weld.Part1 = mesh; weld.Parent = mesh
		model.Parent = char
	end
	local function applyKorblox(mode)
		clearKorblox()
		_G._RaVeKorbloxMode = mode
		if mode == "Both" or mode == "Left" then attachKorblox("Left Leg") end
		if mode == "Both" or mode == "Right" then attachKorblox("Right Leg") end
	end
	_G._RaVeApplyKorblox = applyKorblox
	_G._VyzeccSetKorbloxMode = function(mode)
		for i, candidate in ipairs(modes) do if candidate == mode then modeIndex = i; break end end
		if G.TextButton_34 then G.TextButton_34.Text = modes[modeIndex] end
		applyKorblox(modes[modeIndex])
	end
	local function applyKorbloxMode()
		local mode = modes[modeIndex]
		if G.TextButton_34 then G.TextButton_34.Text = mode end
		applyKorblox(mode)
		if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
	end
	if G.TextButton_34 then
		G.TextButton_34.Text = "Off"
		G.TextButton_34.Activated:Connect(function() modeIndex = modeIndex % #modes + 1; applyKorbloxMode() end)
	end
	LocalPlayer.CharacterAdded:Connect(function() task.wait(0.7); applyKorblox(_G._RaVeKorbloxMode or "Off") end)
end


do
	local accessorySaved = setmetatable({}, {__mode = "k"})
	local function setAccessoriesHidden(on)
		local char = LocalPlayer.Character
		if not char then return end
		if on then
			for _, obj in ipairs(char:GetDescendants()) do
				if obj:IsA("BasePart") and obj:FindFirstAncestorOfClass("Accessory") then
					if accessorySaved[obj] == nil then accessorySaved[obj] = obj.LocalTransparencyModifier end
					obj.LocalTransparencyModifier = 1
				end
			end
		else
			for obj, value in pairs(accessorySaved) do if obj and obj.Parent then pcall(function() obj.LocalTransparencyModifier = value end) end end
			table.clear(accessorySaved)
		end
	end
	if G.VyzeccTogglePill_16 then wireNamedToggle(G.VyzeccTogglePill_16, false, setAccessoriesHidden) end
	LocalPlayer.CharacterAdded:Connect(function() task.wait(0.6); if G.VyzeccTogglePill_16 and G.VyzeccTogglePill_16:GetAttribute("VyzeccToggleOn") then setAccessoriesHidden(true) end end)
end


do
	local savedBg = nil
	local function setRemoveUiImage(on)
		if not savedBg then
			savedBg = {
				mainImage = G.MenuBgImage and G.MenuBgImage.ImageTransparency or 0,
				mainBackgroundTransparency = G.MenuBgImage and G.MenuBgImage.BackgroundTransparency or 1,
				mainColor = G.MenuBgImage and G.MenuBgImage.BackgroundColor3 or Color3.fromRGB(35, 12, 55),
				panelImage = G.BgImage and G.BgImage.ImageTransparency or 0,
				panelColor = G.MobileStackPanel and G.MobileStackPanel.BackgroundColor3 or Color3.fromRGB(35, 12, 55),
			}
		end
		if G.MenuBgImage then
			if on then G.MenuBgImage.ImageTransparency = 1; G.MenuBgImage.BackgroundTransparency = 0; G.MenuBgImage.BackgroundColor3 = Color3.fromRGB(43, 14, 70)
			else G.MenuBgImage.ImageTransparency = savedBg.mainImage; G.MenuBgImage.BackgroundTransparency = savedBg.mainBackgroundTransparency; G.MenuBgImage.BackgroundColor3 = savedBg.mainColor end
		end
		if G.BgImage then G.BgImage.ImageTransparency = on and 1 or savedBg.panelImage end
		if G.MobileStackPanel then G.MobileStackPanel.BackgroundColor3 = on and Color3.fromRGB(43, 14, 70) or savedBg.panelColor end
	end
	if G.VyzeccTogglePill_30 then wireNamedToggle(G.VyzeccTogglePill_30, false, setRemoveUiImage) end
end


do
	local Lighting = game:GetService("Lighting")
	local savedLighting = nil
	local function setDarkMode(on)
		if on then
			if not savedLighting then
				savedLighting = {
					ClockTime = Lighting.ClockTime,
					Brightness = Lighting.Brightness,
					Ambient = Lighting.Ambient,
					OutdoorAmbient = Lighting.OutdoorAmbient,
					GlobalShadows = Lighting.GlobalShadows,
				}
			end
			Lighting.ClockTime = 0.5
			Lighting.Brightness = 1
			Lighting.Ambient = Color3.fromRGB(35, 35, 55)
			Lighting.OutdoorAmbient = Color3.fromRGB(20, 20, 35)
			Lighting.GlobalShadows = true
		else
			if savedLighting then
				for property, value in pairs(savedLighting) do pcall(function() Lighting[property] = value end) end
				savedLighting = nil
			end
		end
	end
	if G.VyzeccTogglePill_17 then wireNamedToggle(G.VyzeccTogglePill_17, false, setDarkMode) end
end


do
	local e01Gui, e01Track, e01Fill, e01Text
	local warningConn
	local function shown(obj)
		local a = obj
		while a and a:IsA("GuiObject") do
			if not a.Visible then return false end
			a = a.Parent
		end
		return not (a and a:IsA("ScreenGui")) or a.Enabled
	end
	local function buildE01Warning()
		if e01Gui and e01Gui.Parent then return end
		local pg = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		if not pg then return end
		e01Gui = Instance.new("BillboardGui")
		e01Gui.Name = "VyzeccE01Warn"
		e01Gui.Size = UDim2.fromOffset(170, 24)
		e01Gui.StudsOffset = Vector3.new(0, 2.65, 0)
		e01Gui.SizeOffset = Vector2.new(0, 1.25)
		e01Gui.AlwaysOnTop = true
		e01Gui.LightInfluence = 0
		e01Gui.Enabled = false
		e01Gui.ResetOnSpawn = false
		e01Gui.Parent = pg
		e01Track = Instance.new("Frame")
		e01Track.Size = UDim2.fromScale(1, 1)
		e01Track.BackgroundColor3 = Color3.fromRGB(18, 8, 28)
		e01Track.BorderSizePixel = 0
		e01Track.Parent = e01Gui
		Instance.new("UICorner", e01Track).CornerRadius = UDim.new(1, 0)
		e01Fill = Instance.new("Frame")
		e01Fill.Size = UDim2.fromScale(0, 1)
		e01Fill.BorderSizePixel = 0
		e01Fill.Parent = e01Track
		Instance.new("UICorner", e01Fill).CornerRadius = UDim.new(1, 0)
		e01Text = Instance.new("TextLabel")
		e01Text.Size = UDim2.fromScale(1, 1)
		e01Text.BackgroundTransparency = 1
		e01Text.Text = "E01 WARN"
		e01Text.TextColor3 = Color3.new(1, 1, 1)
		e01Text.TextStrokeTransparency = 0.4
		e01Text.TextSize = 13
		e01Text.Font = Enum.Font.GothamBold
		e01Text.ZIndex = 2
		e01Text.Parent = e01Track
	end
	local function setKickWarning(on)
		if warningConn then warningConn:Disconnect(); warningConn = nil end
		if not on then
			if e01Gui then e01Gui.Enabled = false end
			return
		end
		buildE01Warning()
		local started
		warningConn = RunService.Heartbeat:Connect(function()
			local char = LocalPlayer.Character
			local head = char and char:FindFirstChild("Head")
			local stealing = LocalPlayer:GetAttribute("Stealing") == true
			if not head or not stealing then
				started = nil
				if e01Gui then e01Gui.Enabled = false end
				return
			end
			started = started or os.clock()
			local a = math.clamp((os.clock() - started) / 2.9, 0, 1)
			if e01Gui then
				e01Gui.Adornee = head
				e01Gui.Enabled = true
				if e01Fill then
					e01Fill.Size = UDim2.fromScale(a, 1)
					e01Fill.BackgroundColor3 = Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(0, 255, 0), a)
				end
			end
		end)
	end
	if G.VyzeccTogglePill_7 then wireNamedToggle(G.VyzeccTogglePill_7, false, setKickWarning) end
end


do
	local stretchOn = false
	local stretchConn = nil
	local function setStretch(on)
		stretchOn = on == true
		_G._VyzeccStretchRezEnabled = stretchOn
		if stretchConn then
			stretchConn:Disconnect()
			stretchConn = nil
		end
		if stretchOn then
			local cam = workspace.CurrentCamera
			if cam then
				pcall(function()
					cam.FieldOfView = 90
				end)
			end
			stretchConn = RunService.RenderStepped:Connect(function()
				if not stretchOn then
					return
				end
				local current = workspace.CurrentCamera
				if not current then
					return
				end
				pcall(function()
					current.FieldOfView = 90
					current.CFrame = current.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.7, 0, 0, 0, 1)
				end)
			end)
		else
			local cam = workspace.CurrentCamera
			if cam then
				pcall(function()
					cam.FieldOfView = 90
				end)
			end
		end
	end
	if G.VyzeccTogglePill_21 then
		wireNamedToggle(G.VyzeccTogglePill_21, false, setStretch)
	end
end

do
	local espEnabled=false; local espConn=nil; local playerAddedConn=nil; local records={}; local tracerGui=nil
	local function getLocalRoot() local c=LocalPlayer.Character; return c and (c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("UpperTorso") or c:FindFirstChild("Torso") or c:FindFirstChild("Head")) end
	local function getCamera() return workspace.CurrentCamera end
	local function makeLine()
		local line=Instance.new("Frame"); line.Name="VyzeccTracerLine"; line.AnchorPoint=Vector2.new(0.5,0.5); line.BorderSizePixel=0; line.BackgroundColor3=Color3.fromRGB(170,100,240); line.BackgroundTransparency=0; line.ZIndex=1000; line.Visible=false; line.Parent=tracerGui; return line
	end
	local function clearESP()
		if espConn then espConn:Disconnect(); espConn=nil end
		if playerAddedConn then playerAddedConn:Disconnect(); playerAddedConn=nil end
		for _,rec in pairs(records) do pcall(function() if rec.highlight then rec.highlight:Destroy() end; if rec.line then rec.line:Destroy() end end) end
		table.clear(records)
		if tracerGui then pcall(function() tracerGui:Destroy() end); tracerGui=nil end
	end
	local function create(player)
		if player==LocalPlayer or records[player] then return end
		local char=player.Character; if not char then return end
		local h=Instance.new("Highlight"); h.Name="VyzeccESPHighlight"; h.Adornee=char; h.FillColor=Color3.fromRGB(150,70,220); h.OutlineColor=Color3.fromRGB(220,180,255); h.FillTransparency=0.82; h.OutlineTransparency=0.08; h.Parent=char
		local line=makeLine(); records[player]={highlight=h,line=line}
	end
	local function recreate(player)
		local r=records[player]; if r then pcall(function() if r.highlight then r.highlight:Destroy() end; if r.line then r.line:Destroy() end end); records[player]=nil end
		if espEnabled then task.wait(0.15); create(player) end
	end
	local function updateLine(line,a,b,visible)
		if not line then return end
		if not visible then line.Visible=false; return end
		local delta=b-a; local length=delta.Magnitude
		if length<1 then line.Visible=false; return end
		line.Position=UDim2.fromOffset((a.X+b.X)*0.5,(a.Y+b.Y)*0.5)
		line.Size=UDim2.fromOffset(math.max(1,length),2)
		line.Rotation=math.deg(math.atan2(delta.Y,delta.X))
		line.Visible=true
	end
	local function setESP(on)
		espEnabled=on==true; _G._VyzeccESPEnabled=espEnabled; clearESP(); if not espEnabled then return end
		tracerGui=Instance.new("ScreenGui"); tracerGui.Name="VyzeccTracerGui"; tracerGui.ResetOnSpawn=false; tracerGui.IgnoreGuiInset=true; tracerGui.DisplayOrder=2147483646; tracerGui.ZIndexBehavior=Enum.ZIndexBehavior.Global; tracerGui.Parent=LocalPlayer:WaitForChild("PlayerGui")
		for _,plr in ipairs(Players:GetPlayers()) do if plr~=LocalPlayer then create(plr); plr.CharacterAdded:Connect(function() recreate(plr) end) end end
		playerAddedConn=Players.PlayerAdded:Connect(function(plr) plr.CharacterAdded:Connect(function() recreate(plr) end); if plr.Character then create(plr) end end)
		espConn=RunService.RenderStepped:Connect(function()
			if not espEnabled then return end
			local camera=getCamera(); local root=getLocalRoot(); if not camera or not root then for _,r in pairs(records) do updateLine(r.line,nil,nil,false) end; return end
			local originPos,originOnScreen=camera:WorldToViewportPoint(root.Position)
			for plr,r in pairs(records) do
				local char=plr.Character; local head=char and char:FindFirstChild("Head")
				if r.highlight and char then r.highlight.Adornee=char; r.highlight.Parent=char end
				if head then
					local targetPos,targetOnScreen=camera:WorldToViewportPoint(head.Position)
					
					updateLine(r.line,Vector2.new(originPos.X,originPos.Y),Vector2.new(targetPos.X,targetPos.Y),originOnScreen and targetOnScreen and targetPos.Z>0)
				else updateLine(r.line,nil,nil,false) end
			end
		end)
		_G._VyzeccESPCleanup=clearESP
	end
	if G.VyzeccTogglePill_15 then wireNamedToggle(G.VyzeccTogglePill_15,false,setESP) end
end

local NetBypass = {
	Enabled = false,
	Power = 100000,
	loopTask = nil,
	remote = nil,
	payload = nil,
}
local function findBlockRemote()
	local storage = game:FindFirstChild("RobloxReplicatedStorage")
	if not storage then return nil end
	local names = {"SetPlayerBlockList", "UpdatePlayerBlockList", "SetBlockList", "UpdateBlockList"}
	for _, name in ipairs(names) do
		local r = storage:FindFirstChild(name)
		if r and r:IsA("RemoteEvent") then return r end
	end
	for _, child in ipairs(storage:GetChildren()) do
		if child:IsA("RemoteEvent") and child.Name:find("Block") then return child end
	end
	return nil
end
local function buildPayloadV1()
	local main = {}
	local nested = {{}}
	local current = nested[1]
	for _ = 1, 296 do
		local new = {}
		table.insert(current, new)
		current = new
	end
	local maxRep = math.min(math.floor(NetBypass.Power / 298), 10000)
	for _ = 1, maxRep do
		table.insert(main, nested)
	end
	return main
end
local function stopNetBypass()
	NetBypass.Enabled = false
	if NetBypass.loopTask then task.cancel(NetBypass.loopTask) NetBypass.loopTask = nil end
end
local function startNetBypass()
	stopNetBypass()
	NetBypass.Enabled = true
	NetBypass.payload = buildPayloadV1()
	NetBypass.loopTask = task.spawn(function()
		while NetBypass.Enabled do
			if not NetBypass.remote then
				NetBypass.remote = findBlockRemote()
				task.wait(1)
			else
				pcall(function() NetBypass.remote:FireServer(NetBypass.payload) end)
				task.wait(0.125)
			end
		end
	end)
end
_G.VYZECC_StartBypassV1 = startNetBypass
_G.VYZECC_StopBypassV1 = stopNetBypass

St.autoStealOn = false
St.autoStealVersion = "V1"
St.ragdollStealOn = false
St.ragdollStealPauseUntil = 0
St.stealRadius = tonumber(G.TextBox_10 and G.TextBox_10.Text) or 65
St.stealDuration = 1.2

local isStealing, stealStartTime, autoStealConn = false, nil, nil
local autoStealBusy = false
local stealData = setmetatable({}, { __mode = "k" })

local STOP_AT_HIT_DELAY = 1.3
local ragdollStealPauseUntil = 0
local ragdollStealHealthConn
local ragdollStealStateLatched = false

local function setStealProgress(p)
	p = math.clamp(tonumber(p) or 0, 0, 1)
	if St.ragdollStealOn and St.autoStealOn and tick() < (St.ragdollStealPauseUntil or 0) then
		p = 0
	end
	if Fill and Fill.Parent then
		Fill.Size = UDim2.new(p, 0, 1, 0)
	end
end
_G.VYZECC_SetStealProgress = setStealProgress
setStealProgress(0)

if G.TextBox_10 then
	G.TextBox_10.FocusLost:Connect(function()
		local n = tonumber(G.TextBox_10.Text)
		if n and n > 0 and n < 500 then
			St.stealRadius = n
			G.TextBox_10.Text = tostring(n)
			setStealProgress(0)
			if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
		else
			G.TextBox_10.Text = tostring(St.stealRadius)
		end
	end)
end
if G.TextBox_11 then
	-- Steal duration locked to 1.2 (no steal-time toggle)
	St.stealDuration = 1.2
	G.TextBox_11.Text = "1.2"
	G.TextBox_11.TextEditable = false
	G.TextBox_11.FocusLost:Connect(function()
		St.stealDuration = 1.2
		G.TextBox_11.Text = "1.2"
	end)
end

local function registerRagdollStealHit()
	if not (St.ragdollStealOn and St.autoStealOn) then return end
	local now = tick()
	ragdollStealPauseUntil = now + STOP_AT_HIT_DELAY
	St.ragdollStealPauseUntil = ragdollStealPauseUntil
	ragdollStealStateLatched = true
	stealStartTime = nil
	setStealProgress(0)
end

local function bindRagdollStealHealth(character)
	if ragdollStealHealthConn then ragdollStealHealthConn:Disconnect(); ragdollStealHealthConn = nil end
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end
	local lastHealth = humanoid.Health
	ragdollStealHealthConn = humanoid.HealthChanged:Connect(function(newHealth)
		if newHealth < lastHealth then registerRagdollStealHit() end
		lastHealth = newHealth
	end)
end

LocalPlayer.CharacterAdded:Connect(function(character)
	ragdollStealPauseUntil = 0
	St.ragdollStealPauseUntil = 0
	ragdollStealStateLatched = false
	task.defer(bindRagdollStealHealth, character)
end)
task.defer(bindRagdollStealHealth, LocalPlayer.Character)

local function isRagdollStealHitState()
	local char = LocalPlayer.Character
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if not hum then return false end
	local st = hum:GetState()
	return st == Enum.HumanoidStateType.Physics
		or st == Enum.HumanoidStateType.Ragdoll
		or st == Enum.HumanoidStateType.FallingDown
		or st == Enum.HumanoidStateType.GettingUp
end

local function waitForRagdollStealClear()
	if not (St.ragdollStealOn and St.autoStealOn) then return false end
	if isRagdollStealHitState() and not ragdollStealStateLatched then
		registerRagdollStealHit()
	end
	if ragdollStealPauseUntil <= tick() then
		if not isRagdollStealHitState() then ragdollStealStateLatched = false end
		return false
	end
	-- paused: zero progress while waiting
	stealStartTime = nil
	setStealProgress(0)
	while St.autoStealOn and St.ragdollStealOn and tick() < ragdollStealPauseUntil do
		task.wait(0.05)
	end
	if not St.autoStealOn then return false end
	if not St.ragdollStealOn then return true end
	if not isRagdollStealHitState() then ragdollStealStateLatched = false end
	return true
end

local function isMyPlotByName(plotName)
	local plots = workspace:FindFirstChild("Plots")
	local plot = plots and plots:FindFirstChild(plotName)
	if not plot then return false end
	local sign = plot:FindFirstChild("PlotSign")
	local yourBase = sign and sign:FindFirstChild("YourBase")
	return yourBase and yourBase:IsA("BillboardGui") and yourBase.Enabled == true or false
end

local function findNearestPrompt()
	local char = LocalPlayer.Character
	local root = char and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso"))
	local plots = workspace:FindFirstChild("Plots")
	if not root or not plots then return nil end

	local radius = tonumber(St.stealRadius) or 65
	local nearest, distance = nil, math.huge
	for _, plot in ipairs(plots:GetChildren()) do
		if plot:IsA("Model") and not isMyPlotByName(plot.Name) then
			local podiums = plot:FindFirstChild("AnimalPodiums")
			if podiums then
				for _, podium in ipairs(podiums:GetChildren()) do
					local base = podium:FindFirstChild("Base")
					local spawn = base and base:FindFirstChild("Spawn")
					if spawn then
						local d = (spawn.Position - root.Position).Magnitude
						if d <= radius and d < distance then
							local found
							local attachment = spawn:FindFirstChild("PromptAttachment")
							local candidates = attachment and attachment:GetChildren() or spawn:GetDescendants()
							for _, prompt in ipairs(candidates) do
								if prompt:IsA("ProximityPrompt") and prompt.ActionText and tostring(prompt.ActionText):find("Steal") then
									found = prompt
									break
								end
							end
							if found then nearest, distance = found, d end
						end
					end
				end
			end
		end
	end
	return nearest
end

local function executeSteal(prompt)
	if isStealing or autoStealBusy then return end
	if not prompt or not prompt.Parent then return end

	if not stealData[prompt] then
		stealData[prompt] = { hold = {}, trigger = {}, ready = true }
		if getconnections then
			pcall(function()
				for _, c in ipairs(getconnections(prompt.PromptButtonHoldBegan)) do
					if c.Function then table.insert(stealData[prompt].hold, c.Function) end
				end
				for _, c in ipairs(getconnections(prompt.Triggered)) do
					if c.Function then table.insert(stealData[prompt].trigger, c.Function) end
				end
			end)
		end
	end

	local data = stealData[prompt]
	if not data.ready then return end

	data.ready = false
	isStealing = true
	autoStealBusy = true
	stealStartTime = tick()
	setStealProgress(0)

	task.spawn(function()
		local duration = math.max(0.05, tonumber(St.stealDuration) or 1.2)

		-- ragdoll pause before starting hold
		if waitForRagdollStealClear() then
			-- hit during wait: abort this attempt cleanly
			stealStartTime = nil
			isStealing = false
			autoStealBusy = false
			data.ready = true
			setStealProgress(0)
			return
		end
		if not St.autoStealOn then
			stealStartTime = nil
			isStealing = false
			autoStealBusy = false
			data.ready = true
			setStealProgress(0)
			return
		end

		stealStartTime = tick()

		-- 1) Start the hold (game's own handlers)
		for _, fn in ipairs(data.hold) do
			pcall(fn, prompt)
		end

		-- 2) Full duration before fire, progress bar tracks this
		local t0 = tick()
		while St.autoStealOn do
			if St.ragdollStealOn and (isRagdollStealHitState() or tick() < ragdollStealPauseUntil) then
				registerRagdollStealHit()
				stealStartTime = nil
				setStealProgress(0)
				-- wait out pause then abort this cycle (will re-target)
				while St.autoStealOn and St.ragdollStealOn and tick() < ragdollStealPauseUntil do
					task.wait(0.05)
				end
				isStealing = false
				autoStealBusy = false
				data.ready = true
				return
			end
			local elapsed = tick() - t0
			if elapsed >= duration then break end
			task.wait()
		end

		if not St.autoStealOn then
			stealStartTime = nil
			isStealing = false
			autoStealBusy = false
			data.ready = true
			setStealProgress(0)
			return
		end

		-- 3) Fire + retry for lag
		setStealProgress(1)
		pcall(function()
			if type(fireproximityprompt) == "function" then
				fireproximityprompt(prompt)
			end
		end)
		for _, fn in ipairs(data.trigger) do
			pcall(fn, prompt)
		end

		task.wait(0.12)
		pcall(function()
			if type(fireproximityprompt) == "function" then
				fireproximityprompt(prompt)
			end
		end)
		for _, fn in ipairs(data.trigger) do
			pcall(fn, prompt)
		end

		-- 4) Clear visual timer
		stealStartTime = nil
		setStealProgress(0)

		-- 5) Cooldown
		task.wait(0.45)
		isStealing = false
		autoStealBusy = false
		data.ready = true
	end)
end

-- Real-time progress fill driven by steal timer (same idea as VioletteCC)
RunService.RenderStepped:Connect(function()
	if not St.autoStealOn then return end
	if St.ragdollStealOn and tick() < (St.ragdollStealPauseUntil or 0) then
		setStealProgress(0)
		return
	end
	local progress = 0
	local duration = math.max(0.05, tonumber(St.stealDuration) or 1.2)
	if isStealing and stealStartTime then
		progress = math.clamp((tick() - stealStartTime) / duration, 0, 1)
	end
	if Fill and Fill.Parent then
		Fill.Size = UDim2.new(progress, 0, 1, 0)
	end
end)

local function startAutoSteal()
	if autoStealConn then return end
	St.autoStealOn = true
	autoStealConn = RunService.Heartbeat:Connect(function()
		if not St.autoStealOn then return end
		if isStealing or autoStealBusy then return end
		if St.ragdollStealOn and tick() < (St.ragdollStealPauseUntil or 0) then
			setStealProgress(0)
			return
		end
		local prompt = findNearestPrompt()
		if prompt then
			executeSteal(prompt)
		end
	end)
end

local function stopAutoSteal()
	St.autoStealOn = false
	isStealing = false
	autoStealBusy = false
	stealStartTime = nil
	ragdollStealPauseUntil = 0
	St.ragdollStealPauseUntil = 0
	ragdollStealStateLatched = false
	if autoStealConn then
		autoStealConn:Disconnect()
		autoStealConn = nil
	end
	for _, data in pairs(stealData) do
		if type(data) == "table" then data.ready = true end
	end
	setStealProgress(0)
end

wireNamedToggle(G.VyzeccTogglePill_28, false, function(on)
	St.ragdollStealOn = on == true
	if not on then
		ragdollStealPauseUntil = 0
		St.ragdollStealPauseUntil = 0
		ragdollStealStateLatched = false
	end
	if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
end)

wireNamedToggle(G.VyzeccTogglePill_29, false, function(on)
	if on then startAutoSteal() else stopAutoSteal() end
	if _G.VYZECC_SaveConfig then pcall(_G.VYZECC_SaveConfig) end
end)

-- keep stop-time button inert / hidden (old modes no longer used)
if G.TextButton_48 then
	G.TextButton_48.Visible = false
	G.TextButton_48.Active = false
end

St.batCounterOn = false
St.medusaCounterOn = false
local batCounterDebounce = false
local medusaCounterDebounce = false

local function findToolByWords(words)
	local char = LocalPlayer.Character
	local function scan(container)
		if not container then return nil end
		for _, t in ipairs(container:GetChildren()) do
			if t:IsA("Tool") then
				local n = t.Name:lower()
				for _, w in ipairs(words) do
					if n:find(w) then return t end
				end
			end
		end
		return nil
	end
	return scan(char) or scan(LocalPlayer:FindFirstChild("Backpack"))
end

local function swingTool(tool)
	if not tool then return end
	local char = LocalPlayer.Character
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if hum and tool.Parent ~= char then
		pcall(function() hum:EquipTool(tool) end)
		task.wait(0.05)
	end
	pcall(function()
		tool:Activate()
		local re = tool:FindFirstChildWhichIsA("RemoteEvent")
		if re then re:FireServer() end
	end)
end

local function isPlayerDown(plr)
	local char = plr.Character
	if not char then return false end
	local hum = char:FindFirstChildOfClass("Humanoid")
	if not hum or hum.Health <= 0 then return true end
	local st = hum:GetState()
	return st == Enum.HumanoidStateType.Physics
		or st == Enum.HumanoidStateType.Ragdoll
		or st == Enum.HumanoidStateType.FallingDown
		or st == Enum.HumanoidStateType.Dead
end

local function nearestDownEnemy(range)
	local char = LocalPlayer.Character
	local root = char and char:FindFirstChild("HumanoidRootPart")
	if not root then return nil end
	local best, bd = nil, range or 20
	for _, p in ipairs(Players:GetPlayers()) do
		if p ~= LocalPlayer and isPlayerDown(p) and p.Character then
			local r = p.Character:FindFirstChild("HumanoidRootPart")
			if r then
				local d = (r.Position - root.Position).Magnitude
				if d < bd then best, bd = p, d end
			end
		end
	end
	return best
end

local batCounterConn = nil
local function doBatCounterHit(target)
	if batCounterDebounce or not St.batCounterOn then return end
	batCounterDebounce = true
	local bat = findToolByWords({"bat"})
	local char = LocalPlayer.Character
	local root = char and char:FindFirstChild("HumanoidRootPart")
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	local tRoot = target and target.Character and target.Character:FindFirstChild("HumanoidRootPart")
	if root and tRoot and hum then
		hum.AutoRotate = false
		local dir = Vector3.new(tRoot.Position.X - root.Position.X, 0, tRoot.Position.Z - root.Position.Z)
		if dir.Magnitude > 0.05 then
			root.CFrame = CFrame.lookAt(root.Position, root.Position + dir.Unit)
		end
		swingTool(bat)
		task.delay(0.08, function() swingTool(bat) end)
		task.delay(0.16, function() swingTool(bat) end)
	end
	task.delay(0.4, function()
		batCounterDebounce = false
		local h = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if h then h.AutoRotate = true end
	end)
end

local batStateConns = {}
local function hookEnemyForCounter(plr)
	if plr == LocalPlayer then return end
	local function onChar(char)
		task.wait(0.2)
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		if not hum then return end
		local c = hum.StateChanged:Connect(function(_, new)
			if not St.batCounterOn and not St.medusaCounterOn then return end
			if new == Enum.HumanoidStateType.Physics
				or new == Enum.HumanoidStateType.Ragdoll
				or new == Enum.HumanoidStateType.FallingDown
				or new == Enum.HumanoidStateType.Dead then
				if St.batCounterOn then doBatCounterHit(plr) end
				if St.medusaCounterOn then
					task.defer(function()
						local med = findToolByWords({"medusa", "snake", "gorgon"})
						swingTool(med)
						task.delay(0.1, function() swingTool(med) end)
					end)
				end
			end
		end)
		table.insert(batStateConns, c)
	end
	if plr.Character then task.spawn(onChar, plr.Character) end
	table.insert(batStateConns, plr.CharacterAdded:Connect(onChar))
end

local function closestCounterTarget(maxDistance)
	local char = LocalPlayer.Character
	local root = char and char:FindFirstChild("HumanoidRootPart")
	if not root then return nil end
	local best, bestDist = nil, maxDistance or 22
	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer and player.Character then
			local targetRoot = player.Character:FindFirstChild("HumanoidRootPart")
			local targetHum = player.Character:FindFirstChildOfClass("Humanoid")
			if targetRoot and targetHum and targetHum.Health > 0 then
				local dist = (targetRoot.Position - root.Position).Magnitude
				if dist < bestDist then best, bestDist = player, dist end
			end
		end
	end
	return best
end
local function triggerBatCounter()
	if batCounterDebounce then return end
	batCounterDebounce = true
	task.spawn(function()
		local char = LocalPlayer.Character
		local root = char and char:FindFirstChild("HumanoidRootPart")
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		local victim = closestCounterTarget(22)
		local victimRoot = victim and victim.Character and victim.Character:FindFirstChild("HumanoidRootPart")
		local bat = findToolByWords({"bat"})
		if char and hum and bat then
			if bat.Parent ~= char then pcall(function() hum:EquipTool(bat) end); task.wait(0.03) end
			if root and victimRoot then
				local lookAt = Vector3.new(victimRoot.Position.X, root.Position.Y, victimRoot.Position.Z)
				if (lookAt - root.Position).Magnitude > 0.01 then pcall(function() root.CFrame = CFrame.lookAt(root.Position, lookAt) end) end
			end
			task.wait(0.03)
			if bat.Parent == char then pcall(function() bat:Activate() end) end
		end
		task.wait(0.25)
		if hum and hum.Parent and not _G._VezyBatAimbotOn then hum.AutoRotate = true end
		if root and root.Parent then root.AssemblyAngularVelocity = Vector3.zero end
		batCounterDebounce = false
	end)
end
local function startBatCounter()
	if batCounterConn then return end
	local wasRagdolled = false
	batCounterConn = RunService.Heartbeat:Connect(function()
		if not St.batCounterOn then wasRagdolled = false; return end
		local char = LocalPlayer.Character
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		if not hum then wasRagdolled = false; return end
		local state = hum:GetState()
		local ragdolled = state == Enum.HumanoidStateType.Physics
			or state == Enum.HumanoidStateType.Ragdoll
			or state == Enum.HumanoidStateType.FallingDown
			or hum.PlatformStand == true
		if ragdolled and not wasRagdolled then triggerBatCounter() end
		wasRagdolled = ragdolled
	end)
end
local function stopBatCounter()
	if batCounterConn then batCounterConn:Disconnect(); batCounterConn = nil end
	batCounterDebounce = false
end
_G.VezyStartBatCounter = function() St.batCounterOn = true; startBatCounter() end
_G.VezyStopBatCounter = function() St.batCounterOn = false; stopBatCounter() end
wireNamedToggle(G.VyzeccTogglePill_26, false, function(on)
	St.batCounterOn = on
	if on then startBatCounter() else stopBatCounter() end
end)

local medusaConn = nil
local medusaAnchorConns = {}
local medusaLastUsed = 0
local function stopMedusaCounter()
	if medusaConn then medusaConn:Disconnect(); medusaConn = nil end
	for _, connection in ipairs(medusaAnchorConns) do pcall(function() connection:Disconnect() end) end
	table.clear(medusaAnchorConns)
	medusaCounterDebounce = false
end
local function findMedusaCounterTool()
	local char = LocalPlayer.Character
	local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
	for _, container in ipairs({char, backpack}) do
		if container then
			for _, tool in ipairs(container:GetChildren()) do
				if tool:IsA("Tool") then
					local name = tool.Name:lower()
					if name:find("medusa") or name:find("head") or name:find("stone") then return tool end
				end
			end
		end
	end
	return nil
end
local function useMedusaCounter()
	if medusaCounterDebounce or os.clock() - medusaLastUsed < 25 then return end
	local char = LocalPlayer.Character
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	local medusa = findMedusaCounterTool()
	if not char or not hum or not medusa then return end
	medusaCounterDebounce = true
	if medusa.Parent ~= char then pcall(function() hum:EquipTool(medusa) end); task.wait(0.03) end
	if medusa.Parent == char then pcall(function() medusa:Activate() end); medusaLastUsed = os.clock() end
	medusaCounterDebounce = false
end
local function startMedusaCounter()
	stopMedusaCounter()
	if not St.medusaCounterOn then return end
	local char = LocalPlayer.Character
	if not char then return end
	local function watchPart(part)
		if not part:IsA("BasePart") then return end
		local function check()
			if St.medusaCounterOn and part.Parent and part.Anchored and part.Transparency >= 0.99 then
				useMedusaCounter()
			end
		end
		table.insert(medusaAnchorConns, part:GetPropertyChangedSignal("Anchored"):Connect(check))
		table.insert(medusaAnchorConns, part:GetPropertyChangedSignal("Transparency"):Connect(check))
		check()
	end
	for _, part in ipairs(char:GetDescendants()) do watchPart(part) end
	medusaConn = char.DescendantAdded:Connect(watchPart)
end
wireNamedToggle(G.VyzeccTogglePill_27, false, function(on)
	St.medusaCounterOn = on
	if on then startMedusaCounter() else stopMedusaCounter() end
end)
LocalPlayer.CharacterAdded:Connect(function(char)
	task.wait(0.35)
	if St.medusaCounterOn then startMedusaCounter() end
end)
_G._AdaptStartMedusaCounter = function() St.medusaCounterOn = true; startMedusaCounter() end
_G._AdaptStopMedusaCounter = function() St.medusaCounterOn = false; stopMedusaCounter() end

St.unwalkOn = false
St.antiLagOn = false
St.ragdollTimerOn = false
St.enemyRagdollTimerOn = false

local unwalkConn = nil
local function stopAllAnims(char)
	if not char then return end
	local hum = char:FindFirstChildOfClass("Humanoid")
	if hum then
		local animator = hum:FindFirstChildOfClass("Animator")
		if animator then
			for _, t in ipairs(animator:GetPlayingAnimationTracks()) do
				pcall(function() t:Stop(0) end)
			end
		end
	end
	for _, d in ipairs(char:GetDescendants()) do
		if d:IsA("AnimationController") then
			local a = d:FindFirstChildOfClass("Animator")
			if a then
				for _, t in ipairs(a:GetPlayingAnimationTracks()) do
					pcall(function() t:Stop(0) end)
				end
			end
		end
	end
end

local function startUnwalk()
	if unwalkConn then return end
	unwalkConn = RunService.Heartbeat:Connect(function()
		if not St.unwalkOn then return end
		stopAllAnims(LocalPlayer.Character)
	end)
	LocalPlayer.CharacterAdded:Connect(function(c)
		if St.unwalkOn then task.wait(0.3); stopAllAnims(c) end
	end)
end
local function stopUnwalk()
	if unwalkConn then unwalkConn:Disconnect() unwalkConn = nil end
end

wireNamedToggle(G.VyzeccTogglePill_5, false, function(on)
	St.unwalkOn = on
	if on then startUnwalk() else stopUnwalk() end
end)

do
local removeAccessoriesEnabled=false
local antiLagDescConn=nil
local function applyAntiLagDerender(obj)
pcall(function()
local lpChar = LocalPlayer.Character
if lpChar and obj:IsDescendantOf(lpChar) then return end
if obj:IsA("Accessory") or obj:IsA("Hat") then
	if obj.Parent and obj.Parent:IsA("Model") and Players:GetPlayerFromCharacter(obj.Parent) then
		obj:Destroy()
	end
elseif obj:IsA("BasePart") then
	obj.CastShadow = false
elseif obj:IsA("Decal") or obj:IsA("Texture") then
	obj.Transparency = 1
elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam") or obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
	obj.Enabled = false
end
end)
end
local function enableAntiLag()
removeAccessoriesEnabled=true
St.antiLagOn=true
_G._VH_antiLag=true
game:GetService("Lighting").GlobalShadows=false
game:GetService("Lighting").FogEnd=1e10
game:GetService("Lighting").Brightness=1
game:GetService("Lighting").EnvironmentDiffuseScale=0
game:GetService("Lighting").EnvironmentSpecularScale=0
local Lighting=game:GetService("Lighting")
for _,e in pairs(Lighting:GetChildren())do
pcall(function()
if e:IsA("BlurEffect")or e:IsA("SunRaysEffect")or e:IsA("ColorCorrectionEffect")or e:IsA("BloomEffect")or e:IsA("DepthOfFieldEffect")then e.Enabled=false end
end)
end
local antiLagObjects=workspace:GetDescendants()
for i,obj in ipairs(antiLagObjects)do applyAntiLagDerender(obj);if i%180==0 then task.wait()end end
antiLagObjects=nil
if antiLagDescConn then antiLagDescConn:Disconnect()end
local _alQueue={}
local _alSched=false
local function flushAntiLagQueue()
_alSched=false
if not removeAccessoriesEnabled then _alQueue={} return end
local q=_alQueue
_alQueue={}
for i,obj in ipairs(q) do
if obj and obj.Parent then applyAntiLagDerender(obj) end
if i%50==0 then task.wait() end
end
end
antiLagDescConn=workspace.DescendantAdded:Connect(function(obj)
if not removeAccessoriesEnabled then return end
table.insert(_alQueue,obj)
if not _alSched then
_alSched=true
task.defer(flushAntiLagQueue)
end
end)
end
local function disableAntiLag()
removeAccessoriesEnabled=false
St.antiLagOn=false
_G._VH_antiLag=false
if antiLagDescConn then antiLagDescConn:Disconnect();antiLagDescConn=nil end
pcall(function()
local Lighting=game:GetService("Lighting")
Lighting.ExposureCompensation=0
end)
end
wireNamedToggle(G.VyzeccTogglePill_13, false, function(on)
if on then
	pcall(applyFPSBoost)
	enableAntiLag()
else
	disableAntiLag()
	pcall(disableFPSBoost)
end
end)
end


local ragGui = nil
local ragConn = nil
local ragSeen = setmetatable({}, {__mode = "k"})
local function clearRagTimer()
	if ragGui then pcall(function() ragGui:Destroy() end); ragGui = nil end
end
local function showRagTimer(player, seconds)
	clearRagTimer()
	local pg = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	if not pg then return end
	local duration = math.max(0.1, tonumber(seconds) or 2.6)
	local sg = Instance.new("ScreenGui")
	sg.Name = "EnemyRagdollCountdown"
	sg.ResetOnSpawn = false
	sg.IgnoreGuiInset = true
	sg.DisplayOrder = 10020
	sg.Parent = pg
	local card = Instance.new("Frame")
	card.Name = "EnemyRagdollCard"
	card.AnchorPoint = Vector2.new(0.5, 0)
	card.Position = UDim2.new(0.5, 0, 0, 76)
	card.Size = UDim2.fromOffset(260, 66)
	card.BackgroundColor3 = Color3.fromRGB(19, 20, 27)
	card.BackgroundTransparency = 0.08
	card.BorderSizePixel = 0
	card.Parent = sg
	Instance.new("UICorner", card).CornerRadius = UDim.new(0, 12)
	local stroke = Instance.new("UIStroke", card)
	stroke.Color = Color3.fromRGB(103, 91, 145)
	stroke.Transparency = 0.2
	stroke.Thickness = 1
	local accent = Instance.new("Frame")
	accent.BorderSizePixel = 0
	accent.BackgroundColor3 = Color3.fromRGB(173, 132, 255)
	accent.Size = UDim2.new(0, 3, 1, -18)
	accent.Position = UDim2.fromOffset(0, 9)
	accent.Parent = card
	Instance.new("UICorner", accent).CornerRadius = UDim.new(1, 0)
	local title = Instance.new("TextLabel")
	title.BackgroundTransparency = 1
	title.Position = UDim2.fromOffset(14, 9)
	title.Size = UDim2.new(1, -78, 0, 18)
	title.Font = Enum.Font.GothamMedium
	title.Text = "Ragdoll detected · " .. tostring(player.DisplayName or player.Name)
	title.TextColor3 = Color3.fromRGB(190, 185, 205)
	title.TextSize = 12
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.TextTruncate = Enum.TextTruncate.AtEnd
	title.Parent = card
	local timer = Instance.new("TextLabel")
	timer.BackgroundTransparency = 1
	timer.Position = UDim2.fromOffset(14, 27)
	timer.Size = UDim2.new(1, -28, 0, 26)
	timer.Font = Enum.Font.GothamBold
	timer.Text = string.format("%.1fs", duration)
	timer.TextColor3 = Color3.fromRGB(248, 246, 255)
	timer.TextSize = 21
	timer.TextXAlignment = Enum.TextXAlignment.Left
	timer.Parent = card
	local track = Instance.new("Frame")
	track.BorderSizePixel = 0
	track.BackgroundColor3 = Color3.fromRGB(53, 51, 64)
	track.Position = UDim2.new(0, 14, 1, -7)
	track.Size = UDim2.new(1, -28, 0, 2)
	track.Parent = card
	local fill = Instance.new("Frame")
	fill.BorderSizePixel = 0
	fill.BackgroundColor3 = Color3.fromRGB(173, 132, 255)
	fill.Size = UDim2.fromScale(1, 1)
	fill.Parent = track
	ragGui = sg
	local expires = os.clock() + duration
	task.spawn(function()
		while ragGui == sg and sg.Parent and os.clock() < expires do
			local remaining = math.max(0, expires - os.clock())
			timer.Text = string.format("%.1fs", remaining)
			fill.Size = UDim2.new(math.clamp(remaining / duration, 0, 1), 0, 1, 0)
			task.wait(0.04)
		end
		if ragGui == sg then clearRagTimer() end
	end)
end
local function isEnemyRagdolled(player)
	local char = player and player.Character
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if not hum or hum.Health <= 0 then return false end
	local state = hum:GetState()
	return state == Enum.HumanoidStateType.Physics or state == Enum.HumanoidStateType.Ragdoll
		or state == Enum.HumanoidStateType.FallingDown
end
local function startEnemyRagdollTimer()
	if ragConn then return end
	local acc = 0
	ragConn = RunService.Heartbeat:Connect(function(dt)
		if not St.enemyRagdollTimerOn then return end
		acc += dt
		if acc < 0.05 then return end
		acc = 0
		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= LocalPlayer then
				local ragdolled = isEnemyRagdolled(player)
				if ragdolled and not ragSeen[player] then
					ragSeen[player] = true
					showRagTimer(player, 2.6)
				elseif not ragdolled then
					ragSeen[player] = nil
				end
			end
		end
	end)
end
local function stopEnemyRagdollTimer()
	if ragConn then ragConn:Disconnect(); ragConn = nil end
	table.clear(ragSeen)
	clearRagTimer()
end


local localRagGui, localRagConn = nil, nil
local localRagSeen = false
local localRagLabel = nil
local localRagBillboard = nil
local localRagActive = false
local localRagLocked = false
local localRagWasTriggered = false
local localRagStartedAt = 0
local localRagEndsAt = 0
local localRagTotal = 2.6
local localRagGoUntil = 0
local LOCAL_RAG_HIT_TIME = 2.6
local LOCAL_RAG_MEDUSA_TIME = 4.5

local function clearLocalRagCountdown()
	if localRagBillboard then
		pcall(function() localRagBillboard:Destroy() end)
	end
	localRagBillboard = nil
	localRagGui = nil
	localRagLabel = nil
	localRagOverheadLabel = nil
end

local function buildLocalRagCountdown(character)
	local head = character and (character:FindFirstChild("Head") or character:WaitForChild("Head", 5))
	if not head then return nil end
	clearLocalRagCountdown()

	local billboard = Instance.new("BillboardGui")
	billboard.Name = "VyzeccRagdollTimerAboveE01"
	billboard.Adornee = head
	billboard.Size = UDim2.fromOffset(170, 22)
	billboard.StudsOffset = Vector3.new(0, 3.35, 0)
	billboard.SizeOffset = Vector2.new(0, 1.25)
	billboard.AlwaysOnTop = true
	billboard.LightInfluence = 0
	billboard.MaxDistance = 250
	billboard.Enabled = true
	billboard.ResetOnSpawn = false
	billboard.Parent = LocalPlayer:WaitForChild("PlayerGui")

	local label = Instance.new("TextLabel")
	label.Name = "RagdollCountdown"
	label.Size = UDim2.fromScale(1, 1)
	label.BackgroundTransparency = 1
	label.Text = ""
	label.Font = Enum.Font.GothamBlack
	label.TextSize = 19
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	label.TextStrokeTransparency = 0
	label.TextXAlignment = Enum.TextXAlignment.Center
	label.Parent = billboard

	local gradient = Instance.new("UIGradient")
	gradient.Name = "RagdollTimerGradient"
	gradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(170, 75, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(225, 175, 255))
	})
	gradient.Parent = label

	localRagBillboard = billboard
	localRagGui = billboard
	localRagLabel = label
	localRagOverheadLabel = label
	return label
end

local function localIsMedusa(character)
	if not character then return false end
	for _, part in ipairs(character:GetDescendants()) do
		if part:IsA("BasePart") and part.Anchored
			and (part.Name == "HumanoidRootPart" or part.Transparency == 1) then
			return true
		end
	end
	return false
end

local function localHasRagdollMarker(character, humanoid)
	if not humanoid then return false end
	local state = humanoid:GetState()
	if humanoid.PlatformStand
		or state == Enum.HumanoidStateType.Physics
		or state == Enum.HumanoidStateType.Ragdoll
		or state == Enum.HumanoidStateType.FallingDown then
		return true
	end

	for _, holder in ipairs({character, humanoid, LocalPlayer}) do
		if holder then
			for _, name in ipairs({"Ragdoll", "Ragdolled", "IsRagdolled", "Stun", "Stunned"}) do
				local attr = holder:GetAttribute(name)
				if attr == true or (type(attr) == "number" and attr > 0) then
					return true
				end
				local value = holder:FindFirstChild(name, true)
				if value and value:IsA("BoolValue") and value.Value then
					return true
				end
				if value and (value:IsA("NumberValue") or value:IsA("IntValue")) and value.Value > 0 then
					return true
				end
			end
		end
	end

	local endTime = LocalPlayer:GetAttribute("RagdollEndTime")
		or (character and character:GetAttribute("RagdollEndTime"))
		or humanoid:GetAttribute("RagdollEndTime")
	if type(endTime) == "number" and endTime > workspace:GetServerTimeNow() then
		return true
	end
	return false
end

local function startLocalRagdollCountdown()
	if localRagConn then return end
	local acc = 0
	localRagConn = RunService.Heartbeat:Connect(function(dt)
		if not St.ragdollTimerOn then return end
		acc += dt
		if acc < 0.05 then return end
		acc = 0

		local character = LocalPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		local root = character and character:FindFirstChild("HumanoidRootPart")
		if not character or not humanoid or not root or humanoid.Health <= 0 then
			localRagActive = false
			localRagLocked = false
			localRagWasTriggered = false
			localRagGoUntil = 0
			if localRagLabel then localRagLabel.Text = "" end
			return
		end

		if not localRagBillboard or not localRagBillboard.Parent
			or not localRagLabel or not localRagLabel.Parent
			or localRagBillboard.Adornee ~= character:FindFirstChild("Head") then
			buildLocalRagCountdown(character)
		end
		if not localRagLabel then return end

		local now = os.clock()
		local medusa = localIsMedusa(character)
		local triggered = localHasRagdollMarker(character, humanoid) or medusa

		if triggered and not localRagWasTriggered and not localRagActive and not localRagLocked then
			localRagActive = true
			localRagTotal = medusa and LOCAL_RAG_MEDUSA_TIME or LOCAL_RAG_HIT_TIME
			localRagStartedAt = now
			localRagEndsAt = now + localRagTotal
			localRagLabel.Text = string.format("%.1f", localRagTotal)
		elseif localRagActive and medusa and localRagTotal ~= LOCAL_RAG_MEDUSA_TIME then
			localRagTotal = LOCAL_RAG_MEDUSA_TIME
			localRagEndsAt = localRagStartedAt + localRagTotal
		end

		localRagWasTriggered = triggered
		if not triggered and not localRagActive then
			localRagLocked = false
		end

		if localRagActive then
			local remaining = localRagEndsAt - now
			if remaining <= 0 then
				localRagActive = false
				localRagLocked = true
				localRagLabel.Text = "GO"
				localRagGoUntil = now + 0.65
			else
				localRagLabel.Text = string.format("%.1f", remaining)
			end
		elseif localRagGoUntil > 0 and now >= localRagGoUntil then
			localRagLabel.Text = ""
			localRagGoUntil = 0
		end
	end)
end

local function stopLocalRagdollCountdown()
	if localRagConn then
		localRagConn:Disconnect()
		localRagConn = nil
	end
	localRagSeen = false
	localRagActive = false
	localRagLocked = false
	localRagWasTriggered = false
	localRagGoUntil = 0
	clearLocalRagCountdown()
end

if G.VyzeccTogglePill_6 then
	wireNamedToggle(G.VyzeccTogglePill_6, false, function(on)
		St.ragdollTimerOn = on == true
		if on then startLocalRagdollCountdown() else stopLocalRagdollCountdown() end
	end)
end
if G.VyzeccTogglePill_8 then
	wireNamedToggle(G.VyzeccTogglePill_8, false, function(on)
		St.enemyRagdollTimerOn = on == true
		if on then startEnemyRagdollTimer() else stopEnemyRagdollTimer() end
	end)
end

local CONFIG_FILE = "vyzecc.json"

local function keyName(kc)
	if typeof(kc) == "EnumItem" then return kc.Name end
	return "Unknown"
end
local function keyFromName(name)
	if type(name) ~= "string" or name == "" or name == "Unknown" then return Enum.KeyCode.Unknown end
	local ok, v = pcall(function() return Enum.KeyCode[name] end)
	return (ok and v) or Enum.KeyCode.Unknown
end

local function getToggleConfigKey(pill)
	if not pill then return nil end

	
	
	
	
	for key, value in pairs(G) do
		if value == pill and type(key) == "string" then
			return "toggle:" .. key
		end
	end

	
	local row = pill.Parent
	local label = row and row:FindFirstChildWhichIsA("TextLabel")
	local pageKey = "ui"
	for name, page in pairs(pages) do
		if page and pill:IsDescendantOf(page) then
			pageKey = tostring(name)
			break
		end
	end
	local labelKey = label and label.Text or "unnamed"
	return "toggle:" .. pageKey .. ":" .. labelKey
end

local function collectConfigTogglePills()
	local pills = {}
	for _, obj in ipairs(G.VYZECCHubV1:GetDescendants()) do
		if obj:IsA("Frame") and obj.Name == "VyzeccTogglePill" then
			table.insert(pills, obj)
		end
	end
	return pills
end

local function resetConfigToggles()
	for _, pill in ipairs(collectConfigTogglePills()) do
		setToggleVisual(pill, false)
		local callback = _vyzeccToggleCallbacks[pill]
		if callback then
			local ok, err = pcall(callback, false)
			if not ok then warn("[VYZECC] Toggle reset failed:", getToggleConfigKey(pill), err) end
		end
	end
	
	pcall(stopBatAimbot)
	_G._VezyBatSpeedEnabled = false
	_G._VioletteccAimbotAutoSwing = false
	pcall(toggleAutoLeft, false)
	pcall(toggleAutoRight, false)
	St.autoLeftEnabled = false
	St.autoRightEnabled = false
	St.ragdollTimerOn = false
	St.enemyRagdollTimerOn = false
	St.ragdollStealOn = false
	St.autoStealOn = false
	St.batCounterOn = false
	St.medusaCounterOn = false
	St.unwalkOn = false
	St.antiLagOn = false
	St.autoCarryOn = false
	St.antiRagdollEnabled = false
	St.infJumpEnabled = false
	St.autoTpDownEnabled = false
	St.uiLocked = false
	St.lockUI = false
	St.unlockButtons = false
	St.unlockButtonPanel = false
	St.hideButtons = false
	St.hideButtonPanel = false
	St.sideButtonsLocked = false
	St.sidePanelLocked = false
	St.sidePanelVisible = false
	St.speedToggled = false
	St.laggerMode = 0
	St.fpsBoostEnabled = false
	pcall(setAntiDieEnabled, false)
	if G.VyzeccTogglePill_AntiDie then setToggleVisual(G.VyzeccTogglePill_AntiDie, false) end
	pcall(updateSpeedModeButton)
	pcall(syncMobileSpeedVisuals)
	_G._VynxAutoSpeedOn = false
	_G._VynxAutoTPDownEnabled = false
	_G._VH_antiLag = false
	if type(_G._VyzeccSetKorbloxMode) == "function" then
		pcall(_G._VyzeccSetKorbloxMode, "Off")
	else
		_G._RaVeKorbloxMode = "Off"
		if G.TextButton_34 then G.TextButton_34.Text = "Off" end
		if type(_G._RaVeApplyKorblox) == "function" then pcall(_G._RaVeApplyKorblox, "Off") end
	end
	if type(_G.VYZECC_SetAnimPack) == "function" then pcall(_G.VYZECC_SetAnimPack, "Off") end
end

local function saveVyzeccConfig()
	if not writefile then return false end
	local uiToggles, toggleStates, uiText = {}, {}, {}
	for _, obj in ipairs(G.VYZECCHubV1:GetDescendants()) do
		if obj:IsA("Frame") and obj.Name == "VyzeccTogglePill" then
			local row = obj.Parent
			local label = row and row:FindFirstChildWhichIsA("TextLabel")
			local enabled = obj:GetAttribute("VyzeccToggleOn") == true
			if label and label.Text ~= "" then uiToggles[label.Text] = enabled end
			if row then
				local stableKey = getToggleConfigKey(obj)
				if stableKey then toggleStates[stableKey] = enabled end
				
				
				uiToggles[row.Name .. "#" .. (label and label.Text or "toggle")] = enabled
			end
		elseif obj:IsA("TextBox") then
			uiText[obj.Name] = obj.Text
		end
	end
	local uiValues,uiSizes={},{}
	for _,obj in ipairs(G.VYZECCHubV1:GetDescendants()) do
		if obj:IsA("TextBox") then
			uiValues[obj.Name]=obj.Text; uiSizes[obj.Name]={x=obj.Size.X.Scale,xo=obj.Size.X.Offset,y=obj.Size.Y.Scale,yo=obj.Size.Y.Offset}
		end
	end
	local sideButtonPositions = {}
	for _, frame in ipairs(stackFrames) do
		if frame then
			local p = frame.Position
			sideButtonPositions[frame.Name] = {xs=p.X.Scale, xo=p.X.Offset, ys=p.Y.Scale, yo=p.Y.Offset}
		end
	end
	local uiPositions = {}
	for key, obj in pairs({
		MobileStackPanel = G.MobileStackPanel,
		StealBarRoot = StealBarRoot,
		MainOuter = G.MainOuter,
		VyzeccMiniRestoreButton = G.VyzeccMiniRestoreButton,
	}) do
		if obj then
			local p = obj.Position
			uiPositions[key] = {xs=p.X.Scale, xo=p.X.Offset, ys=p.Y.Scale, yo=p.Y.Offset}
		end
	end
	if type(St.promoterPosition) == "table" then
		uiPositions.PromoterCard = {
			xs = tonumber(St.promoterPosition.xs) or 0.5,
			xo = tonumber(St.promoterPosition.xo) or -105,
			ys = tonumber(St.promoterPosition.ys) or 0,
			yo = tonumber(St.promoterPosition.yo) or 10,
		}
	end
	local sideToggleStates = {
		["AUTO LEFT"] = AutoPath.L == true,
		["AUTO RIGHT"] = AutoPath.R == true,
		["AIMBOT"] = _G._VezyBatAimbotOn == true,
		["CARRY SPEED"] = St.laggerMode == 0 and St.speedToggled == true,
		["LAGGER NORMAL"] = St.laggerMode == 1,
		["LAGGER CARRY"] = St.laggerMode == 2,
	}
	local data = {
		configVersion = 6,
		sideToggleStates = sideToggleStates,
		toggleStates = toggleStates,
		sideButtonPositions = sideButtonPositions,
		uiPositions = uiPositions,
		uiToggles = uiToggles,
		uiText = uiText,
		uiValues = uiValues,
		uiSizes = uiSizes,
		fovValue = _G._VyzeccFovValue or 70,
		stretchFov = _G._VezyStretchFOV or 120,
		batAimbotOn = _G._VezyBatAimbotOn == true,
		batSpeedEnabled = _G._VezyBatSpeedEnabled == true,
		korbloxMode = _G._RaVeKorbloxMode or "Off",
		bodyLockRange = tonumber(G.TextBox_7 and G.TextBox_7.Text) or 20,
		normalSpeed = St.normalSpeed,
		carrySpeed = St.carrySpeed,
		burstNormalSpeed = St.burstNormalSpeed,
		burstCarrySpeed = St.burstCarrySpeed,
		speedToggled = St.speedToggled,
		laggerMode = St.laggerMode,
		autoCarryOn = St.autoCarryOn,
		autoCarryMode = St.autoCarryMode,
		autoLeftEnabled = St.autoLeftEnabled,
		autoRightEnabled = St.autoRightEnabled,
		antiRagdollEnabled = St.antiRagdollEnabled,
		antiRagdollMode = St.antiRagdollMode,
		infJumpEnabled = St.infJumpEnabled,
		dropType = St.dropType,
		autoTpDownEnabled = St.autoTpDownEnabled,
		autoTpDownHeight = St.autoTpDownHeight,
		uiScale = St.guiScale,
		btnScale = St.sideButtonScale,
		stealBarScale = St.progressBarSize,
		openUiButtonScale = St.openUiButtonScale,
		guiScale = St.guiScale,
		sideButtonScale = St.sideButtonScale,
		progressBarSize = St.progressBarSize,
		lockUI = St.uiLocked == true,
		headlessOn = G.VyzeccTogglePill_20 and G.VyzeccTogglePill_20:GetAttribute("VyzeccToggleOn") == true or false,
		stretchRezOn = G.VyzeccTogglePill_21 and G.VyzeccTogglePill_21:GetAttribute("VyzeccToggleOn") == true or false,
		removeUiBackgroundOn = G.VyzeccTogglePill_30 and G.VyzeccTogglePill_30:GetAttribute("VyzeccToggleOn") == true or false,
		lockUiOn = G.VyzeccTogglePill_35 and G.VyzeccTogglePill_35:GetAttribute("VyzeccToggleOn") == true or false,
		unlockButtons = St.unlockButtons,
		unlockButtonPanel = St.unlockButtonPanel,
		hideButtons = St.hideButtons,
		hideButtonPanel = St.hideButtonPanel,
		keys = {
			speed={inputType=KeyBindings.speed.inputType.Name,keyCode=keyName(KeyBindings.speed.keyCode),platform=KeyBindings.speed.platform},
			lagger={inputType=KeyBindings.lagger.inputType.Name,keyCode=keyName(KeyBindings.lagger.keyCode),platform=KeyBindings.lagger.platform},
			drop={inputType=KeyBindings.drop.inputType.Name,keyCode=keyName(KeyBindings.drop.keyCode),platform=KeyBindings.drop.platform},
			tpDown={inputType=KeyBindings.tpDown.inputType.Name,keyCode=keyName(KeyBindings.tpDown.keyCode),platform=KeyBindings.tpDown.platform},
			aimbot={inputType=KeyBindings.aimbot.inputType.Name,keyCode=keyName(KeyBindings.aimbot.keyCode),platform=KeyBindings.aimbot.platform},
			autoLeft={inputType=KeyBindings.autoLeft.inputType.Name,keyCode=keyName(KeyBindings.autoLeft.keyCode),platform=KeyBindings.autoLeft.platform},
			autoRight={inputType=KeyBindings.autoRight.inputType.Name,keyCode=keyName(KeyBindings.autoRight.keyCode),platform=KeyBindings.autoRight.platform},
		},
		aimbotSpeed = _G._VezyBatAimbotSpeed,
		aimbotSpeedLagger = _G._VezyBatAimbotSpeedLagger,
		aimbotMode = _G._VezyBatAimbotMode,
		autoSwing = _G._VioletteccAimbotAutoSwing,
		stealRadius = St.stealRadius,
		stealDuration = St.stealDuration,
		unwalkOn = St.unwalkOn,
		kickWarningOn = G.VyzeccTogglePill_7 and (G.VyzeccTogglePill_7:GetAttribute("VyzeccToggleOn") == true) or false,
		antiDieOn = G.VyzeccTogglePill_AntiDie and G.VyzeccTogglePill_AntiDie:GetAttribute("VyzeccToggleOn") == true or false,
		ragdollTimerOn = St.ragdollTimerOn == true,
		enemyRagdollTimerOn = St.enemyRagdollTimerOn == true,
		antiLagOn = St.antiLagOn,
		animPack = (type(_G.VYZECC_GetAnimPack) == "function" and _G.VYZECC_GetAnimPack()) or "Off",
		autoStealOn = St.autoStealOn,
		autoStealVersion = St.autoStealVersion,
		ragdollStealOn = St.ragdollStealOn == true,
		batCounterOn = St.batCounterOn,
		medusaCounterOn = St.medusaCounterOn,
		antiRagdollEnabled = St.antiRagdollEnabled,
		promoterModeOn = St.promoterModeOn == true,
		promoterLocked = St.promoterLocked == true,
		promoterPosition = St.promoterPosition,
	}
	local ok, encoded = pcall(function() return HttpService:JSONEncode(data) end)
	if ok and encoded then
		local wrote, writeErr = pcall(writefile, CONFIG_FILE, encoded)
		if not wrote then warn("[VYZECC] Config write failed:", writeErr) end
		return wrote == true
	end
	return false
end

local function loadVyzeccConfig()
	if not (isfile and readfile) then return false end
	local hasFile = false
	local fileOk, fileResult = pcall(isfile, CONFIG_FILE)
	if fileOk and fileResult == true then hasFile = true end
	if not hasFile then return false end
	local ok, data = pcall(function() return HttpService:JSONDecode(readfile(CONFIG_FILE)) end)
	if not ok or type(data) ~= "table" then
		warn("[VYZECC] Config file is invalid or could not be decoded")
		return false
	end

	
	
	resetConfigToggles()
	local legacyProfile = (tonumber(data.configVersion) or 0) < 4

	if type(data.sideButtonPositions) == "table" then
		for name, pos in pairs(data.sideButtonPositions) do
			local frame = G.VYZECCHubV1:FindFirstChild(name, true)
			if frame and frame:IsA("GuiObject") and type(pos) == "table" then
				local xs, xo = tonumber(pos.xs), tonumber(pos.xo)
				local ys, yo = tonumber(pos.ys), tonumber(pos.yo)
				if xs and xo and ys and yo then
					frame.Position = UDim2.new(xs, xo, ys, yo)
				end
			end
		end
	end
	if type(data.uiPositions) == "table" then
		for key, obj in pairs({
			MobileStackPanel = G.MobileStackPanel,
			StealBarRoot = StealBarRoot,
			MainOuter = G.MainOuter,
			VyzeccMiniRestoreButton = G.VyzeccMiniRestoreButton,
		}) do
			local pos = data.uiPositions[key]
			if obj and type(pos) == "table" then
				local xs, xo, ys, yo = tonumber(pos.xs), tonumber(pos.xo), tonumber(pos.ys), tonumber(pos.yo)
				if xs and xo and ys and yo then obj.Position = UDim2.new(xs, xo, ys, yo) end
			end
		end
		if type(data.uiPositions.PromoterCard) == "table" then
			local pos = data.uiPositions.PromoterCard
			St.promoterPosition = {
				xs = tonumber(pos.xs) or 0.5,
				xo = tonumber(pos.xo) or -105,
				ys = tonumber(pos.ys) or 0,
				yo = tonumber(pos.yo) or 10,
			}
		end
	end
	if type(data.promoterPosition) == "table" then
		St.promoterPosition = {
			xs = tonumber(data.promoterPosition.xs) or 0.5,
			xo = tonumber(data.promoterPosition.xo) or -105,
			ys = tonumber(data.promoterPosition.ys) or 0,
			yo = tonumber(data.promoterPosition.yo) or 10,
		}
	end
	if type(data.promoterLocked) == "boolean" then
		St.promoterLocked = data.promoterLocked
	end
	if type(data.promoterModeOn) == "boolean" and data.promoterModeOn then
		task.defer(function()
			if G.VyzeccTogglePill_Promoter then
				setToggleVisual(G.VyzeccTogglePill_Promoter, true)
			end
			if type(_G.VYZECC_SetPromoterMode) == "function" then
				pcall(_G.VYZECC_SetPromoterMode, true)
			end
		end)
	end
	if type(data.uiText) == "table" then
		for name, value in pairs(data.uiText) do
			local obj = G.VYZECCHubV1:FindFirstChild(name, true)
			if obj and obj:IsA("TextBox") and type(value) == "string" then obj.Text = value end
		end
	end
	if type(data.uiValues)=="table" then for name,value in pairs(data.uiValues) do local obj=G.VYZECCHubV1:FindFirstChild(name,true); if obj and obj:IsA("TextBox") and type(value)=="string" then obj.Text=value end end end
	if type(data.uiSizes)=="table" then for name,sz in pairs(data.uiSizes) do local obj=G.VYZECCHubV1:FindFirstChild(name,true); if obj and type(sz)=="table" then pcall(function() obj.Size=UDim2.new(tonumber(sz.x) or obj.Size.X.Scale,tonumber(sz.xo) or obj.Size.X.Offset,tonumber(sz.y) or obj.Size.Y.Scale,tonumber(sz.yo) or obj.Size.Y.Offset) end) end end end
	if tonumber(data.fovValue) then
		_G._VyzeccFovValue = math.clamp(tonumber(data.fovValue), 70, 120)
		if _G._VyzeccFovSetValue then pcall(_G._VyzeccFovSetValue, _G._VyzeccFovValue) end
	end
	if tonumber(data.stretchFov) then _G._VezyStretchFOV = math.clamp(tonumber(data.stretchFov), 70, 120) end
	if tonumber(data.bodyLockRange) then
		if _G._VyzeccSetBodyLockRange then pcall(_G._VyzeccSetBodyLockRange, data.bodyLockRange) elseif G.TextBox_7 then G.TextBox_7.Text = tostring(math.clamp(tonumber(data.bodyLockRange), 1, 500)) end
	end
	if type(data.korbloxMode) == "string" and G.TextButton_34 then
		local mode = data.korbloxMode
		if mode == "Off" or mode == "Both" or mode == "Left" or mode == "Right" then
			if _G._VyzeccSetKorbloxMode then pcall(_G._VyzeccSetKorbloxMode, mode) else G.TextButton_34.Text = mode; _G._RaVeKorbloxMode = mode; if _G._RaVeApplyKorblox then pcall(_G._RaVeApplyKorblox, mode) end end
		end
	end
	if tonumber(data.normalSpeed) then St.normalSpeed = data.normalSpeed; if G.TextBox then G.TextBox.Text = tostring(data.normalSpeed) end end
	if tonumber(data.carrySpeed) then St.carrySpeed = data.carrySpeed; if G.TextBox_2 then G.TextBox_2.Text = tostring(data.carrySpeed) end end
	if tonumber(data.burstNormalSpeed) then St.burstNormalSpeed = data.burstNormalSpeed; if G.TextBox_3 then G.TextBox_3.Text = tostring(data.burstNormalSpeed) end end
	if tonumber(data.burstCarrySpeed) then St.burstCarrySpeed = data.burstCarrySpeed; if G.TextBox_4 then G.TextBox_4.Text = tostring(data.burstCarrySpeed) end end
	if type(data.speedToggled) == "boolean" then St.speedToggled = data.speedToggled end
	if data.laggerMode ~= nil then St.laggerMode = data.laggerMode end
	if type(data.autoCarryMode) == "string" then St.autoCarryMode = data.autoCarryMode; if G.TextButton_9 then G.TextButton_9.Text = data.autoCarryMode end end
	if type(data.autoStealVersion) == "string" then
		St.autoStealVersion = data.autoStealVersion
		if type(setStopTimeMode) == "function" then pcall(setStopTimeMode, data.autoStealVersion) end
	end
	St.unlockButtons = data.unlockButtons == true
	St.unlockButtonPanel = data.unlockButtonPanel == true
	St.hideButtons = data.hideButtons == true
	St.hideButtonPanel = data.hideButtonPanel == true

	if type(data.autoLeftEnabled) == "boolean" then pcall(function() toggleAutoLeft(data.autoLeftEnabled) end) end
	if type(data.autoRightEnabled) == "boolean" then pcall(function() toggleAutoRight(data.autoRightEnabled) end) end
	St.antiRagdollMode = "V2"
	if type(data.dropType) == "string" then
		St.dropType = data.dropType
	end
	if tonumber(data.autoTpDownHeight) then St.autoTpDownHeight = data.autoTpDownHeight; if G.TextBox_6 then G.TextBox_6.Text = tostring(data.autoTpDownHeight) end end
	if tonumber(data.guiScale or data.uiScale) then applyGuiScale(data.guiScale or data.uiScale) end
	if tonumber(data.sideButtonScale or data.btnScale) then applyButtonScale(data.sideButtonScale or data.btnScale) end
	if tonumber(data.progressBarSize or data.stealBarScale) then applyStealBarScale(data.progressBarSize or data.stealBarScale) end
	if tonumber(data.openUiButtonScale) then applyOpenUiButtonScale(data.openUiButtonScale) end
	if type(data.lockUI) == "boolean" then St.uiLocked = data.lockUI; St.lockUI = data.lockUI end

	if type(data.keys)=="table" then
		local function loadBinding(name,saved)
			if type(saved)=="string" then setBinding(name,Enum.UserInputType.Keyboard,keyFromName(saved),"Keyboard")
			elseif type(saved)=="table" then
				local inputType = (saved.inputType == "Gamepad1") and Enum.UserInputType.Gamepad1 or Enum.UserInputType.Keyboard
				local keyCode = keyFromName(saved.keyCode)
				setBinding(name, inputType, keyCode, saved.platform or getBindPlatform(inputType))
			end
		end
		loadBinding("speed",data.keys.speed); loadBinding("lagger",data.keys.lagger); loadBinding("drop",data.keys.drop); loadBinding("tpDown",data.keys.tpDown); loadBinding("aimbot",data.keys.aimbot); loadBinding("autoLeft",data.keys.autoLeft); loadBinding("autoRight",data.keys.autoRight)
		if G.TextButton_5 then G.TextButton_5.Text=bindingText("speed") end; if G.TextButton_6 then G.TextButton_6.Text=bindingText("lagger") end
		if G.TextButton_15 then G.TextButton_15.Text=bindingText("drop") end; if G.TextButton_16 then G.TextButton_16.Text=bindingText("tpDown"); G.TextButton_16:SetAttribute("BindTypes","Keyboard / PlayStation / Xbox / Gamepad") end
		if G.TextButton_42 then G.TextButton_42.Text=bindingText("aimbot") end
		if G.TextButton_10 then G.TextButton_10.Text=bindingText("autoLeft") end
		if G.TextButton_11 then G.TextButton_11.Text=bindingText("autoRight") end
	end

	if tonumber(data.aimbotSpeed) then
		_G._VezyBatAimbotSpeed = data.aimbotSpeed
		if G.TextBox_8 then G.TextBox_8.Text = tostring(data.aimbotSpeed) end
	end
	if tonumber(data.aimbotSpeedLagger) then
		_G._VezyBatAimbotSpeedLagger = data.aimbotSpeedLagger
		if G.TextBox_9 then G.TextBox_9.Text = tostring(data.aimbotSpeedLagger) end
	end
	if type(data.aimbotMode) == "string" then
		_G._VezyBatAimbotMode = data.aimbotMode
		if G.TextButton_43 then
			G.TextButton_43.Text = (data.aimbotMode == "old") and "Bypass" or "Normal"
		end
	end
	
	local savedRadius = tonumber(data.stealRadius)
	if not savedRadius and type(data.uiText) == "table" then savedRadius = tonumber(data.uiText.TextBox_10) end
	if not savedRadius and type(data.uiValues) == "table" then savedRadius = tonumber(data.uiValues.TextBox_10) end
	if savedRadius and savedRadius > 0 and savedRadius < 500 then
		St.stealRadius = savedRadius
		if G.TextBox_10 then G.TextBox_10.Text = tostring(savedRadius) end
	end

	local savedDuration = tonumber(data.stealDuration)
	if not savedDuration and type(data.uiText) == "table" then savedDuration = tonumber(data.uiText.TextBox_11) end
	if not savedDuration and type(data.uiValues) == "table" then savedDuration = tonumber(data.uiValues.TextBox_11) end
	if savedDuration and savedDuration > 0.05 and savedDuration < 10 then
		St.stealDuration = savedDuration
		if G.TextBox_11 then G.TextBox_11.Text = string.format("%.2f", savedDuration) end
	end
	do
		local savedToggles = type(data.uiToggles) == "table" and data.uiToggles or {}
		local savedStates = type(data.toggleStates) == "table" and data.toggleStates or {}
		local legacyEnemyTimer = data.enemyRagdollTimerOn
		if type(legacyEnemyTimer) ~= "boolean" then legacyEnemyTimer = data.ragdollTimerOn end
		local legacyToggleValues = {
			[G.VyzeccTogglePill_AntiDie] = data.antiDieOn,
			[G.VyzeccTogglePill] = data.infJumpEnabled,
			[G.VyzeccTogglePill_2] = data.autoCarryOn,
			[G.VyzeccTogglePill_3] = data.antiRagdollEnabled,
			[G.VyzeccTogglePill_4] = data.autoTpDownEnabled,
			[G.VyzeccTogglePill_5] = data.unwalkOn,
			[G.VyzeccTogglePill_6] = data.ragdollTimerOn,
			[G.VyzeccTogglePill_7] = data.kickWarningOn,
			[G.VyzeccTogglePill_8] = legacyEnemyTimer,
			[G.VyzeccTogglePill_13] = data.antiLagOn,
			[G.VyzeccTogglePill_20] = data.headlessOn,
			[G.VyzeccTogglePill_21] = data.stretchRezOn,
			[G.VyzeccTogglePill_22] = data.batSpeedEnabled,
			[G.VyzeccTogglePill_23] = data.autoSwing,
			[G.VyzeccTogglePill_26] = data.batCounterOn,
			[G.VyzeccTogglePill_27] = data.medusaCounterOn,
			[G.VyzeccTogglePill_28] = data.ragdollStealOn,
			[G.VyzeccTogglePill_29] = data.autoStealOn,
			[G.VyzeccTogglePill_30] = data.removeUiBackgroundOn,
			[G.VyzeccTogglePill_35] = data.lockUiOn,
		}
		for _, pill in ipairs(collectConfigTogglePills()) do
			local row = pill.Parent
			local label = row and row:FindFirstChildWhichIsA("TextLabel")
			local stableKey = getToggleConfigKey(pill)
			local wanted
			if stableKey then wanted = savedStates[stableKey] end
			
			
			if type(wanted) ~= "boolean" and row and label then wanted = savedToggles[row.Name .. "#" .. label.Text] end
			if type(wanted) ~= "boolean" and label then wanted = savedToggles[label.Text] end
			if type(wanted) ~= "boolean" then wanted = legacyToggleValues[pill] end
			if type(wanted) ~= "boolean" then wanted = false end

			
			
			if legacyProfile and wanted == true and (pill == G.VyzeccTogglePill_22
				or pill == G.VyzeccTogglePill_23 or pill == G.VyzeccTogglePill_32) then
				wanted = false
			end

			setToggleVisual(pill, wanted)
			if wanted then
				local callback = _vyzeccToggleCallbacks[pill]
				if callback then
					local called, err = pcall(callback, true)
					if not called then warn("[VYZECC] Toggle restore failed:", row and row.Name, err) end
				end
			end
		end
	end

	
	local sideStates = type(data.sideToggleStates) == "table" and data.sideToggleStates or {}
	local savedAimbot = sideStates["AIMBOT"]
	if type(savedAimbot) ~= "boolean" then savedAimbot = data.batAimbotOn == true end
	if savedAimbot then pcall(startBatAimbot) else pcall(stopBatAimbot) end
	mobileToggles["AIMBOT"] = savedAimbot
	if G.StackBtn_aimbot then setFrameOn(G.StackBtn_aimbot, savedAimbot) end
	if type(sideStates["AUTO LEFT"]) == "boolean" then pcall(toggleAutoLeft, sideStates["AUTO LEFT"]) end
	if type(sideStates["AUTO RIGHT"]) == "boolean" then pcall(toggleAutoRight, sideStates["AUTO RIGHT"]) end
	if type(sideStates["LAGGER NORMAL"]) == "boolean" or type(sideStates["LAGGER CARRY"]) == "boolean" then
		local wantedMode = sideStates["LAGGER CARRY"] and 2 or (sideStates["LAGGER NORMAL"] and 1 or 0)
		pcall(setLaggerMode, wantedMode)
	end
	if type(sideStates["CARRY SPEED"]) == "boolean" and St.laggerMode == 0 then
		St.speedToggled = sideStates["CARRY SPEED"]
	end
	pcall(syncMobileSpeedVisuals)

	if type(data.animPack) == "string" and data.animPack ~= "" then
		pcall(function()
			if type(_G.VYZECC_SetAnimPack) == "function" then _G.VYZECC_SetAnimPack(data.animPack) end
		end)
	end
	pcall(updateSpeedModeButton)
	pcall(syncMobileSpeedVisuals)
	return true
end

_G.VYZECC_SaveConfigNow = saveVyzeccConfig
_G.VYZECC_LoadConfig = loadVyzeccConfig

local _vyzeccConfigSaveQueued = false
_G.VYZECC_SaveConfig = function()
	if _vyzeccConfigSaveQueued then return true end
	_vyzeccConfigSaveQueued = true
	task.delay(0.35, function()
		_vyzeccConfigSaveQueued = false
		local ok, result = pcall(saveVyzeccConfig)
		if not ok or result ~= true then
			warn("[VYZECC] Automatic config save failed:", result)
		end
	end)
	return true
end

if G.TextButton_60 then G.TextButton_60.Visible = false; G.TextButton_60.Active = false end
if G.TextButton_70 then G.TextButton_70.Visible = false; G.TextButton_70.Active = false end
if G.Frame_146 then G.Frame_146.Visible = false; G.Frame_146.Size = UDim2.new(1, 0, 0, 0) end


if G.TextButton_59 then
	local resetBtn = G.TextButton_59
	local resetBusy = false
	local idleResetText = resetBtn.Text
	resetBtn.Activated:Connect(function()
		if resetBusy then return end
		resetBusy = true
		local called, err = pcall(function()
			resetConfigToggles()
			local saved = saveVyzeccConfig()
			if not saved then error("Could not save reset config") end
		end)
		resetBtn.Text = called and "Reset!" or "Reset failed"
		if not called then warn("[VYZECC] Config reset failed:", err) end
		task.delay(1.4, function()
			if resetBtn and resetBtn.Parent then
				resetBtn.Text = idleResetText
				resetBusy = false
			end
		end)
	end)
end

do
	local saveBtn = G.TextButton_60
	local saveBusy = false
	local idleColor, idleText = saveBtn.BackgroundColor3, saveBtn.TextColor3
	saveBtn.Activated:Connect(function()
		if saveBusy then return end
		saveBusy = true
		local ok = false
		local called, result = pcall(saveVyzeccConfig)
		if called and result == true then ok = true end
		saveBtn.Text = ok and "Saved!" or "Save failed"
		saveBtn.BackgroundColor3 = ok and Color3.fromRGB(34, 120, 70) or Color3.fromRGB(150, 40, 50)
		task.delay(1.4, function()
			saveBtn.Text = "Save Config"
			saveBtn.BackgroundColor3 = idleColor
			saveBtn.TextColor3 = idleText
			saveBusy = false
		end)
	end)
end

if G.TextButton_70 then
	local loadBtn = G.TextButton_70
	local idleColor, idleText = loadBtn.BackgroundColor3, loadBtn.TextColor3
	loadBtn.Activated:Connect(function()
		local called, result = pcall(loadVyzeccConfig)
		local loaded = called and result == true
		loadBtn.Text = loaded and "Loaded!" or "Load failed"
		loadBtn.BackgroundColor3 = loaded and Color3.fromRGB(34, 120, 70) or Color3.fromRGB(150, 40, 50)
		task.delay(1.4, function()
			if loadBtn and loadBtn.Parent then
				loadBtn.Text = "Load Config"
				loadBtn.BackgroundColor3 = idleColor
				loadBtn.TextColor3 = idleText
			end
		end)
	end)
end

G.VYZECCHubV1.Destroying:Connect(function()
	pcall(stopLocalRagdollCountdown)
	pcall(stopEnemyRagdollTimer)
	if ragdollStealHealthConn then pcall(function() ragdollStealHealthConn:Disconnect() end); ragdollStealHealthConn = nil end
	pcall(stopBatAimbot)
	pcall(stopNetBypass)
	pcall(stopMedusaCounter)
	pcall(stopBatCounter)
	pcall(applyAntiLag, false)
	if _G._VyzeccESPCleanup then pcall(_G._VyzeccESPCleanup) end
end)


end

buildLateSection()


local ANIM_PACKS = {
	["Zombie"] = { idle1="rbxassetid://616158929", idle2="rbxassetid://616160636", walk="rbxassetid://616168032", run="rbxassetid://616163682", jump="rbxassetid://616161997", fall="rbxassetid://616157476", climb="rbxassetid://616156119", swim="rbxassetid://616165109", swimidle="rbxassetid://616166655" },
	["Ninja"] = { idle1="rbxassetid://656117400", idle2="rbxassetid://656117400", walk="rbxassetid://656121766", run="rbxassetid://656118852", jump="rbxassetid://656117878", fall="rbxassetid://656115606", climb="rbxassetid://656114359", swim="rbxassetid://656117400", swimidle="rbxassetid://656117400" },
	["Knight"] = { idle1="rbxassetid://657595757", idle2="rbxassetid://657595757", walk="rbxassetid://657552124", run="rbxassetid://657564596", jump="rbxassetid://658409194", fall="rbxassetid://657600338", climb="rbxassetid://658360781", swim="rbxassetid://657595757", swimidle="rbxassetid://657595757" },
	["Elder"] = { idle1="rbxassetid://845397899", idle2="rbxassetid://845397899", walk="rbxassetid://845403856", run="rbxassetid://845386501", jump="rbxassetid://845398858", fall="rbxassetid://845397673", climb="rbxassetid://845392038", swim="rbxassetid://845397899", swimidle="rbxassetid://845397899" },
	["Levitate"] = { idle1="rbxassetid://616006778", idle2="rbxassetid://616006778", walk="rbxassetid://616013216", run="rbxassetid://616013216", jump="rbxassetid://616008936", fall="rbxassetid://616005863", climb="rbxassetid://616003713", swim="rbxassetid://616006778", swimidle="rbxassetid://616006778" },
	["Astronaut"] = { idle1="rbxassetid://891621366", idle2="rbxassetid://891621366", walk="rbxassetid://891636393", run="rbxassetid://891636393", jump="rbxassetid://891627522", fall="rbxassetid://891617961", climb="rbxassetid://891609353", swim="rbxassetid://891621366", swimidle="rbxassetid://891621366" },
	["Pirate"] = { idle1="rbxassetid://750781874", idle2="rbxassetid://750781874", walk="rbxassetid://750785693", run="rbxassetid://750783738", jump="rbxassetid://750782230", fall="rbxassetid://750780242", climb="rbxassetid://750779899", swim="rbxassetid://750781874", swimidle="rbxassetid://750781874" },
	["Toy"] = { idle1="rbxassetid://782841498", idle2="rbxassetid://782841498", walk="rbxassetid://782843345", run="rbxassetid://782842708", jump="rbxassetid://782847020", fall="rbxassetid://782846423", climb="rbxassetid://782843869", swim="rbxassetid://782841498", swimidle="rbxassetid://782841498" },
	["Vampire"] = { idle1="rbxassetid://1083445855", idle2="rbxassetid://1083445855", walk="rbxassetid://1083473930", run="rbxassetid://1083462077", jump="rbxassetid://1083455352", fall="rbxassetid://1083443587", climb="rbxassetid://1083439238", swim="rbxassetid://1083445855", swimidle="rbxassetid://1083445855" },
	["Werewolf"] = { idle1="rbxassetid://1083195517", idle2="rbxassetid://1083195517", walk="rbxassetid://1083178339", run="rbxassetid://1083216690", jump="rbxassetid://1083218792", fall="rbxassetid://1083189019", climb="rbxassetid://1083182000", swim="rbxassetid://1083195517", swimidle="rbxassetid://1083195517" },
	["Rthro"] = { idle1="rbxassetid://2510196951", idle2="rbxassetid://2510196951", walk="rbxassetid://2510202577", run="rbxassetid://2510198475", jump="rbxassetid://2510197830", fall="rbxassetid://2510195892", climb="rbxassetid://2510192778", swim="rbxassetid://2510196951", swimidle="rbxassetid://2510196951" },
	["Stylish"] = { idle1="rbxassetid://616136790", idle2="rbxassetid://616136790", walk="rbxassetid://616146177", run="rbxassetid://616140816", jump="rbxassetid://616139451", fall="rbxassetid://616134815", climb="rbxassetid://616133594", swim="rbxassetid://616136790", swimidle="rbxassetid://616136790" },
	["Legendary"] = { idle1="rbxassetid://133806214992291", idle2="rbxassetid://94970088341563", walk="rbxassetid://707897309", run="rbxassetid://707861613", jump="rbxassetid://116936326516985", fall="rbxassetid://116936326516985", climb="rbxassetid://116936326516985", swim="rbxassetid://116936326516985", swimidle="rbxassetid://116936326516985" },
	["TRYHARD"] = { idle1="rbxassetid://133806214992291", idle2="rbxassetid://94970088341563", walk="rbxassetid://707897309", run="rbxassetid://707861613", jump="rbxassetid://116936326516985", fall="rbxassetid://116936326516985", climb="rbxassetid://116936326516985", swim="rbxassetid://116936326516985", swimidle="rbxassetid://116936326516985" },
	["Amazon Unboxed"] = { idle1="rbxassetid://98281136301627", idle2="rbxassetid://98281136301627", walk="rbxassetid://90478085024465", run="rbxassetid://134824450619865", jump="rbxassetid://121454505477205", fall="rbxassetid://94788218468396", climb="rbxassetid://121145883950231", swim="rbxassetid://105962919001086", swimidle="rbxassetid://129126268464847" },
	["Adidas Sports"] = { idle1="rbxassetid://18537376492", idle2="rbxassetid://18537371272", walk="rbxassetid://18537392113", run="rbxassetid://18537384940", jump="rbxassetid://18537380791", fall="rbxassetid://18537367238", climb="rbxassetid://18537387180", swim="rbxassetid://18537389531", swimidle="rbxassetid://18537363391" },
	["Adidas Community"] = { idle1="rbxassetid://122257458498464", idle2="rbxassetid://102357151005774", walk="rbxassetid://122150855457006", run="rbxassetid://82598234841035", jump="rbxassetid://75290611992385", fall="rbxassetid://98600215928904", climb="rbxassetid://109346520324160", swim="rbxassetid://133308483266208", swimidle="rbxassetid://88763136693023" },
	["Adidas Aura"] = { idle1="rbxassetid://110211186840347", idle2="rbxassetid://114191137265065", walk="rbxassetid://83842218823011", run="rbxassetid://118320322718866", jump="rbxassetid://109996626521204", fall="rbxassetid://95603166884636", climb="rbxassetid://94922130551805", swim="rbxassetid://134530128383903", swimidle="rbxassetid://97824616490448" },
	["Wicked Popular"] = { idle1="rbxassetid://118832222982049", idle2="rbxassetid://76049494037641", walk="rbxassetid://92072849924640", run="rbxassetid://72301599441680", jump="rbxassetid://104325245285198", fall="rbxassetid://121152442762481", climb="rbxassetid://113199415118199", swim="rbxassetid://99384245425157", swimidle="rbxassetid://131326830509784" },
	["Mage"] = { idle1="rbxassetid://10921144709", idle2="rbxassetid://10921145797", walk="rbxassetid://10921152678", run="rbxassetid://10921148209", jump="rbxassetid://10921149743", fall="rbxassetid://10921148939", climb="rbxassetid://10921151661", swim="rbxassetid://10921150788", swimidle="rbxassetid://10921143404" },
	["Catwalk Glam"] = { idle1="rbxassetid://133806214992291", idle2="rbxassetid://94970088341563", walk="rbxassetid://109168724482748", run="rbxassetid://81024476153754", jump="rbxassetid://116936326516985", fall="rbxassetid://92294537340807", climb="rbxassetid://98854111361360", swim="rbxassetid://134591743181628", swimidle="rbxassetid://119377220967554" },
	["Wicked Dancing Through Life"] = { idle1="rbxassetid://92849173543269", idle2="rbxassetid://132238900951109", walk="rbxassetid://73718308412641", run="rbxassetid://135515454877967", jump="rbxassetid://78508480717326", fall="rbxassetid://78147885297412", climb="rbxassetid://129183123083281", swim="rbxassetid://110657013921774", swimidle="rbxassetid://129447497744818" },
	["Superhero"] = { idle1="rbxassetid://10921288909", idle2="rbxassetid://10921290167", walk="rbxassetid://10921298616", run="rbxassetid://10921291831", jump="rbxassetid://10921294559", fall="rbxassetid://10921293373", climb="rbxassetid://10921297391", swim="rbxassetid://10921295495", swimidle="rbxassetid://10921286911" },
	["No Boundaries"] = { idle1="rbxassetid://18747067405", idle2="rbxassetid://18747063918", walk="rbxassetid://18747074203", run="rbxassetid://18747070484", jump="rbxassetid://18747069148", fall="rbxassetid://18747062535", climb="rbxassetid://18747071682", swim="rbxassetid://18747073181", swimidle="rbxassetid://18747060903" },
	["NFL"] = { idle1="rbxassetid://92080889861410", idle2="rbxassetid://74451233229259", walk="rbxassetid://110358958299415", run="rbxassetid://117333533048078", jump="rbxassetid://119846112151352", fall="rbxassetid://129773241032", climb="rbxassetid://79090109939093", swim="rbxassetid://132697394189921", swimidle="rbxassetid://134630013742019" },
	["Robot"] = { idle1="rbxassetid://616088211", idle2="rbxassetid://616089559", walk="rbxassetid://616095330", run="rbxassetid://616091570", jump="rbxassetid://616090535", fall="rbxassetid://616087089", climb="rbxassetid://616094091", swim="rbxassetid://616092998", swimidle="rbxassetid://616086039" },
	["Bubbly"] = { idle1="rbxassetid://910004836", idle2="rbxassetid://910009958", walk="rbxassetid://910034870", run="rbxassetid://910025107", jump="rbxassetid://910016857", fall="rbxassetid://910001910", climb="rbxassetid://910030921", swim="rbxassetid://910028158", swimidle="rbxassetid://909997997" },
	["Cartoon"] = { idle1="rbxassetid://742637544", idle2="rbxassetid://742638445", walk="rbxassetid://742640026", run="rbxassetid://742638842", jump="rbxassetid://742637942", fall="rbxassetid://742637151", climb="rbxassetid://742639812", swim="rbxassetid://742639220", swimidle="rbxassetid://742636889" },
}
local ANIM_PACK_ORDER = {"Off", "TRYHARD", "Amazon Unboxed", "Zombie", "Ninja", "Knight", "Elder", "Levitate", "Astronaut", "Pirate", "Toy", "Vampire", "Werewolf", "Rthro", "Stylish", "Adidas Sports", "Adidas Community", "Adidas Aura", "Wicked Popular", "Mage", "Catwalk Glam", "Wicked Dancing Through Life", "Superhero", "No Boundaries", "NFL", "Robot", "Bubbly", "Cartoon", "Legendary"}
local currentAnimPack = "Off"
local originalAnims = nil
local animHeartbeatConn = nil
local animSelectorLabel = nil

local function isPackAnimId(id)
	if type(id) ~= "string" then return false end
	for _, pack in pairs(ANIM_PACKS) do
		for _, v in pairs(pack) do
			if v == id then return true end
		end
	end
	return false
end

local function saveOriginalAnims(char)
	local animate = char and char:FindFirstChild("Animate")
	if not animate then return end
	local function g(obj) return obj and obj.AnimationId or nil end
	local ids = {
		idle1 = g(animate.idle and animate.idle.Animation1),
		idle2 = g(animate.idle and animate.idle.Animation2),
		walk = g(animate.walk and animate.walk.WalkAnim),
		run = g(animate.run and animate.run.RunAnim),
		jump = g(animate.jump and animate.jump.JumpAnim),
		fall = g(animate.fall and animate.fall.FallAnim),
		climb = g(animate.climb and animate.climb.ClimbAnim),
		swim = g(animate.swim and animate.swim.Swim),
		swimidle = g(animate.swimidle and animate.swimidle.SwimIdle),
	}
	if not isPackAnimId(ids.walk) then originalAnims = ids end
end

local function applyAnimPack(packName)
	currentAnimPack = packName or "Off"
	if animSelectorLabel then animSelectorLabel.Text = currentAnimPack end
	local char = LocalPlayer.Character
	if packName == "Off" then
		if animHeartbeatConn then animHeartbeatConn:Disconnect(); animHeartbeatConn = nil end
		if originalAnims and char then
			local animate = char:FindFirstChild("Animate")
			if animate then
				local function s(obj, id) if obj and id then obj.AnimationId = id end end
				s(animate.idle and animate.idle.Animation1, originalAnims.idle1)
				s(animate.idle and animate.idle.Animation2, originalAnims.idle2)
				s(animate.walk and animate.walk.WalkAnim, originalAnims.walk)
				s(animate.run and animate.run.RunAnim, originalAnims.run)
				s(animate.jump and animate.jump.JumpAnim, originalAnims.jump)
				s(animate.fall and animate.fall.FallAnim, originalAnims.fall)
				s(animate.climb and animate.climb.ClimbAnim, originalAnims.climb)
				s(animate.swim and animate.swim.Swim, originalAnims.swim)
				s(animate.swimidle and animate.swimidle.SwimIdle, originalAnims.swimidle)
			end
		end
		return
	end
	local pack = ANIM_PACKS[packName]
	if not pack then return end
	if animHeartbeatConn then animHeartbeatConn:Disconnect() end
	animHeartbeatConn = RunService.Heartbeat:Connect(function()
		local c = LocalPlayer.Character
		if not c then return end
		local animate = c:FindFirstChild("Animate")
		if not animate then return end
		local function s(obj, id) if obj and id then obj.AnimationId = id end end
		s(animate.idle and animate.idle.Animation1, pack.idle1)
		s(animate.idle and animate.idle.Animation2, pack.idle2)
		s(animate.walk and animate.walk.WalkAnim, pack.walk)
		s(animate.run and animate.run.RunAnim, pack.run)
		s(animate.jump and animate.jump.JumpAnim, pack.jump)
		s(animate.fall and animate.fall.FallAnim, pack.fall)
		s(animate.climb and animate.climb.ClimbAnim, pack.climb)
		s(animate.swim and animate.swim.Swim, pack.swim)
		s(animate.swimidle and animate.swimidle.SwimIdle, pack.swimidle)
	end)
end

local function startAnimPack(packName)
	local char = LocalPlayer.Character
	if char then
		saveOriginalAnims(char)
		applyAnimPack(packName)
		local hum = char:FindFirstChildOfClass("Humanoid")
		if hum then
			for _, track in ipairs(hum:GetPlayingAnimationTracks()) do pcall(function() track:Stop(0) end) end
			pcall(function() hum:ChangeState(Enum.HumanoidStateType.Running) end)
		end
	else
		applyAnimPack(packName)
	end
	currentAnimPack = packName
	if _G.VYZECC_SaveConfig then task.defer(function() pcall(_G.VYZECC_SaveConfig) end) end
end

local function cycleAnimPack(dir)
	local idx = 1
	for i, name in ipairs(ANIM_PACK_ORDER) do
		if name == currentAnimPack then idx = i; break end
	end
	idx = idx + (dir or 1)
	if idx < 1 then idx = #ANIM_PACK_ORDER end
	if idx > #ANIM_PACK_ORDER then idx = 1 end
	startAnimPack(ANIM_PACK_ORDER[idx])
end

LocalPlayer.CharacterAdded:Connect(function(char)
	task.wait(0.6)
	if currentAnimPack and currentAnimPack ~= "Off" then
		saveOriginalAnims(char)
		applyAnimPack(currentAnimPack)
	end
end)


pcall(function()
	if not G.VyzeccPage_Visuals then return end
	local sep = Instance.new("Frame")
	sep.BackgroundTransparency = 1
	sep.BorderSizePixel = 0
	sep.LayoutOrder = 200
	sep.Size = UDim2.new(1, 0, 0, 8)
	sep.Parent = G.VyzeccPage_Visuals

	local header = Instance.new("Frame")
	header.BackgroundTransparency = 1
	header.BorderSizePixel = 0
	header.LayoutOrder = 24
	header.Size = UDim2.new(1, 0, 0, 0)
	header.Visible = false
	header.Parent = G.VyzeccPage_Misc
	local headerLbl = Instance.new("TextLabel")
	headerLbl.BackgroundTransparency = 1
	headerLbl.Position = UDim2.new(0, 8, 0, 0)
	headerLbl.Size = UDim2.new(1, -14, 1, 0)
	headerLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	headerLbl.Text = "ANIMATION"
	headerLbl.TextColor3 = Color3.fromRGB(160, 80, 220)
	headerLbl.TextSize = 13
	headerLbl.TextXAlignment = Enum.TextXAlignment.Left
	headerLbl.Parent = header

	local row = Instance.new("Frame")
	row.BackgroundTransparency = 1
	row.BorderSizePixel = 0
	row.LayoutOrder = 24
	row.Size = UDim2.new(1, 0, 0, 40)
	row.Parent = G.VyzeccPage_Misc

	local nameLbl = Instance.new("TextLabel")
	nameLbl.BackgroundTransparency = 1
	nameLbl.Position = UDim2.new(0, 12, 0, 0)
	nameLbl.Size = UDim2.new(0, 70, 1, 0)
	nameLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	nameLbl.Text = "Anim Pack"
	nameLbl.TextColor3 = Color3.fromRGB(234, 225, 240)
	nameLbl.TextSize = 11
	nameLbl.TextXAlignment = Enum.TextXAlignment.Left
	nameLbl.Parent = row

	local container = Instance.new("Frame")
	container.BackgroundTransparency = 1
	container.ClipsDescendants = true
	container.Position = UDim2.new(1, -168, 0.5, -14)
	container.Size = UDim2.new(0, 156, 0, 28)
	container.ZIndex = 8
	container.Parent = row

	local leftBtn = Instance.new("TextButton")
	leftBtn.BackgroundColor3 = Color3.fromRGB(28, 12, 48)
	leftBtn.BorderSizePixel = 0
	leftBtn.Size = UDim2.new(0, 24, 0, 28)
	leftBtn.Position = UDim2.new(0, 0, 0, 0)
	leftBtn.ZIndex = 9
	leftBtn.AutoButtonColor = false
	leftBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	leftBtn.Text = "<"
	leftBtn.TextColor3 = Color3.fromRGB(249, 240, 255)
	leftBtn.TextSize = 13
	leftBtn.Parent = container
	Instance.new("UICorner", leftBtn).CornerRadius = UDim.new(0, 7)

	animSelectorLabel = Instance.new("TextLabel")
	animSelectorLabel.BackgroundColor3 = Color3.fromRGB(22, 10, 38)
	animSelectorLabel.BorderSizePixel = 0
	animSelectorLabel.Position = UDim2.new(0, 26, 0, 0)
	animSelectorLabel.Size = UDim2.new(0, 104, 0, 28)
	animSelectorLabel.ZIndex = 9
	animSelectorLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	animSelectorLabel.Text = currentAnimPack
	animSelectorLabel.TextColor3 = Color3.fromRGB(220, 180, 255)
	animSelectorLabel.TextSize = 10
	animSelectorLabel.TextTruncate = Enum.TextTruncate.AtEnd
	animSelectorLabel.Parent = container
	Instance.new("UICorner", animSelectorLabel).CornerRadius = UDim.new(0, 7)

	local rightBtn = Instance.new("TextButton")
	rightBtn.BackgroundColor3 = Color3.fromRGB(28, 12, 48)
	rightBtn.BorderSizePixel = 0
	rightBtn.Size = UDim2.new(0, 24, 0, 28)
	rightBtn.Position = UDim2.new(0, 132, 0, 0)
	rightBtn.ZIndex = 9
	rightBtn.AutoButtonColor = false
	rightBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	rightBtn.Text = ">"
	rightBtn.TextColor3 = Color3.fromRGB(249, 240, 255)
	rightBtn.TextSize = 13
	rightBtn.Parent = container
	Instance.new("UICorner", rightBtn).CornerRadius = UDim.new(0, 7)

	leftBtn.MouseButton1Click:Connect(function() cycleAnimPack(-1) end)
	rightBtn.MouseButton1Click:Connect(function() cycleAnimPack(1) end)
end)

_G.VYZECC_SetAnimPack = startAnimPack
_G.VYZECC_GetAnimPack = function() return currentAnimPack end


G.VYZECCHubV1.Parent = LocalPlayer:WaitForChild("PlayerGui")
task.defer(function()
	local loaded = false
	if type(_G.VYZECC_LoadConfig) == "function" then
		local ok, result = pcall(_G.VYZECC_LoadConfig)
		loaded = ok and result == true
		if not ok then warn("[VYZECC] Config load failed:", result) end
	end
	if not loaded and type(_G.VYZECC_SaveConfigNow) == "function" then
		local ok, err = pcall(_G.VYZECC_SaveConfigNow)
		if not ok then warn("[VYZECC] Initial config creation failed:", err) end
	end
end)

return G.VYZECCHubV1
