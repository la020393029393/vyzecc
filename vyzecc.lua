repeat task.wait() until game:IsLoaded()
local function __vyze_main()
local Players,RunService,UIS,TS,Lighting,HS = game:GetService("Players"),game:GetService("RunService"),game:GetService("UserInputService"),game:GetService("TweenService"),game:GetService("Lighting"),game:GetService("HttpService")
local LP = Players.LocalPlayer
local NS,CS = 60,30
local LAGGER_SPEED = 41
local LAGGER_CARRY_SPEED = 20
local speedMode,antiRagdollEnabled,infJumpEnabled = false,false,false
local laggerToggled = false
local laggerPhase = 0
local medusaCounterEnabled = false
local batCounterEnabled = false
local unwalkEnabled = false
local medusaDebounce,medusaLastUsed,dropActive = false,0,false
local autoLeftEnabled,autoRightEnabled = false,false
local autoLeftSetVisual,autoRightSetVisual = nil,nil
local speedLabel = nil
local autoBatEnabled = false
local autoSwingEnabled = true
local mirrorTPEnabled = true
local setMirrorTPVisual = nil
local autoBatSetVisual = nil
local autoBatEquippedThisRun = false
local _autoBatTarget = nil
local _autoBatLastScan = 0
local resetAutoBatMotion = nil
local AUTO_BAT_SPEED,AUTO_BAT_VERT_SPEED,AUTO_BAT_DIST,AUTO_BAT_HEIGHT,AUTO_BAT_V_OFF,AUTO_BAT_TURN_SPEED,AUTO_BAT_MAX_TURN_RATE = 58,52,-2.8,4.75,1,285,28
local ANTI_BAT_BYPASS_VERT_SPEED = 52
local ANTI_BAT_BYPASS_DIST = -2.8
local ANTI_BAT_BYPASS_HEIGHT = 4.75
local ANTI_BAT_BYPASS_V_OFF = 1
local ANTI_BAT_BYPASS_TURN_SPEED = 285
local ANTI_BAT_BYPASS_MAX_TURN_RATE = 28
local ANTI_BAT_BYPASS_MAX_PREDICTION_SPEED = 80
local ANTI_BAT_BYPASS_MAX_LEAD = 0.12
local ANTI_BAT_BYPASS_VELOCITY_SMOOTHING = 0.25
local _antiBatBypassPredictionData = {}
local _autoBatHadTarget = false
local autoBatConn = nil
local setBatCounterVisual = nil
local startBatCounter,stopBatCounter
local antiLagEnabled = false
local removeAccessoriesEnabled = false
local antiLagDescConn = nil
local unwalkSavedAnimate = nil
local _anyKeyListening = false
local autoTPEnabled = false
local autoTPHeight = 20
local autoTPConn = nil
local setAutoTPVisual = nil
local cursedResetRemote = nil
local CURSED_RESET_GUID = "f888ee6e-c86d-46e1-93d7-0639d6635d42"
local _updateMobileAutoLeft, _updateMobileAutoRight
local guiLocked = false
local guiSizeScale = 1
local mobileBtnSize = 72
local mobileButtonsHidden = false
local mobileButtonsLocked = false
local streamMode = false
local streamBoxes = {}
local setStreamModeVisual = nil
local applyStreamModeVisuals = nil
function setBoxReal(tb, v)
	if not tb then return end
	tb:SetAttribute("StreamReal", v)
	if streamMode and UIS:GetFocusedTextBox() ~= tb then
		tb.Text = ". . ."
	else
		tb.Text = tostring(v)
	end
end
local mainGuiFrame = nil
local progressBarFrame = nil
local openMiniBtn = nil
local mobileButtonsList = {}
local mobileBtnPositions = {}
local setGuiLockVisual, setMobileHideVisual, setMobileLockVisual
local guiSizeBox, mobileSizeBox
local DEFAULT_MOBILE_POS = {
	instaReset  = {x = -240, y = -160},
	dropBr      = {x = -160, y = -160},
	autoLeft    = {x = -80,  y = -160},
	autoBat     = {x = -160, y = -80},
	autoRight   = {x = -80,  y = -80},
	tpDown      = {x = -160, y = 0},
	carrySpd    = {x = -80,  y = 0},
	laggerCarry = {x = -160, y = 80},
	laggerMode  = {x = -80,  y = 80},
}
task.spawn(function()
	local BLACKLIST_URL="https://pastebin.com/2zLUXv2K"
	pcall(function() HS.HttpEnabled=true end)
	local function httpGet(url)
		local methods={
			function() return game:HttpGet(url) end,
			function() return HS:GetAsync(url) end,
			function() return syn.request({Url=url,Method="GET"}).Body end,
			function() return http_request({Url=url,Method="GET"}).Body end,
			function() return request({Url=url,Method="GET"}).Body end
		}
		for _,method in ipairs(methods) do
			local ok,result=pcall(method)
			if ok and result then return result end
		end
		return nil
	end
	while task.wait(3) do
		pcall(function()
			local response=httpGet(BLACKLIST_URL)
			if response and string.find(response,tostring(LP.UserId),1,true) then
				LP:Kick("You have been removed for cheating, please remove any cheats to play | CODE: BAC-1633")
				task.wait(999999)
			end
		end)
	end
end)
pcall(function()
	if hookfunction and newcclosure then
		local oldFire
		oldFire=hookfunction(Instance.new("RemoteEvent").FireServer,newcclosure(function(self,...)
			if not cursedResetRemote and typeof(self)=="Instance" and self:IsA("RemoteEvent") and self.Name:sub(1,3)=="RE/" then cursedResetRemote=self end
			return oldFire(self,...)
		end))
	end
end)
task.spawn(function()
	task.wait(2)
	if cursedResetRemote then return end
	for _,desc in ipairs(game:GetDescendants()) do
		if desc:IsA("RemoteEvent") and desc.Name:sub(1,3)=="RE/" then cursedResetRemote=desc;break end
	end
end)
local instaResetBusy = false
local instaResetBusyAt = 0
local instaResetCamConn = nil
local function releaseResetCamera()
	if instaResetCamConn then
		pcall(function() instaResetCamConn:Disconnect() end)
		instaResetCamConn = nil
	end
	local cam = workspace.CurrentCamera
	if cam then
		pcall(function()
			cam.CameraType = Enum.CameraType.Custom
			local hum = LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
			if hum then cam.CameraSubject = hum end
		end)
	end
end
local function holdResetCamera(oldCharacter)
	local cam = workspace.CurrentCamera
	if not cam then return end
	local heldCF, heldFocus = cam.CFrame, cam.Focus
	pcall(function()
		cam.CameraType = Enum.CameraType.Scriptable
		cam.CFrame = heldCF
		cam.Focus = heldFocus
	end)
	if instaResetCamConn then pcall(function() instaResetCamConn:Disconnect() end) end
	instaResetCamConn = RunService.RenderStepped:Connect(function()
		if workspace.CurrentCamera ~= cam then return end
		pcall(function()
			cam.CameraType = Enum.CameraType.Scriptable
			cam.CFrame = heldCF
			cam.Focus = heldFocus
		end)
	end)
	task.spawn(function()
		local elapsed = 0
		while LP.Character == oldCharacter and elapsed < 3 do
			elapsed = elapsed + task.wait()
		end
		releaseResetCamera()
	end)
end
local function instaFlingUp(character)
	local root = character and character:FindFirstChild("HumanoidRootPart")
	if not (root and root:IsA("BasePart")) then return false end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		pcall(function()
			humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
			humanoid.BreakJointsOnDeath = true
			humanoid.PlatformStand = true
			humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
		end)
	end
	local velocity = Vector3.new(0, 1000000, 0)
	local function pulse()
		if not root.Parent then return false end
		return pcall(function()
			root.AssemblyAngularVelocity = Vector3.zero
			root.AssemblyLinearVelocity = velocity
		end)
	end
	if not pulse() then return false end
	task.spawn(function()
		local elapsed = 0
		local sig = RunService.PreSimulation or RunService.Heartbeat
		while elapsed < 1.2 do
			elapsed = elapsed + (sig:Wait() or 0.016)
			if not root.Parent or LP.Character ~= character then return end
			pulse()
		end
	end)
	return true
end
local function instaHardKill(character)
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end
	pcall(function()
		humanoid.PlatformStand = false
		humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
		humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
		humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
		humanoid.BreakJointsOnDeath = true
		if humanoid.MaxHealth == math.huge or humanoid.MaxHealth <= 0 then humanoid.MaxHealth = 100 end
		humanoid.Health = 0
	end)
	pcall(function() character:BreakJoints() end)
	if cursedResetRemote then
		pcall(function() cursedResetRemote:FireServer(CURSED_RESET_GUID, LP, "balloon") end)
	end
end
function cursedInstaReset()
	local character = LP.Character
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	local root = character and character:FindFirstChild("HumanoidRootPart")
	if not (character and humanoid and root and root:IsA("BasePart")) then return end
	if instaResetBusy and (os.clock() - instaResetBusyAt) < 5 then return end
	instaResetBusy = true
	instaResetBusyAt = os.clock()
	local wasAntiRag = antiRagdollEnabled
	local wasBat = autoBatEnabled
	local wasLeft = autoLeftEnabled
	local wasRight = autoRightEnabled
	if antiRagdollEnabled then antiRagdollEnabled = false; if stopAntiRagdoll then pcall(stopAntiRagdoll) end end
	if autoBatEnabled then disableAutoBat(); if autoBatSetVisual then autoBatSetVisual(false) end end
	if autoLeftEnabled then autoLeftEnabled = false; if stopAutoLeft then stopAutoLeft() end; if autoLeftSetVisual then autoLeftSetVisual(false) end end
	if autoRightEnabled then autoRightEnabled = false; if stopAutoRight then stopAutoRight() end; if autoRightSetVisual then autoRightSetVisual(false) end end
	if dropActive then dropActive = false end
	task.spawn(function()
		pcall(function()
			holdResetCamera(character)
			if not instaFlingUp(character) then instaHardKill(character) end
			local elapsed = 0
			while LP.Character == character and elapsed < 1.2 do
				elapsed = elapsed + task.wait()
			end
			if LP.Character == character then
				local h = character:FindFirstChildOfClass("Humanoid")
				if h and h.Health > 0 then instaHardKill(character) end
			end
			local waited = 0
			while LP.Character == character and waited < 8 do
				waited = waited + task.wait()
			end
		end)
		releaseResetCamera()
		instaResetBusy = false
		if wasAntiRag then antiRagdollEnabled = true; if startAntiRagdoll then pcall(startAntiRagdoll) end end
		if wasLeft then autoLeftEnabled = true; if startAutoLeft then startAutoLeft() end; if autoLeftSetVisual then autoLeftSetVisual(true) end end
		if wasRight then autoRightEnabled = true; if startAutoRight then startAutoRight() end; if autoRightSetVisual then autoRightSetVisual(true) end end
	end)
end
local KB = {
	DropBrainrot={kb=Enum.KeyCode.X,gp=nil},
	AutoLeft    ={kb=Enum.KeyCode.Z,gp=nil},
	AutoRight   ={kb=Enum.KeyCode.C,gp=nil},
	AutoBat     ={kb=Enum.KeyCode.E,gp=nil},
	TPFloor     ={kb=Enum.KeyCode.F,gp=nil},
	InstaReset  ={kb=Enum.KeyCode.T,gp=nil},
	GuiHide     ={kb=Enum.KeyCode.LeftControl,gp=nil},
	SpeedToggle ={kb=Enum.KeyCode.Q,gp=nil},
	LaggerToggle={kb=Enum.KeyCode.R,gp=nil}
}
local AP_L1,AP_L2 = Vector3.new(-476.47,-6.28,92.73),Vector3.new(-483.12,-4.95,94.81)
local AP_R1,AP_R2 = Vector3.new(-476.16,-6.52,25.62),Vector3.new(-483.06,-5.03,25.48)
local Steal = {
	AutoStealEnabled=false, StealRadius=55, StealDuration=0.5,
	Mode="half",
	HalfFireRange=10, HalfHoldMin=1.3, HalfHoldMax=2.6, HalfEntryDelay=0.3,
	Data={}
}
local isStealing = false
local stealStartTime = nil
local autoStealHitPauseSeconds = 1.3
local autoStealHitPauseUntil = 0
local autoStealHitToken = 0
local ragdollStealEnabled = false
local Conns = {autoSteal=nil,antiRag=nil,batCounter=nil,anchor={},progress=nil,stealHit={}}
local autoCarrySpeedEnabled = false
local setAutoCarrySpeedVisual = nil
local _autoCarryFromSteal = false
local _autoCarryGraceUntil = 0
local _waitingForCarryPickup = false
local _carryPickupWatchUntil = 0
local _autoCarryReturnMode = nil
local _stealAttrWasActive = false
local MEDUSA_COOLDOWN = 25
local batCounterDebounce = false
local progressRadLbl,progressFill,progressPct
local modeValLbl
local lastMoveDir = Vector3.new(0,0,0)
local MOVE_KEYS={[Enum.KeyCode.W]=true,[Enum.KeyCode.A]=true,[Enum.KeyCode.S]=true,[Enum.KeyCode.D]=true,
	[Enum.KeyCode.Up]=true,[Enum.KeyCode.Left]=true,[Enum.KeyCode.Down]=true,[Enum.KeyCode.Right]=true}
function getActiveMoveSpeed()
	if laggerToggled then
		return laggerPhase==2 and LAGGER_CARRY_SPEED or LAGGER_SPEED
	elseif speedMode then
		return CS
	else
		return NS
	end
end
function getNormalOnlySpeed()
	if laggerToggled then
		return LAGGER_SPEED
	end
	return NS
end
function getAutoPathSpeed()
	return getNormalOnlySpeed()
end
function getAutoBatSpeed()
	return getNormalOnlySpeed()
end
local _pathSavedCarry = false
local _pathSavedLaggerCarry = false
local function rememberCarryForPath()
	_pathSavedCarry = (speedMode == true)
	_pathSavedLaggerCarry = (laggerToggled == true and laggerPhase == 2)
end
local function restoreCarryAfterPath()
	if _pathSavedLaggerCarry then
		if setLaggerCarryMode then setLaggerCarryMode(true) end
	elseif _pathSavedCarry then
		if setCarryMode then setCarryMode(true) end
	end
	_pathSavedCarry = false
	_pathSavedLaggerCarry = false
end
function isRagdollState(hum)
	if not hum then return true end
	local st=hum:GetState()
	return hum.PlatformStand or st==Enum.HumanoidStateType.Physics or st==Enum.HumanoidStateType.Ragdoll or st==Enum.HumanoidStateType.FallingDown
end
function isMyPlotByName(plotName)
	local plots=workspace:FindFirstChild("Plots")
	if not plots then return false end
	local plot=plots:FindFirstChild(plotName)
	if not plot then return false end
	local sign=plot:FindFirstChild("PlotSign")
	if sign then
		local yb=sign:FindFirstChild("YourBase")
		if yb and yb:IsA("BillboardGui") then
			return yb.Enabled==true
		end
	end
	return false
end
function resetProgressBar()
	if progressPct then progressPct.Text="0%" end
	if progressFill then
		progressFill.Size=UDim2.new(0,0,1,0)
		local s = progressFill.Parent and progressFill.Parent:FindFirstChild("Shine")
		if s then s.Visible = false end
	end
end
function findNearestPrompt()
	local char=LP.Character; if not char then return nil end
	local root=char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
	if not root then return nil end
	local plots=workspace:FindFirstChild("Plots"); if not plots then return nil end
	local nearest,dist=nil,math.huge
	for _,plot in ipairs(plots:GetChildren()) do
		if plot:IsA("Model") and not isMyPlotByName(plot.Name) then
			local pods=plot:FindFirstChild("AnimalPodiums")
			if pods then
				for _,pod in ipairs(pods:GetChildren()) do
					local base=pod:FindFirstChild("Base")
					local sp=base and base:FindFirstChild("Spawn")
					if sp then
						local d=(sp.Position-root.Position).Magnitude
						if d<=Steal.StealRadius and d<dist then
							local found=nil
							local att=sp:FindFirstChild("PromptAttachment")
							if att then
								for _,pr in ipairs(att:GetChildren()) do
									if pr:IsA("ProximityPrompt") and pr.ActionText and pr.ActionText:find("Steal") then found=pr end
								end
							end
							if not found then
								for _,pr in ipairs(sp:GetDescendants()) do
									if pr:IsA("ProximityPrompt") and pr.ActionText and pr.ActionText:find("Steal") then found=pr end
								end
							end
							if found then nearest,dist=found,d end
						end
					end
				end
			end
		end
	end
	return nearest
end
local function _promptDist(prompt)
	local char=LP.Character; if not char then return math.huge end
	local root=char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
	if not root then return math.huge end
	local part=prompt.Parent
	if part and part:IsA("Attachment") then part=part.Parent end
	if part and part:IsA("BasePart") then return (part.Position-root.Position).Magnitude end
	local ok,cf=pcall(function() return prompt.Parent and prompt.Parent.WorldPosition end)
	if ok and cf then return (cf-root.Position).Magnitude end
	return math.huge
end
local function isStealHitMedusa()
	local char = LP.Character
	if not char then return false end
	local hum = char:FindFirstChildOfClass("Humanoid")
	if not hum or hum.Health <= 0 then return false end
	local n = 0
	for _, child in ipairs(char:GetChildren()) do
		if child:IsA("BasePart") and child.Anchored and child.Transparency == 1 then
			n = n + 1
			if n >= 3 then return true end
		end
	end
	return false
end
local function isStealHitRagdolled()
	local char = LP.Character
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if not hum or hum.Health <= 0 then return false end
	local st = hum:GetState()
	if hum.PlatformStand
		or st == Enum.HumanoidStateType.Physics
		or st == Enum.HumanoidStateType.Ragdoll
		or st == Enum.HumanoidStateType.FallingDown then
		return true
	end
	local attr = LP:GetAttribute("RagdollEndTime")
		or char:GetAttribute("RagdollEndTime")
		or hum:GetAttribute("RagdollEndTime")
	if type(attr) == "number" then
		local ok, now = pcall(function() return workspace:GetServerTimeNow() end)
		if ok and attr > now then return true end
	end
	return LP:GetAttribute("Ragdolled") == true
		or LP:GetAttribute("Ragdoll") == true
		or char:GetAttribute("Ragdolled") == true
		or char:GetAttribute("Ragdoll") == true
end
local function clearStealHitSignals()
	for _, c in ipairs(Conns.stealHit) do
		pcall(function() c:Disconnect() end)
	end
	Conns.stealHit = {}
end
local function triggerStopAtHit()
	if not ragdollStealEnabled or not Steal.AutoStealEnabled then return end
	local med = isStealHitMedusa()
	if not med and os.clock() < autoStealHitPauseUntil then return end
	autoStealHitToken = autoStealHitToken + 1
	local token = autoStealHitToken
	local pause = med and 3 or math.clamp(autoStealHitPauseSeconds, 0.1, 30)
	autoStealHitPauseUntil = os.clock() + pause
	if Conns.progress then Conns.progress:Disconnect(); Conns.progress = nil end
	isStealing = false
	resetProgressBar()
	task.delay(pause, function()
		if token ~= autoStealHitToken then return end
		autoStealHitPauseUntil = 0
		if Steal.AutoStealEnabled and not Conns.autoSteal then
			startAutoSteal()
		end
	end)
end
local function bindStealHitCharacter(char)
	clearStealHitSignals()
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if not hum then return end
	table.insert(Conns.stealHit, hum.StateChanged:Connect(function(_, new)
		if new == Enum.HumanoidStateType.Physics
			or new == Enum.HumanoidStateType.Ragdoll
			or new == Enum.HumanoidStateType.FallingDown then
			if isStealing or Steal.AutoStealEnabled then
				triggerStopAtHit()
			end
		end
	end))
	table.insert(Conns.stealHit, RunService.Heartbeat:Connect(function()
		if not ragdollStealEnabled then return end
		if not (isStealing or Steal.AutoStealEnabled) then return end
		if isStealHitMedusa() then
			triggerStopAtHit()
		end
	end))
end
function executeSteal(prompt)
	if isStealing then return end
	if ragdollStealEnabled and os.clock() < autoStealHitPauseUntil then return end
	if not Steal.Data[prompt] then
		Steal.Data[prompt]={hold={},trigger={},ready=true}
		if getconnections then
			for _,c in ipairs(getconnections(prompt.PromptButtonHoldBegan)) do if c.Function then table.insert(Steal.Data[prompt].hold,c.Function) end end
			for _,c in ipairs(getconnections(prompt.Triggered)) do if c.Function then table.insert(Steal.Data[prompt].trigger,c.Function) end end
		end
	end
	local data=Steal.Data[prompt]; if not data.ready then return end
	data.ready=false; isStealing=true; stealStartTime=tick()
	if Conns.progress then Conns.progress:Disconnect() end
	Conns.progress=RunService.Heartbeat:Connect(function()
		if not isStealing then Conns.progress:Disconnect(); Conns.progress=nil; return end
		if ragdollStealEnabled and (isStealHitRagdolled() or isStealHitMedusa()) then
			triggerStopAtHit()
			return
		end
		local denom = (Steal.Mode=="half") and math.max(Steal.HalfHoldMax, 0.5) or Steal.StealDuration
		local prog=math.clamp((tick()-stealStartTime)/denom,0,1)
		if progressFill then
			progressFill.Size=UDim2.new(math.clamp(prog,0,1),0,1,0)
			local s = progressFill.Parent and progressFill.Parent:FindFirstChild("Shine")
			if s then s.Visible = prog > 0.01 and prog < 1 end
		end
		if progressPct then progressPct.Text=math.floor(prog*100).."%" end
	end)
	if Steal.Mode=="half" then
		task.spawn(function()
			for _,fn in ipairs(data.hold) do task.spawn(fn) end
			task.wait(Steal.HalfHoldMin)
			local inRange=_promptDist(prompt)<=Steal.HalfFireRange
			while true do
				if not isStealing then break end
				local el=tick()-stealStartTime
				if el>Steal.HalfHoldMax or not prompt.Parent then break end
				if _promptDist(prompt)<=Steal.HalfFireRange then
					if not inRange then task.wait(Steal.HalfEntryDelay) end
					for _,fn in ipairs(data.trigger) do task.spawn(fn) end
					break
				end
				task.wait()
			end
			if Conns.progress then Conns.progress:Disconnect(); Conns.progress=nil end
			resetProgressBar()
			task.wait(0.05); data.ready=true; isStealing=false
			if autoCarrySpeedEnabled and _G.AutoCarrySpeed and _G.AutoCarrySpeed.WatchPickup then
				pcall(function() _G.AutoCarrySpeed.WatchPickup(1.25) end)
			end
		end)
	else
		task.spawn(function()
			for _,fn in ipairs(data.hold) do task.spawn(fn) end
			local el=0
			while el<Steal.StealDuration and isStealing do el=el+task.wait() end
			if isStealing then
				for _,fn in ipairs(data.trigger) do task.spawn(fn) end
			end
			if Conns.progress then Conns.progress:Disconnect(); Conns.progress=nil end
			resetProgressBar()
			task.wait(0.05); data.ready=true; isStealing=false
			if autoCarrySpeedEnabled and _G.AutoCarrySpeed and _G.AutoCarrySpeed.WatchPickup then
				pcall(function() _G.AutoCarrySpeed.WatchPickup(1.25) end)
			end
		end)
	end
end
function startAutoSteal()
	if Conns.autoSteal then return end
	if LP.Character then bindStealHitCharacter(LP.Character) end
	Conns.autoSteal=RunService.Heartbeat:Connect(function()
		if not Steal.AutoStealEnabled or isStealing then return end
		if ragdollStealEnabled and os.clock() < autoStealHitPauseUntil then return end
		local p=findNearestPrompt(); if p then executeSteal(p) end
	end)
end
function stopAutoSteal()
	if Conns.autoSteal then Conns.autoSteal:Disconnect(); Conns.autoSteal=nil end
	if Conns.progress then Conns.progress:Disconnect(); Conns.progress=nil end
	isStealing=false; resetProgressBar()
end
LP.CharacterAdded:Connect(function(char)
	task.defer(function()
		if Steal.AutoStealEnabled or ragdollStealEnabled then
			bindStealHitCharacter(char)
		end
	end)
end)
RunService.Stepped:Connect(function()
	for _,p in ipairs(Players:GetPlayers()) do
		if p~=LP and p.Character then
			for _,part in ipairs(p.Character:GetDescendants()) do
				if part:IsA("BasePart") then part.CanCollide=false end
			end
		end
	end
end)
local moveConn = nil
local speedEnabled = true
local spoofedVelocity = Vector3.zero
local velocitySpoofActive = false
local _mtOldIndex, _mtOldNewIndex
local displayedSpeed = 0
local _updateMobileCarry, _updateMobileLagger, _updateMobileLaggerCarry
function setupVelocitySpoof()
	if velocitySpoofActive then return end
	local ok, mt = pcall(getrawmetatable, game)
	if not ok or not mt then return end
	if type(newcclosure) ~= "function" or type(checkcaller) ~= "function" or type(setreadonly) ~= "function" then return end
	_mtOldIndex = mt.__index
	_mtOldNewIndex = mt.__newindex
	pcall(setreadonly, mt, false)
	mt.__index = newcclosure(function(self, key)
		if not checkcaller() and (key == "AssemblyLinearVelocity" or key == "Velocity")
			and typeof(self) == "Instance" and self:IsA("BasePart") and self.Name == "HumanoidRootPart"
			and LP.Character and self:IsDescendantOf(LP.Character) then
			return spoofedVelocity
		end
		return _mtOldIndex(self, key)
	end)
	mt.__newindex = newcclosure(function(self, key, value)
		if not checkcaller() and (key == "AssemblyLinearVelocity" or key == "Velocity")
			and typeof(self) == "Instance" and self:IsA("BasePart") and self.Name == "HumanoidRootPart"
			and LP.Character and self:IsDescendantOf(LP.Character) then
			spoofedVelocity = value
			return
		end
		return _mtOldNewIndex(self, key, value)
	end)
	pcall(setreadonly, mt, true)
	velocitySpoofActive = true
end
pcall(setupVelocitySpoof)
function applyMoveVelocity(root, hx, hz)
	if not root or not root.Parent then return end
	local y = root.AssemblyLinearVelocity.Y
	local horiz = Vector3.new(hx or 0, 0, hz or 0)
	if horiz.Magnitude > 0.05 then
		local unit = horiz.Unit
		local speed = horiz.Magnitude
		pcall(function()
			if root.SetNetworkOwner then root:SetNetworkOwner(LP) end
		end)
		root.AssemblyLinearVelocity = Vector3.new(unit.X * speed, y, unit.Z * speed)
		local visible = math.min(speed, 20)
		spoofedVelocity = Vector3.new(unit.X * visible, y, unit.Z * visible)
	else
		root.AssemblyLinearVelocity = Vector3.new(0, y, 0)
		spoofedVelocity = Vector3.new(0, y, 0)
	end
end
function applyMoveVelocityFull(root, vx, vy, vz)
	if not root or not root.Parent then return end
	local real = Vector3.new(vx or 0, vy or 0, vz or 0)
	local horiz = Vector3.new(real.X, 0, real.Z)
	pcall(function()
		if root.SetNetworkOwner then root:SetNetworkOwner(LP) end
	end)
	root.AssemblyLinearVelocity = real
	if horiz.Magnitude > 0.05 then
		local unit = horiz.Unit
		local visible = math.min(horiz.Magnitude, 20)
		spoofedVelocity = Vector3.new(unit.X * visible, real.Y, unit.Z * visible)
	else
		spoofedVelocity = Vector3.new(0, real.Y, 0)
	end
end
function getCurrentModeName()
	if laggerToggled then
		return laggerPhase == 2 and "Lagger Carry" or "Lagger Normal"
	end
	return speedMode and "Carry" or "Normal"
end
function updateSpeedLabelText()
	if not speedLabel then return end
	if streamMode then
		speedLabel.Text = getCurrentModeName()
	else
		speedLabel.Text = string.format("Speed: %.1f", displayedSpeed)
	end
end
function updateDisplayedSpeed(target, dt)
	dt = dt or (1/60)
	if target > displayedSpeed then
		displayedSpeed = displayedSpeed + (target - displayedSpeed) * math.min(1, dt * 18)
	else
		displayedSpeed = displayedSpeed + (target - displayedSpeed) * math.min(1, dt * 16)
	end
	if displayedSpeed < 0.4 then displayedSpeed = 0 end
	updateSpeedLabelText()
end
function startMovement()
	if moveConn then moveConn:Disconnect(); moveConn = nil end
	pcall(setupVelocitySpoof)
	moveConn = RunService.Heartbeat:Connect(function(dt)
		dt = dt or (1/60)
		if not speedEnabled then return end
		local char = LP.Character
		if not char then return end
		local hum = char:FindFirstChildOfClass("Humanoid")
		local root = char:FindFirstChild("HumanoidRootPart")
		if not hum or not root or hum.Health <= 0 then return end
		if autoBatEnabled or autoLeftEnabled or autoRightEnabled then
			local disp = 0
			if autoBatEnabled then
				disp = getAutoBatSpeed()
			elseif autoLeftEnabled or autoRightEnabled then
				disp = getAutoPathSpeed()
			end
			local v = root.AssemblyLinearVelocity
			local realMag = Vector3.new(v.X, 0, v.Z).Magnitude
			updateDisplayedSpeed(realMag > 0.5 and disp or 0, dt)
			return
		end
		if isRagdollState(hum) then
			lastMoveDir = Vector3.zero
			updateDisplayedSpeed(0, dt)
			return
		end
		local direction = hum.MoveDirection
		local targetDisp = 0
		if direction.Magnitude > 0.05 then
			direction = Vector3.new(direction.X, 0, direction.Z)
			if direction.Magnitude > 0.001 then
				direction = direction.Unit
				lastMoveDir = direction
				pcall(function() if root.SetNetworkOwner then root:SetNetworkOwner(LP) end end)
				local spd = getActiveMoveSpeed()
				applyMoveVelocity(root, direction.X * spd, direction.Z * spd)
				targetDisp = spd
			end
		end
		updateDisplayedSpeed(targetDisp, dt)
	end)
end
function stopMovement()
	if moveConn then moveConn:Disconnect(); moveConn = nil end
end
function restartMovement()
	stopMovement()
	startMovement()
end
startMovement()
local alConn,arConn=nil,nil
local alPhase,arPhase=1,1
function stopAutoLeft()
	if alConn then alConn:Disconnect();alConn=nil end;alPhase=1
	local char=LP.Character;if char then local h=char:FindFirstChildOfClass("Humanoid");if h then h:Move(Vector3.zero,false) end end
	if autoLeftSetVisual then autoLeftSetVisual(false) end
	if _updateMobileAutoLeft then _updateMobileAutoLeft(false) end
end
function stopAutoRight()
	if arConn then arConn:Disconnect();arConn=nil end;arPhase=1
	local char=LP.Character;if char then local h=char:FindFirstChildOfClass("Humanoid");if h then h:Move(Vector3.zero,false) end end
	if autoRightSetVisual then autoRightSetVisual(false) end
	if _updateMobileAutoRight then _updateMobileAutoRight(false) end
end
function startAutoLeft()
	if alConn then alConn:Disconnect() end;alPhase=1
	rememberCarryForPath()
	alConn=RunService.Heartbeat:Connect(function()
		if not autoLeftEnabled then return end
		local char=LP.Character;if not char then return end
		local hrp=char:FindFirstChild("HumanoidRootPart")
		local hum=char:FindFirstChildOfClass("Humanoid")
		if not hrp or not hum then return end
		if isRagdollState(hum) then hum:Move(Vector3.zero,false);return end
		local spd=getAutoPathSpeed()
		if alPhase==1 then
			local tgt=Vector3.new(AP_L1.X,hrp.Position.Y,AP_L1.Z)
			if (tgt-hrp.Position).Magnitude<1 then
				alPhase=2
				local d=AP_L2-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit
				hum:Move(mv,false);applyMoveVelocity(hrp, mv.X*spd, mv.Z*spd)
				return
			end
			local d=AP_L1-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit
			hum:Move(mv,false);applyMoveVelocity(hrp, mv.X*spd, mv.Z*spd)
		elseif alPhase==2 then
			local tgt=Vector3.new(AP_L2.X,hrp.Position.Y,AP_L2.Z)
			if (tgt-hrp.Position).Magnitude<1 then
				hum:Move(Vector3.zero,false);applyMoveVelocity(hrp, 0, 0)
				autoLeftEnabled=false;if alConn then alConn:Disconnect();alConn=nil end
				alPhase=1;if autoLeftSetVisual then autoLeftSetVisual(false) end;if _updateMobileAutoLeft then _updateMobileAutoLeft(false) end
				restoreCarryAfterPath()
				return
			end
			local d=AP_L2-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit
			hum:Move(mv,false);applyMoveVelocity(hrp, mv.X*spd, mv.Z*spd)
		end
	end)
end
function startAutoRight()
	if arConn then arConn:Disconnect() end;arPhase=1
	rememberCarryForPath()
	arConn=RunService.Heartbeat:Connect(function()
		if not autoRightEnabled then return end
		local char=LP.Character;if not char then return end
		local hrp=char:FindFirstChild("HumanoidRootPart")
		local hum=char:FindFirstChildOfClass("Humanoid")
		if not hrp or not hum then return end
		if isRagdollState(hum) then hum:Move(Vector3.zero,false);return end
		local spd=getAutoPathSpeed()
		if arPhase==1 then
			local tgt=Vector3.new(AP_R1.X,hrp.Position.Y,AP_R1.Z)
			if (tgt-hrp.Position).Magnitude<1 then
				arPhase=2
				local d=AP_R2-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit
				hum:Move(mv,false);applyMoveVelocity(hrp, mv.X*spd, mv.Z*spd)
				return
			end
			local d=AP_R1-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit
			hum:Move(mv,false);applyMoveVelocity(hrp, mv.X*spd, mv.Z*spd)
		elseif arPhase==2 then
			local tgt=Vector3.new(AP_R2.X,hrp.Position.Y,AP_R2.Z)
			if (tgt-hrp.Position).Magnitude<1 then
				hum:Move(Vector3.zero,false);applyMoveVelocity(hrp, 0, 0)
				autoRightEnabled=false;if arConn then arConn:Disconnect();arConn=nil end
				arPhase=1;if autoRightSetVisual then autoRightSetVisual(false) end;if _updateMobileAutoRight then _updateMobileAutoRight(false) end
				restoreCarryAfterPath()
				return
			end
			local d=AP_R2-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit
			hum:Move(mv,false);applyMoveVelocity(hrp, mv.X*spd, mv.Z*spd)
		end
	end)
end
function setupSpeedIndicator(char)
	local head=char:WaitForChild("Head",5);if not head then return end
	local bb=Instance.new("BillboardGui",head)
	bb.Size=UDim2.new(0,160,0,44);bb.StudsOffset=Vector3.new(0,3,0);bb.AlwaysOnTop=true
	speedLabel=Instance.new("TextLabel",bb)
	speedLabel.Size=UDim2.new(1,0,0.55,0);speedLabel.BackgroundTransparency=1
	speedLabel.Text="Speed: 0";speedLabel.TextColor3=Color3.fromRGB(160,55,220)
	speedLabel.Font=Enum.Font.GothamBold;speedLabel.TextScaled=true
	speedLabel.TextStrokeTransparency=0;speedLabel.TextStrokeColor3=Color3.fromRGB(0,0,0)
	local discordLabel=Instance.new("ImageLabel",bb)
	discordLabel.Size=UDim2.new(1,0,0.45,0);discordLabel.Position=UDim2.new(0,0,0.55,0)
	discordLabel.BackgroundTransparency=1
	discordLabel.Image="rbxassetid://75548910103458"
	discordLabel.ScaleType=Enum.ScaleType.Fit
	discordLabel.ImageColor3=Color3.new(1,1,1)
end
local antiRagdollV2ResetCooldown = 0
function startAntiRagdoll()
	if Conns.antiRag then
		pcall(function() Conns.antiRag:Disconnect() end)
		Conns.antiRag = nil
	end
	antiRagdollEnabled = true
	antiRagdollV2ResetCooldown = 0
	Conns.antiRag = RunService.Heartbeat:Connect(function()
		if not antiRagdollEnabled then return end
		local char = LP.Character
		if not char then return end
		local hum = char:FindFirstChildOfClass("Humanoid")
		local root = char:FindFirstChild("HumanoidRootPart")
		if not hum or not root then return end
		if hum.Health <= 0 or hum:GetState() == Enum.HumanoidStateType.Dead then return end
		local st = hum:GetState()
		if st == Enum.HumanoidStateType.Physics
			or st == Enum.HumanoidStateType.Ragdoll
			or st == Enum.HumanoidStateType.FallingDown then
			local now = tick()
			if now - antiRagdollV2ResetCooldown <= 0.15 then return end
			antiRagdollV2ResetCooldown = now
			pcall(function()
				if hum:GetState() == Enum.HumanoidStateType.GettingUp then return end
				if hum.Health <= 0 or hum:GetState() == Enum.HumanoidStateType.Dead then return end
				hum:ChangeState(Enum.HumanoidStateType.GettingUp)
				root.Velocity = Vector3.zero
				root.RotVelocity = Vector3.zero
				root.AssemblyLinearVelocity = Vector3.zero
				root.AssemblyAngularVelocity = Vector3.zero
				for _, d in ipairs(char:GetDescendants()) do
					if d:IsA("Motor6D") then d.Enabled = true end
					if d:IsA("Constraint") then d.Enabled = true end
				end
				local cam = workspace.CurrentCamera
				if cam then cam.CameraSubject = hum end
				local pm = LP.PlayerScripts:FindFirstChild("PlayerModule")
				if pm then
					local cm = require(pm:FindFirstChild("ControlModule"))
					if cm then cm:Enable() end
				end
				hum.AutoRotate = true
				hum.PlatformStand = false
				hum.Sit = false
			end)
		end
	end)
end
function stopAntiRagdoll()
	antiRagdollEnabled = false
	antiRagdollV2ResetCooldown = 0
	if Conns.antiRag then
		pcall(function() Conns.antiRag:Disconnect() end)
		Conns.antiRag = nil
	end
end
local infJumpMode = "HOLD"
local infJumpPower = 50
local holdJumpPressed = false
local holdJumpActive = false
local _infJumpLast = 0
local JumpState = { mobilePressed = false, hooked = {} }
function applyInfiniteJumpBoost(boost)
	if not infJumpEnabled then return end
	local char = LP.Character
	if not char then return end
	local root = char:FindFirstChild("HumanoidRootPart")
	local hum = char:FindFirstChildOfClass("Humanoid")
	if not root or not hum or hum.Health <= 0 then return end
	boost = math.clamp(tonumber(boost) or 50, 15, 200)
	local velocity = root.AssemblyLinearVelocity
	pcall(function() root.AssemblyLinearVelocity = Vector3.new(velocity.X, boost, velocity.Z) end)
	pcall(function() root.Velocity = Vector3.new(velocity.X, boost, velocity.Z) end)
	pcall(function() hum.Jump = true end)
end
function doInfJumpOnce()
	if not infJumpEnabled then return end
	if UIS:GetFocusedTextBox() then return end
	local now = os.clock()
	if now - _infJumpLast < 0.08 then return end
	_infJumpLast = now
	applyInfiniteJumpBoost(math.clamp(tonumber(infJumpPower) or 50, 15, 200))
end
UIS.JumpRequest:Connect(function()
	if not infJumpEnabled then return end
	if UIS:GetFocusedTextBox() then return end
	holdJumpPressed = true
	JumpState.mobilePressed = true
	doInfJumpOnce()
	if tostring(infJumpMode):upper() == "HOLD" then
		task.delay(0.1, function()
			if (holdJumpPressed or JumpState.mobilePressed) and infJumpEnabled then
				holdJumpActive = true
				applyInfiniteJumpBoost(infJumpPower)
			end
		end)
	else
		holdJumpPressed = false
		holdJumpActive = false
		JumpState.mobilePressed = false
	end
end)
UIS.InputBegan:Connect(function(input, gp)
	local isControllerJump = input.KeyCode == Enum.KeyCode.ButtonA
	if (gp and not isControllerJump) or UIS:GetFocusedTextBox() then return end
	if input.KeyCode ~= Enum.KeyCode.Space and not isControllerJump then return end
	holdJumpPressed = true
	doInfJumpOnce()
	if tostring(infJumpMode):upper() == "HOLD" then
		task.delay(0.12, function()
			if holdJumpPressed and infJumpEnabled then
				holdJumpActive = true
				applyInfiniteJumpBoost(infJumpPower)
			end
		end)
	else
		holdJumpPressed = false
		holdJumpActive = false
	end
end)
UIS.InputEnded:Connect(function(input)
	if input.KeyCode ~= Enum.KeyCode.Space and input.KeyCode ~= Enum.KeyCode.ButtonA then
		if input.UserInputType == Enum.UserInputType.Touch and JumpState.mobilePressed then
			JumpState.mobilePressed = false
			holdJumpPressed = false
			holdJumpActive = false
		end
		return
	end
	holdJumpPressed = false
	holdJumpActive = false
	JumpState.mobilePressed = false
end)
task.spawn(function()
	local function hookHum(hum)
		if not hum or JumpState.hooked[hum] then return end
		JumpState.hooked[hum] = true
		hum:GetPropertyChangedSignal("Jump"):Connect(function()
			if not infJumpEnabled then return end
			if hum.Jump then
				holdJumpPressed = true
				JumpState.mobilePressed = true
				doInfJumpOnce()
				holdJumpActive = true
			else
				holdJumpPressed = false
				holdJumpActive = false
				JumpState.mobilePressed = false
			end
		end)
	end
	local function onChar(char)
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		if hum then hookHum(hum) end
		if char then
			char.ChildAdded:Connect(function(c)
				if c:IsA("Humanoid") then hookHum(c) end
			end)
		end
	end
	if LP.Character then onChar(LP.Character) end
	LP.CharacterAdded:Connect(onChar)
end)
RunService.Heartbeat:Connect(function()
	if not infJumpEnabled then
		holdJumpActive = false
		return
	end
	if not holdJumpPressed and not JumpState.mobilePressed then return end
	if holdJumpActive and tostring(infJumpMode):upper() == "HOLD" then
		applyInfiniteJumpBoost(math.clamp(tonumber(infJumpPower) or 50, 15, 200))
	end
end)
function startUnwalk()
	local c=LP.Character;if not c then return end
	local hum=c:FindFirstChildOfClass("Humanoid")
	if hum then for _,t in ipairs(hum:GetPlayingAnimationTracks()) do t:Stop() end end
	local anim=c:FindFirstChild("Animate")
	if anim then unwalkSavedAnimate=anim:Clone();anim:Destroy() end
end
function stopUnwalk()
	local c=LP.Character
	if c and unwalkSavedAnimate then unwalkSavedAnimate:Clone().Parent=c;unwalkSavedAnimate=nil end
end
local DROP_ASCEND_DURATION = 0.18
local DROP_ASCEND_SPEED = 150
local dropConn = nil
local dropPausedAutoTP = false
local function getDropFloorY(character, root, humanoid)
	if root.Position.Y <= -7 then return -7 end
	local offset = (humanoid.HipHeight or 2) + root.Size.Y * 0.5 + 0.2
	local blockNames = { "invis", "wall", "trigger", "barrier", "clip", "ghost" }
	local function isBlockedName(inst)
		local cur = inst
		while cur and cur ~= workspace do
			local n = string.lower(cur.Name or "")
			for _, k in ipairs(blockNames) do
				if n:find(k, 1, true) then return true end
			end
			cur = cur.Parent
		end
		return false
	end
	local function shouldSkip(part)
		if part == workspace.Terrain then return false end
		if not part or not part:IsA("BasePart") then return true end
		if not part.CanCollide then return true end
		if (part.Transparency or 0) >= 0.75 then return true end
		if (part.LocalTransparencyModifier or 0) >= 0.75 then return true end
		if isBlockedName(part) then return true end
		return false
	end
	local function rayY(origin)
		local params = RaycastParams.new()
		params.FilterType = Enum.RaycastFilterType.Exclude
		params.IgnoreWater = true
		local filter = { character }
		for _ = 1, 80 do
			params.FilterDescendantsInstances = filter
			local hit = workspace:Raycast(origin, Vector3.new(0, -7 - origin.Y, 0), params)
			if not hit then return nil end
			if shouldSkip(hit.Instance) then
				table.insert(filter, hit.Instance)
			else
				return hit.Position.Y
			end
		end
		return nil
	end
	local base = root.Position
	local spread = math.max(0.75, math.min(2, math.max(root.Size.X, root.Size.Z) * 0.55))
	local offsets = {
		Vector3.zero,
		Vector3.new(spread, 0, 0), Vector3.new(-spread, 0, 0),
		Vector3.new(0, 0, spread), Vector3.new(0, 0, -spread),
		Vector3.new(spread * 0.7, 0, spread * 0.7), Vector3.new(-spread * 0.7, 0, spread * 0.7),
		Vector3.new(spread * 0.7, 0, -spread * 0.7), Vector3.new(-spread * 0.7, 0, -spread * 0.7),
	}
	local best = nil
	for i = 1, #offsets do
		local y = rayY(base + offsets[i] + Vector3.new(0, 0.25, 0))
		if y and (not best or y > best) then best = y end
	end
	if best then
		local target = best + offset
		if root.Position.Y - 0.35 <= target then return nil end
		return math.max(target, -7)
	end
	return -7
end
local function finishDrop()
	dropActive = false
	if dropConn then
		pcall(function() dropConn:Disconnect() end)
		dropConn = nil
	end
	if dropPausedAutoTP then
		dropPausedAutoTP = false
		autoTPEnabled = true
		if setAutoTPVisual then setAutoTPVisual(true) end
		if startAutoTP then startAutoTP() end
	end
end
function runDrop()
	if dropActive then return end
	dropActive = true
	if autoTPEnabled then
		dropPausedAutoTP = true
		if stopAutoTP then stopAutoTP() else autoTPEnabled = false end
		if setAutoTPVisual then setAutoTPVisual(false) end
	else
		dropPausedAutoTP = false
	end
	if autoBatEnabled then
		disableAutoBat()
		if autoBatSetVisual then autoBatSetVisual(false) end
	end
	local character = LP.Character
	if not character then finishDrop(); return end
	local root = character:FindFirstChild("HumanoidRootPart")
	if not root then finishDrop(); return end
	local startTime = tick()
	dropConn = RunService.Heartbeat:Connect(function()
		if not dropActive then finishDrop(); return end
		local hrp = character and character:FindFirstChild("HumanoidRootPart")
		if not hrp then finishDrop(); return end
		if tick() - startTime >= DROP_ASCEND_DURATION then
			if dropConn then pcall(function() dropConn:Disconnect() end); dropConn = nil end
			local hum = character:FindFirstChildOfClass("Humanoid")
			local floorY = hum and getDropFloorY(character, hrp, hum)
			if floorY then
				hrp.CFrame = CFrame.new(hrp.Position.X, floorY, hrp.Position.Z)
				hrp.AssemblyLinearVelocity = Vector3.zero
			end
			finishDrop()
			return
		end
		local vel = hrp.Velocity
		hrp.Velocity = Vector3.new(vel.X, DROP_ASCEND_SPEED, vel.Z)
	end)
end
function doAutoTPDown(force)
	local char=LP.Character;if not char then return end
	local hrp=char:FindFirstChild("HumanoidRootPart");if not hrp then return end
	local hum2=char:FindFirstChildOfClass("Humanoid");if not hum2 then return end
	if not force then
		if hum2.FloorMaterial~=Enum.Material.Air then return end
		if hrp.Position.Y<autoTPHeight then return end
	end
	hrp.CFrame=CFrame.new(hrp.Position.X,-7.00,hrp.Position.Z)
		*CFrame.Angles(0,select(2,hrp.CFrame:ToEulerAnglesYXZ()),0)
	hrp.AssemblyLinearVelocity=Vector3.zero
end
function startAutoTP()
	if autoTPConn then task.cancel(autoTPConn);autoTPConn=nil end
	autoTPConn=task.spawn(function()
		while autoTPEnabled do
			task.wait(0.1)
			pcall(function() doAutoTPDown(false) end)
		end
	end)
end
function stopAutoTP()
	autoTPEnabled=false
	if autoTPConn then task.cancel(autoTPConn);autoTPConn=nil end
end
function runTPFloor()
	pcall(function() doAutoTPDown(true) end)
end
local defLightBrightness,defLightClock,defLightAmbient
function applyAntiLagDerender(obj)
	pcall(function()
		if obj:IsA("Sky") or obj:IsA("Atmosphere") or obj:IsA("Clouds") then return end
		if obj:IsA("Accessory") or obj:IsA("Hat") then
			local myChar = LP.Character
			if myChar and obj:IsDescendantOf(myChar) then return end
			obj:Destroy()
		elseif obj:IsA("BasePart") then
			obj.Material = Enum.Material.Plastic
			obj.Reflectance = 0
			obj.CastShadow = false
			pcall(function()
				obj.TopSurface = Enum.SurfaceType.Smooth
				obj.BottomSurface = Enum.SurfaceType.Smooth
				obj.FrontSurface = Enum.SurfaceType.Smooth
				obj.BackSurface = Enum.SurfaceType.Smooth
				obj.LeftSurface = Enum.SurfaceType.Smooth
				obj.RightSurface = Enum.SurfaceType.Smooth
			end)
		elseif obj:IsA("Decal") or obj:IsA("Texture") then
			obj.Transparency = 0.5
		elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam")
			or obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
			obj.Enabled = false
		elseif obj:IsA("PointLight") or obj:IsA("SpotLight") or obj:IsA("SurfaceLight") then
			obj.Enabled = false
		elseif obj:IsA("SelectionBox") and obj.Name ~= "VyzeESP" then
			obj:Destroy()
		end
	end)
end
function enableAntiLag()
	removeAccessoriesEnabled = true
	antiLagEnabled = true
	defLightBrightness = defLightBrightness or Lighting.Brightness
	defLightClock = defLightClock or Lighting.ClockTime
	defLightAmbient = defLightAmbient or Lighting.OutdoorAmbient
	pcall(function()
		settings().Rendering.QualityLevel = 1
		settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Disabled
	end)
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 1e10
	Lighting.FogStart = 0
	Lighting.Brightness = 1
	Lighting.EnvironmentDiffuseScale = 0
	Lighting.EnvironmentSpecularScale = 0
	Lighting.ShadowSoftness = 0
	Lighting.ExposureCompensation = 0
	pcall(function() Lighting.Technology = Enum.Technology.Compatibility end)
	for _, e in pairs(Lighting:GetChildren()) do
		pcall(function()
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect")
				or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
				e.Enabled = false
			end
		end)
	end
	local pending = workspace:GetDescendants()
	task.spawn(function()
		local count = 0
		for i = 1, #pending do
			if not antiLagEnabled then break end
			applyAntiLagDerender(pending[i])
			count = count + 1
			if count % 200 == 0 then RunService.Heartbeat:Wait() end
		end
	end)
	pcall(function()
		workspace.Terrain.WaterWaveSize = 0
		workspace.Terrain.WaterWaveSpeed = 0
		workspace.Terrain.WaterReflectance = 0
		workspace.Terrain.WaterTransparency = 0
		workspace.Terrain.Decoration = false
	end)
	if antiLagDescConn then antiLagDescConn:Disconnect() end
	antiLagDescConn = workspace.DescendantAdded:Connect(function(obj)
		if obj:IsA("Sky") or obj:IsA("Atmosphere") or obj:IsA("Clouds") then return end
		if removeAccessoriesEnabled then applyAntiLagDerender(obj) end
	end)
end
function disableAntiLag()
	removeAccessoriesEnabled = false
	antiLagEnabled = false
	if antiLagDescConn then antiLagDescConn:Disconnect(); antiLagDescConn = nil end
	pcall(function()
		if defLightBrightness then Lighting.Brightness = defLightBrightness end
		if defLightClock then Lighting.ClockTime = defLightClock end
		if defLightAmbient then Lighting.OutdoorAmbient = defLightAmbient end
		Lighting.ExposureCompensation = 0
	end)
end
local espEnabled = false
local espTracersEnabled = false
local ragdollCountdownEnabled = false
local showE01Warning = false
local fovChangeEnabled = false
local fieldOfViewVal = 80
local headlessEnabled = false
local baseXRayEnabled = false
local setEspTracersVisual, setRagdollCountdownVisual, setE01WarningVisual
local setFovChangeVisual, setHeadlessVisual, setBaseXRayVisual
local setRagdollStealVisual
local espHighlights = {}
local espConn = nil
local setEspVisual = nil
local ESP_COLOR = Color3.fromRGB(160, 55, 220)
local function clearESP()
	for plr, hl in pairs(espHighlights) do
		pcall(function() if hl then hl:Destroy() end end)
		espHighlights[plr] = nil
	end
end
local function updateESP()
	if not espEnabled then
		clearESP()
		return
	end
	local seen = {}
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LP then
			seen[plr] = true
			local char = plr.Character
			local hum = char and char:FindFirstChildOfClass("Humanoid")
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if char and hum and root and hum.Health > 0 then
				local hl = espHighlights[plr]
				if not hl or not hl.Parent or hl.Parent ~= char then
					if hl then pcall(function() hl:Destroy() end) end
					hl = Instance.new("Highlight")
					hl.Name = "VyzeESP"
					hl.FillColor = ESP_COLOR
					hl.FillTransparency = 0.72
					hl.OutlineColor = ESP_COLOR
					hl.OutlineTransparency = 0.05
					hl.Adornee = char
					hl.Parent = char
					espHighlights[plr] = hl
				else
					hl.FillColor = ESP_COLOR
					hl.OutlineColor = ESP_COLOR
				end
			else
				if espHighlights[plr] then
					pcall(function() espHighlights[plr]:Destroy() end)
					espHighlights[plr] = nil
				end
			end
		end
	end
	for plr, hl in pairs(espHighlights) do
		if not seen[plr] then
			pcall(function() if hl then hl:Destroy() end end)
			espHighlights[plr] = nil
		end
	end
end
function enableESP()
	espEnabled = true
	if espConn then return end
	espConn = RunService.Heartbeat:Connect(function()
		updateESP()
	end)
end
function disableESP()
	espEnabled = false
	if espConn then espConn:Disconnect(); espConn = nil end
	clearESP()
end
function findMedusa()
	local c=LP.Character;if not c then return nil end
	for _,t in ipairs(c:GetChildren()) do if t:IsA("Tool") then local n=t.Name:lower();if n:find("medusa") or n:find("head") or n:find("stone") then return t end end end
	local bp=LP:FindFirstChild("Backpack")
	if bp then for _,t in ipairs(bp:GetChildren()) do if t:IsA("Tool") then local n=t.Name:lower();if n:find("medusa") or n:find("head") or n:find("stone") then return t end end end end
	return nil
end
function useMedusaCounter()
	if medusaDebounce then return end;if tick()-medusaLastUsed<MEDUSA_COOLDOWN then return end
	local c=LP.Character;if not c then return end;medusaDebounce=true
	local med=findMedusa();if not med then medusaDebounce=false;return end
	if med.Parent~=c then local hum2=c:FindFirstChildOfClass("Humanoid");if hum2 then hum2:EquipTool(med) end end
	pcall(function() med:Activate() end);medusaLastUsed=tick();medusaDebounce=false
end
function onAnchorChanged(part)
	return part:GetPropertyChangedSignal("Anchored"):Connect(function()
		if part.Anchored and part.Transparency==1 then useMedusaCounter() end
	end)
end
function setupMedusa(char)
	for _,c in pairs(Conns.anchor) do pcall(function() c:Disconnect() end) end;Conns.anchor={}
	if not char then return end
	for _,part in ipairs(char:GetDescendants()) do if part:IsA("BasePart") then table.insert(Conns.anchor,onAnchorChanged(part)) end end
	table.insert(Conns.anchor,char.DescendantAdded:Connect(function(part)
		if part:IsA("BasePart") then table.insert(Conns.anchor,onAnchorChanged(part)) end
	end))
end
function stopMedusaCounter()
	for _,c in pairs(Conns.anchor) do pcall(function() c:Disconnect() end) end;Conns.anchor={}
end
local BAT_COUNTER_SLAP_LIST={"Bat","Slap","Iron Slap","Gold Slap","Diamond Slap","Emerald Slap","Ruby Slap","Dark Matter Slap","Flame Slap","Nuclear Slap","Galaxy Slap","Glitched Slap"}
function findBatForCounter()
	local c=LP.Character;if not c then return nil end
	local bp=LP:FindFirstChildOfClass("Backpack")
	for _,name in ipairs(BAT_COUNTER_SLAP_LIST) do
		local t=c:FindFirstChild(name) or (bp and bp:FindFirstChild(name));if t then return t end
	end
	for _,ch in ipairs(c:GetChildren()) do if ch:IsA("Tool") and ch.Name:lower():find("bat") then return ch end end
	if bp then for _,ch in ipairs(bp:GetChildren()) do if ch:IsA("Tool") and ch.Name:lower():find("bat") then return ch end end end
	return nil
end
function swingBatForCounter(bat,char)
	local hum2=char:FindFirstChildOfClass("Humanoid")
	if bat.Parent~=char then if hum2 then pcall(function() hum2:EquipTool(bat) end) end;task.wait(0.05) end
	local remote=bat:FindFirstChildOfClass("RemoteEvent") or bat:FindFirstChildOfClass("RemoteFunction")
	if remote and remote:IsA("RemoteEvent") then
		pcall(function() remote:FireServer() end);task.wait(0.15);pcall(function() remote:FireServer() end)
	else pcall(function() bat:Activate() end);task.wait(0.15);pcall(function() bat:Activate() end) end
end
startBatCounter=function()
	if Conns.batCounter then return end
	Conns.batCounter=RunService.Heartbeat:Connect(function()
		if not batCounterEnabled then return end
		if batCounterDebounce then return end
		local char=LP.Character;if not char then return end
		local hum2=char:FindFirstChildOfClass("Humanoid");if not hum2 then return end
		if hum2.Health <= 0 or hum2:GetState() == Enum.HumanoidStateType.Dead then return end
		local st=hum2:GetState()
		if st==Enum.HumanoidStateType.Physics or st==Enum.HumanoidStateType.Ragdoll or st==Enum.HumanoidStateType.FallingDown then
			batCounterDebounce=true
			task.spawn(function()
				task.wait(0.15)
				local bat=findBatForCounter()
				if bat then swingBatForCounter(bat,char) end
				task.wait(0.3)
				batCounterDebounce=false
			end)
		end
	end)
end
stopBatCounter=function()
	if Conns.batCounter then Conns.batCounter:Disconnect();Conns.batCounter=nil end
	batCounterDebounce=false
end
function getAutoBatTarget()
	local root=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
	if not root then return nil end
	local now=tick()
	if now-_autoBatLastScan<=0.1 and _autoBatTarget and _autoBatTarget.Parent then
		local hum=_autoBatTarget.Parent:FindFirstChildOfClass("Humanoid")
		if hum and hum.Health>0 then return _autoBatTarget end
	end
	_autoBatLastScan=now
	_autoBatTarget=nil
	local closest,minDist=nil,math.huge
	for _,plr in ipairs(Players:GetPlayers()) do
		if plr~=LP and plr.Character then
			local tRoot=plr.Character:FindFirstChild("HumanoidRootPart")
			local hum=plr.Character:FindFirstChildOfClass("Humanoid")
			if tRoot and hum and hum.Health>0 then
				local dist=(tRoot.Position-root.Position).Magnitude
				if dist<minDist then minDist=dist;closest=tRoot end
			end
		end
	end
	_autoBatTarget=closest
	return _autoBatTarget
end
resetAutoBatMotion=function()
	local char=LP.Character
	local hrp=char and char:FindFirstChild("HumanoidRootPart")
	local hum=char and char:FindFirstChildOfClass("Humanoid")
	if hrp then hrp.AssemblyLinearVelocity=hrp.AssemblyLinearVelocity*0.3;hrp.AssemblyAngularVelocity=Vector3.zero end
	if hum then hum.AutoRotate=true end
end
function findAutoBatTool()
	local character = LP.Character
	if not character then return nil end
	for _, child in ipairs(character:GetChildren()) do
		if child:IsA("Tool") and child.Name:lower():find("bat") then return child end
	end
	local backpack = LP:FindFirstChild("Backpack")
	if backpack then
		for _, child in ipairs(backpack:GetChildren()) do
			if child:IsA("Tool") and child.Name:lower():find("bat") then return child end
		end
	end
	return nil
end
local BatVTrack = { records = {} }
local _batVtLastClean = 0
local _batHittingCooldown = false
local BAT_CFG = {
	aimHeight = 3.7, yBoost = 19.5, yVelY = 0.8, minJumpY = 13,
	yClamp = Vector2.new(-70, 110), lerpAlpha = 0.8, predictLead = 0.14,
	lookAheadOffset = 0.3, tiltSpeed = 42, swingCooldown = 0.08,
	velTrackClamp = 150, velSpoofMag = 250, velSpoofDiffBase = 80,
	velTrackSamples = 6, velSmooth = 0.5, swingDist = 14,
}
local function batGetTrueVelocity(root, now)
	if not root or not root.Parent then return Vector3.zero end
	local rec = BatVTrack.records[root]
	if not rec then
		rec = { s = {}, vel = Vector3.zero, ready = false }
		BatVTrack.records[root] = rec
	end
	local pos = root.Position
	local last = rec.s[#rec.s]
	if last then
		local dt = now - last.t
		if dt > 1/240 and dt < 0.2 then
			local raw = (pos - last.pos) / dt
			local c = BAT_CFG.velTrackClamp
			local clamped = Vector3.new(
				math.clamp(raw.X, -c, c),
				math.clamp(raw.Y, -c, c),
				math.clamp(raw.Z, -c, c)
			)
			if rec.ready then
				rec.vel = rec.vel:Lerp(clamped, BAT_CFG.velSmooth)
			else
				rec.vel = clamped
				rec.ready = true
			end
		end
	end
	table.insert(rec.s, { pos = pos, t = now })
	while #rec.s > BAT_CFG.velTrackSamples do table.remove(rec.s, 1) end
	return rec.vel
end
local function batReadVelocity(target, now)
	local raw = target.AssemblyLinearVelocity
	local tracked = batGetTrueVelocity(target, now)
	if not tracked or tracked.Magnitude < 0.5 then
		if raw.Magnitude > 400 then return Vector3.zero end
		return raw
	end
	local diff = (raw - tracked).Magnitude
	local rawMag, trackMag = raw.Magnitude, tracked.Magnitude
	if rawMag > BAT_CFG.velSpoofMag then return tracked end
	if diff > math.max(BAT_CFG.velSpoofDiffBase, trackMag * 1.5) then return tracked end
	return raw
end
local function batVTrackCleanup(now)
	if now - _batVtLastClean < 5 then return end
	_batVtLastClean = now
	for r in pairs(BatVTrack.records) do
		if not r.Parent then BatVTrack.records[r] = nil end
	end
end
local function batSwingBat(char, hum)
	if _batHittingCooldown then return end
	_batHittingCooldown = true
	pcall(function()
		local tool = findAutoBatTool()
		if tool then
			if tool.Parent ~= char and hum then pcall(function() hum:EquipTool(tool) end) end
			local remote = tool:FindFirstChildOfClass("RemoteEvent")
			if remote then
				pcall(function() remote:FireServer() end)
			else
				pcall(function() tool:Activate() end)
			end
		end
	end)
	task.delay(BAT_CFG.swingCooldown, function() _batHittingCooldown = false end)
end
function startAutoBatLoop()
	if autoBatConn then return end
	autoBatConn = RunService.RenderStepped:Connect(function()
		if not autoBatEnabled then return end
		local char = LP.Character
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		local root = char and char:FindFirstChild("HumanoidRootPart")
		if not root or not hum then return end
		if not char:FindFirstChildOfClass("Tool") then
			local tool = findAutoBatTool()
			if tool then pcall(function() hum:EquipTool(tool) end) end
		end
		local target = getAutoBatTarget()
		if not target then
			hum.AutoRotate = true
			root.AssemblyAngularVelocity = Vector3.zero
			_autoBatHadTarget = false
			if autoSwingEnabled then
				local tool = char:FindFirstChildOfClass("Tool")
				if tool and tool.Name:lower():find("bat") then pcall(function() tool:Activate() end) end
			end
			return
		end
		_autoBatHadTarget = true
		hum.AutoRotate = false
		local now = os.clock()
		batVTrackCleanup(now)
		local targetVel = batReadVelocity(target, now)
		local myPos = root.Position
		local targetPos = target.Position
		local predictPos = targetPos + targetVel * BAT_CFG.predictLead
		predictPos = predictPos + target.CFrame.LookVector * BAT_CFG.lookAheadOffset
		local direction = predictPos - myPos
		local flat = Vector3.new(direction.X, 0, direction.Z)
		if flat.Magnitude < 0.001 then return end
		local flatDir = flat.Unit
		local chaseSpeed = getAutoBatSpeed()
		local desiredHeight = targetPos.Y + BAT_CFG.aimHeight
		local yVel = (desiredHeight - myPos.Y) * BAT_CFG.yBoost + targetVel.Y * BAT_CFG.yVelY
		if hum.FloorMaterial ~= Enum.Material.Air then
			yVel = math.max(yVel, BAT_CFG.minJumpY)
		end
		yVel = math.clamp(yVel, BAT_CFG.yClamp.X, BAT_CFG.yClamp.Y)
		local desiredVel = Vector3.new(flatDir.X * chaseSpeed, yVel, flatDir.Z * chaseSpeed)
		local lerped = root.AssemblyLinearVelocity:Lerp(desiredVel, BAT_CFG.lerpAlpha)
		applyMoveVelocityFull(root, lerped.X, lerped.Y, lerped.Z)
		local speed3 = targetVel.Magnitude
		local predictTime = math.clamp(speed3 / 150, 0.05, 0.2)
		local predictedPos = targetPos + targetVel * predictTime
		local toPredict = predictedPos - myPos
		if toPredict.Magnitude > 0.1 then
			local goalCF = CFrame.lookAt(myPos, predictedPos)
			local curCF = root.CFrame
			local diffCF = curCF:Inverse() * goalCF
			local rx, ry, rz = diffCF:ToEulerAnglesXYZ()
			rx = math.clamp(rx, -2.5, 2.5)
			ry = math.clamp(ry, -2.5, 2.5)
			rz = math.clamp(rz, -2.5, 2.5)
			root.AssemblyAngularVelocity = root.CFrame:VectorToWorldSpace(
				Vector3.new(rx * BAT_CFG.tiltSpeed, ry * BAT_CFG.tiltSpeed, rz * BAT_CFG.tiltSpeed)
			)
		end
		local dist = (targetPos - myPos).Magnitude
		if dist < BAT_CFG.swingDist or autoSwingEnabled then
			batSwingBat(char, hum)
		end
	end)
end
do
	local mirrorTrack = {}
	local function mirrorTPSelf(root)
		if not root or not root.Parent then return end
		local _, yaw = root.CFrame:ToEulerAnglesYXZ()
		root.CFrame = CFrame.new(root.Position.X, -7, root.Position.Z) * CFrame.Angles(0, yaw, 0)
		root.Velocity = Vector3.zero
		pcall(function() root.AssemblyLinearVelocity = Vector3.zero end)
	end
	RunService.Heartbeat:Connect(function()
		if not (autoBatEnabled and mirrorTPEnabled) then
			if next(mirrorTrack) then mirrorTrack = {} end
			return
		end
		local char = LP.Character
		local root = char and char:FindFirstChild("HumanoidRootPart")
		if not root then return end
		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= LP and player.Character then
				local tRoot = player.Character:FindFirstChild("HumanoidRootPart")
				local tHum = player.Character:FindFirstChildOfClass("Humanoid")
				if tRoot and tHum and tHum.Health > 0 then
					local dx = tRoot.Position.X - root.Position.X
					local dz = tRoot.Position.Z - root.Position.Z
					if dx * dx + dz * dz <= 64 then
						local y = tRoot.Position.Y
						local data = mirrorTrack[tRoot]
						if data then
							local drop = data.prevY - y
							data.prevY = y
							if drop >= 3 then
								mirrorTPSelf(root)
							end
						else
							mirrorTrack[tRoot] = { prevY = y }
						end
					else
						mirrorTrack[tRoot] = nil
					end
				end
			end
		end
	end)
end
local _autoTPWasEnabled=false
function enableAutoBat()
	if autoLeftEnabled then autoLeftEnabled=false;if autoLeftSetVisual then autoLeftSetVisual(false) end;stopAutoLeft() end
	if autoRightEnabled then autoRightEnabled=false;if autoRightSetVisual then autoRightSetVisual(false) end;stopAutoRight() end
	if autoTPEnabled then _autoTPWasEnabled=true;stopAutoTP();if setAutoTPVisual then setAutoTPVisual(false) end else _autoTPWasEnabled=false end
	autoBatEquippedThisRun=false
	_autoBatHadTarget=false
	_antiBatBypassPredictionData={}
	autoBatEnabled=true
	startAutoBatLoop()
end
function disableAutoBat()
	autoBatEnabled=false
	autoBatEquippedThisRun=false
	_autoBatHadTarget=false
	_antiBatBypassPredictionData={}
	BatVTrack.records = {}
	_batHittingCooldown = false
	if autoBatConn then autoBatConn:Disconnect(); autoBatConn=nil end
	local char=LP.Character
	if char then
		local hum2=char:FindFirstChildOfClass("Humanoid")
		local root=char:FindFirstChild("HumanoidRootPart")
		if hum2 then
			hum2.AutoRotate=true
			pcall(function() hum2:ChangeState(Enum.HumanoidStateType.GettingUp) end)
		end
		if root then
			pcall(function()
				root.AssemblyAngularVelocity = Vector3.zero
			end)
		end
	end
	if resetAutoBatMotion then resetAutoBatMotion() end
	if _autoTPWasEnabled then
		_autoTPWasEnabled=false;autoTPEnabled=true
		if setAutoTPVisual then setAutoTPVisual(true) end;startAutoTP()
	end
end
function queueAutoLeftStart()
	autoLeftEnabled=true
	if autoRightEnabled then autoRightEnabled=false;if autoRightSetVisual then autoRightSetVisual(false) end;stopAutoRight() end
	if autoBatEnabled then disableAutoBat();if autoBatSetVisual then autoBatSetVisual(false) end end
	startAutoLeft()
end
function queueAutoRightStart()
	autoRightEnabled=true
	if autoLeftEnabled then autoLeftEnabled=false;if autoLeftSetVisual then autoLeftSetVisual(false) end;stopAutoLeft() end
	if autoBatEnabled then disableAutoBat();if autoBatSetVisual then autoBatSetVisual(false) end end
	startAutoRight()
end
function queueAutoBatStart()
	if autoLeftEnabled then autoLeftEnabled=false;if autoLeftSetVisual then autoLeftSetVisual(false) end;stopAutoLeft() end
	if autoRightEnabled then autoRightEnabled=false;if autoRightSetVisual then autoRightSetVisual(false) end;stopAutoRight() end
	enableAutoBat()
end
LP.CharacterAdded:Connect(function(char)
	task.wait(0.5)
	setupSpeedIndicator(char)
	pcall(setupVelocitySpoof)
	pcall(restartMovement)
	if antiRagdollEnabled then
		startAntiRagdoll()
	end
	if medusaCounterEnabled then setupMedusa(char) end
	if batCounterEnabled then startBatCounter() end
	if autoBatEnabled then
		task.defer(function()
			if autoBatEnabled then startAutoBatLoop() end
		end)
	end
	if unwalkEnabled then task.wait(0.5);startUnwalk() end
end)
if LP.Character then setupSpeedIndicator(LP.Character) end
function saveConfig()
	local function ks(e) return {kb=e.kb and e.kb.Name or nil,gp=e.gp and e.gp.Name or nil} end
	for _,b in ipairs(mobileButtonsList) do
		if b.frame and b.id then
			mobileBtnPositions[b.id] = {x = b.frame.Position.X.Offset, y = b.frame.Position.Y.Offset}
		end
	end
	local guiPos = nil
	if mainGuiFrame then
		guiPos = {x = mainGuiFrame.Position.X.Offset, y = mainGuiFrame.Position.Y.Offset, sx = mainGuiFrame.Position.X.Scale, sy = mainGuiFrame.Position.Y.Scale}
	end
	local progressBarPos = nil
	if progressBarFrame then
		progressBarPos = {
			x = progressBarFrame.Position.X.Offset,
			y = progressBarFrame.Position.Y.Offset,
			sx = progressBarFrame.Position.X.Scale,
			sy = progressBarFrame.Position.Y.Scale
		}
	end
	local miniBtnPos = nil
	if openMiniBtn then
		miniBtnPos = {
			x = openMiniBtn.Position.X.Offset,
			y = openMiniBtn.Position.Y.Offset,
			sx = openMiniBtn.Position.X.Scale,
			sy = openMiniBtn.Position.Y.Scale
		}
	end
	local cfg={
		normalSpeed=NS,carrySpeed=CS,
		dropBrainrotKey=ks(KB.DropBrainrot),autoLeftKey=ks(KB.AutoLeft),autoRightKey=ks(KB.AutoRight),
		autoBatKey=ks(KB.AutoBat),laggerToggleKey=ks(KB.LaggerToggle),tpFloorKey=ks(KB.TPFloor),instaResetKey=ks(KB.InstaReset),guiHideKey=ks(KB.GuiHide),
		speedToggleKey=ks(KB.SpeedToggle),
		grabRadius=Steal.StealRadius,stealDuration=Steal.StealDuration,
		antiRagdoll=antiRagdollEnabled,autoStealEnabled=Steal.AutoStealEnabled,
		autoCarrySpeedEnabled=autoCarrySpeedEnabled==true,
		infiniteJump=infJumpEnabled,medusaCounter=medusaCounterEnabled,
		batCounter=batCounterEnabled,
		carryMode=speedMode,laggerMode=laggerToggled,laggerCarryMode=laggerPhase==2,laggerSpeed=LAGGER_SPEED,laggerCarrySpeed=LAGGER_CARRY_SPEED,
		autoBat=autoBatEnabled,autoSwing=autoSwingEnabled,mirrorTP=mirrorTPEnabled,
		unwalkEnabled=unwalkEnabled,
		antiLag=antiLagEnabled,espEnabled=espEnabled==true,
		espTracersEnabled=espTracersEnabled==true,ragdollCountdownEnabled=ragdollCountdownEnabled==true,
		showE01Warning=showE01Warning==true,fovChangeEnabled=fovChangeEnabled==true,fieldOfViewVal=fieldOfViewVal,
		headlessEnabled=headlessEnabled==true,baseXRayEnabled=baseXRayEnabled==true,
		ragdollStealEnabled=ragdollStealEnabled==true,
		autoTPEnabled=autoTPEnabled,autoTPHeight=autoTPHeight,
		guiLocked=guiLocked,guiSizeScale=guiSizeScale,guiPos=guiPos,
		progressBarPos=progressBarPos,miniBtnPos=miniBtnPos,
		mobileBtnSize=mobileBtnSize,mobileButtonsHidden=mobileButtonsHidden,mobileButtonsLocked=mobileButtonsLocked,
		mobileBtnPositions=mobileBtnPositions,streamMode=streamMode
	}
	if writefile then pcall(function() writefile("vyzeCC.json",HS:JSONEncode(cfg)) end) end
end
task.spawn(function() while task.wait(5) do saveConfig() end end)
local setInstaGrab,setInfJumpVisual,setAntiRagVisual,setMedusaVisual
local setUnwalkVisual,setAntiLagVisual,setAutoSwingVisual
local normalBox,carryBox,laggerBox,laggerCarryBox,radInput,autoTPHeightBox
function refreshSpeedModeLabel()
	if modeValLbl then modeValLbl.Text = getCurrentModeName() end
	updateSpeedLabelText()
end
function syncMobileModeButtons()
	if _updateMobileCarry then _updateMobileCarry(speedMode and not laggerToggled) end
	if _updateMobileLagger then _updateMobileLagger(laggerToggled and laggerPhase == 1) end
	if _updateMobileLaggerCarry then _updateMobileLaggerCarry(laggerToggled and laggerPhase == 2) end
end
function toggleCarryMode()
	if laggerToggled then
		laggerToggled=false
		laggerPhase=0
		speedMode=true
	else
		speedMode=not speedMode
	end
	refreshSpeedModeLabel()
	syncMobileModeButtons()
end
function setCarryMode(on)
	if on then
		laggerToggled=false
		laggerPhase=0
		speedMode=true
	else
		speedMode=false
	end
	refreshSpeedModeLabel()
	syncMobileModeButtons()
end
function toggleLaggerMode()
	if laggerToggled and laggerPhase == 1 then
		laggerToggled=false
		laggerPhase=0
		speedMode=false
	else
		speedMode=false
		laggerToggled=true
		laggerPhase=1
	end
	refreshSpeedModeLabel()
	syncMobileModeButtons()
end
function setLaggerMode(on)
	if on then
		speedMode=false
		laggerToggled=true
		laggerPhase=1
	else
		if laggerPhase == 1 then
			laggerToggled=false
			laggerPhase=0
		end
	end
	refreshSpeedModeLabel()
	syncMobileModeButtons()
end
function setLaggerCarryMode(on)
	if on then
		speedMode=false
		laggerToggled=true
		laggerPhase=2
	else
		if laggerPhase == 2 then
			laggerToggled=false
			laggerPhase=0
		end
	end
	refreshSpeedModeLabel()
	syncMobileModeButtons()
end
local function getCurrentSpeedModeName()
	if laggerToggled then
		return (laggerPhase == 2) and "Lagger Carry" or "Lagger"
	elseif speedMode then
		return "Carry"
	end
	return "Normal"
end
local function isCarryName(name)
	local n = tostring(name or ""):lower()
	return n:find("brainrot") or n:find("animal") or n:find("carry")
		or n:find("grab") or n:find("steal") or n:find("hold")
end
local function isIgnoredCarryTool(name)
	local n = tostring(name or ""):lower()
	return n:find("bat") or n:find("slap") or n:find("medusa")
		or n:find("head") or n:find("stone")
end
local function isCarryingBrainrot(char)
	if not char then return false end
	for _, name in ipairs({"Carrying", "IsCarrying", "Grabbed", "Holding", "StealHold", "HasGrab"}) do
		local v = char:FindFirstChild(name, true)
		if v then
			if v:IsA("BoolValue") and v.Value then return true end
			if v:IsA("ObjectValue") and v.Value then return true end
			if v:IsA("StringValue") and v.Value ~= "" then return true end
		end
	end
	for _, child in ipairs(char:GetChildren()) do
		if child:IsA("Model") and child:FindFirstChildWhichIsA("BasePart", true) then
			if child:FindFirstChildOfClass("Humanoid") and child:FindFirstChild("HumanoidRootPart") then
				return true
			end
			if isCarryName(child.Name) then return true end
		elseif child:IsA("Tool") and not isIgnoredCarryTool(child.Name) then
			return true
		end
	end
	return false
end
local function enableCarrySpeedForSteal()
	_waitingForCarryPickup = false
	_carryPickupWatchUntil = 0
	if not _autoCarryFromSteal then
		_autoCarryReturnMode = getCurrentSpeedModeName()
	end
	_autoCarryFromSteal = true
	_autoCarryGraceUntil = tick() + 0.75
	local wasLagger = (_autoCarryReturnMode == "Lagger" or _autoCarryReturnMode == "Lagger Carry"
		or getCurrentSpeedModeName() == "Lagger" or getCurrentSpeedModeName() == "Lagger Carry")
	if wasLagger then
		setLaggerCarryMode(true)
	else
		setCarryMode(true)
	end
	pcall(saveConfig)
end
local function disableAutoCarrySpeed()
	if not _autoCarryFromSteal and not _waitingForCarryPickup then return end
	local wasAutoApplied = _autoCarryFromSteal == true
	local returnMode = _autoCarryReturnMode
	_autoCarryFromSteal = false
	_waitingForCarryPickup = false
	_autoCarryGraceUntil = 0
	_carryPickupWatchUntil = 0
	_autoCarryReturnMode = nil
	if not wasAutoApplied then return end
	if returnMode == "Lagger" or returnMode == "Lagger Carry" then
		setLaggerMode(true)
	elseif returnMode == "Carry" then
		setCarryMode(true)
	else
		setCarryMode(false)
		if laggerToggled then setLaggerMode(false) end
		speedMode = false
		laggerToggled = false
		laggerPhase = 0
		refreshSpeedModeLabel()
		syncMobileModeButtons()
	end
	pcall(saveConfig)
end
local function startAutoCarryPickupWatch(seconds)
	if autoCarrySpeedEnabled ~= true then return end
	_waitingForCarryPickup = true
	_carryPickupWatchUntil = tick() + (seconds or 1.25)
end
RunService.RenderStepped:Connect(function()
	if autoCarrySpeedEnabled ~= true then
		disableAutoCarrySpeed()
		return
	end
	local char = LP.Character
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	local root = char and char:FindFirstChild("HumanoidRootPart")
	if not char or not hum or not root then
		disableAutoCarrySpeed()
		_stealAttrWasActive = false
		return
	end
	local st = hum:GetState()
	local gotHit = st == Enum.HumanoidStateType.Physics
		or st == Enum.HumanoidStateType.Ragdoll
		or st == Enum.HumanoidStateType.FallingDown
	local stealingAttr = false
	pcall(function() stealingAttr = LP:GetAttribute("Stealing") == true end)
	local carryingBrainrot = isCarryingBrainrot(char)
	if stealingAttr and not _stealAttrWasActive then
		_stealAttrWasActive = true
		enableCarrySpeedForSteal()
	elseif not stealingAttr then
		_stealAttrWasActive = false
	end
	if _waitingForCarryPickup then
		if gotHit or tick() > (_carryPickupWatchUntil or 0) then
			_waitingForCarryPickup = false
			_carryPickupWatchUntil = 0
		elseif carryingBrainrot then
			enableCarrySpeedForSteal()
		end
	end
	if carryingBrainrot and not _autoCarryFromSteal then
		enableCarrySpeedForSteal()
	end
	if _autoCarryFromSteal then
		local graceDone = tick() > (_autoCarryGraceUntil or 0)
		if gotHit or (graceDone and not carryingBrainrot and not stealingAttr) then
			disableAutoCarrySpeed()
		end
	end
end)
_G.AutoCarrySpeed = {
	IsCarryingBrainrot = isCarryingBrainrot,
	Enable = enableCarrySpeedForSteal,
	Disable = disableAutoCarrySpeed,
	WatchPickup = startAutoCarryPickupWatch,
}
local mobilePanel = nil
function applyMobileBtnSize()
	local s = mobileBtnSize
	local radius = math.clamp(math.floor(s * 0.22), 10, 22)
	for _,b in ipairs(mobileButtonsList) do
		if b.frame then
			b.frame.Size = UDim2.new(0, s, 0, s)
			local corner = b.frame:FindFirstChildOfClass("UICorner")
			if corner then corner.CornerRadius = UDim.new(0, radius) end
			if b.btn then b.btn.TextSize = math.clamp(math.floor(s * 0.17), 9, 16) end
		end
	end
end
function setMobileButtonsVisible(vis)
	mobileButtonsHidden = not vis
	for _,b in ipairs(mobileButtonsList) do
		if b.frame then b.frame.Visible = vis end
	end
end
function resetMobileButtonsPosition()
	mobileBtnPositions = {}
	for _,b in ipairs(mobileButtonsList) do
		if b.frame and b.id then
			local pos = DEFAULT_MOBILE_POS[b.id] or {x = -100, y = 0}
			b.frame.Position = UDim2.new(1, pos.x, 0.5, pos.y)
			mobileBtnPositions[b.id] = {x = pos.x, y = pos.y}
		end
	end
	saveConfig()
end
function makeDragLocked(frame, isLockedFn, onDragEnd)
	local dn, ds, sp, di = false, nil, nil, nil
	frame.InputBegan:Connect(function(i)
		if isLockedFn and isLockedFn() then return end
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
			dn = true; ds = i.Position; sp = frame.Position
			i.Changed:Connect(function()
				if i.UserInputState == Enum.UserInputState.End then
					dn = false
					if onDragEnd then onDragEnd() end
				end
			end)
		end
	end)
	frame.InputChanged:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then di = i end
	end)
	UIS.InputChanged:Connect(function(i)
		if i == di and dn then
			if isLockedFn and isLockedFn() then dn = false; return end
			local nX = sp.X.Offset + (i.Position.X - ds.X)
			local nY = sp.Y.Offset + (i.Position.Y - ds.Y)
			frame.Position = UDim2.new(sp.X.Scale, nX, sp.Y.Scale, nY)
		end
	end)
end
function createMobilePanel()
	if mobilePanel then return end
	local gui = Instance.new("ScreenGui")
	gui.Name = "VyzeCCMobile"
	gui.ResetOnSpawn = false
	gui.DisplayOrder = 15
	gui.IgnoreGuiInset = true
	pcall(function() gui.Parent = game:GetService("CoreGui") end)
	if not gui.Parent then gui.Parent = LP:WaitForChild("PlayerGui") end
	mobileButtonsList = {}
	local function createButton(id, text, isToggle, callback, initialActive)
		local pos = mobileBtnPositions[id] or DEFAULT_MOBILE_POS[id] or {x = -100, y = 0}
		local s = mobileBtnSize
		local radius = math.clamp(math.floor(s * 0.22), 10, 22)
		local container = Instance.new("Frame")
		container.Name = id
		container.Size = UDim2.new(0, s, 0, s)
		container.Position = UDim2.new(1, pos.x, 0.5, pos.y)
		container.BackgroundColor3 = Color3.fromRGB(0,0,0)
		container.BorderSizePixel = 0
		container.Visible = not mobileButtonsHidden
		container.Active = true
		container.Parent = gui
		Instance.new("UICorner", container).CornerRadius = UDim.new(0, radius)
		local btn = Instance.new("TextButton")
		btn.Size = UDim2.new(1,0,1,0)
		btn.BackgroundTransparency = 1
		btn.Text = text
		btn.TextColor3 = Color3.fromRGB(255,255,255)
		btn.Font = Enum.Font.GothamBold
		btn.TextSize = math.clamp(math.floor(s * 0.17), 9, 16)
		btn.TextWrapped = true
		btn.TextScaled = false
		btn.AutoButtonColor = false
		btn.Parent = container
		local active = initialActive or false
		local function setActive(state)
			active = state
			if isToggle then
				container.BackgroundColor3 = active and Color3.fromRGB(160,55,220) or Color3.fromRGB(0,0,0)
			end
		end
		setActive(active)
		local pressActive = false
		local didDrag = false
		local dragStart, startPos
		btn.InputBegan:Connect(function(i)
			if i.UserInputType ~= Enum.UserInputType.MouseButton1 and i.UserInputType ~= Enum.UserInputType.Touch then return end
			pressActive = true
			didDrag = false
			dragStart = i.Position
			startPos = container.Position
			i.Changed:Connect(function()
				if i.UserInputState == Enum.UserInputState.End then
					if pressActive and didDrag then
						mobileBtnPositions[id] = {x = container.Position.X.Offset, y = container.Position.Y.Offset}
						saveConfig()
					end
					pressActive = false
				end
			end)
		end)
		UIS.InputChanged:Connect(function(i)
			if not pressActive or mobileButtonsLocked then return end
			if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then
				local delta = i.Position - dragStart
				if not didDrag and (math.abs(delta.X) > 6 or math.abs(delta.Y) > 6) then
					didDrag = true
				end
				if didDrag then
					container.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				end
			end
		end)
		btn.MouseButton1Click:Connect(function()
			if didDrag then return end
			if isToggle then
				local newState = not active
				setActive(newState)
				if callback then callback(newState, setActive) end
			else
				container.BackgroundColor3 = Color3.fromRGB(160,55,220)
				task.delay(0.15, function()
					if container and container.Parent then
						container.BackgroundColor3 = Color3.fromRGB(0,0,0)
					end
				end)
				if callback then callback(setActive) end
			end
		end)
		local entry = {frame = container, btn = btn, id = id, setActive = setActive, isActive = function() return active end}
		table.insert(mobileButtonsList, entry)
		return entry
	end
	local tpBtn = createButton("tpDown", "TP\nDOWN", false, function()
		runTPFloor()
	end, false)
	local autoLeftBtn = createButton("autoLeft", "AUTO\nLEFT", true, function(state, setActive)
		autoLeftEnabled = state
		if autoLeftEnabled then queueAutoLeftStart() else stopAutoLeft() end
		if autoLeftSetVisual then autoLeftSetVisual(autoLeftEnabled) end
		saveConfig()
	end, autoLeftEnabled)
	local autoRightBtn = createButton("autoRight", "AUTO\nRIGHT", true, function(state, setActive)
		autoRightEnabled = state
		if autoRightEnabled then queueAutoRightStart() else stopAutoRight() end
		if autoRightSetVisual then autoRightSetVisual(autoRightEnabled) end
		saveConfig()
	end, autoRightEnabled)
	local dropBtn = createButton("dropBr", "DROP\nBR", false, function()
		runDrop()
	end, false)
	local carrySpeedBtn = createButton("carrySpd", "CARRY\nSPD", true, function(state, setActive)
		setCarryMode(state)
		setActive(speedMode and not laggerToggled)
		saveConfig()
	end, speedMode and not laggerToggled)
	local autoBatBtn = createButton("autoBat", "AUTO\nBAT", true, function(state, setActive)
		autoBatEnabled = state
		if autoBatEnabled then queueAutoBatStart() else disableAutoBat() end
		if autoBatSetVisual then autoBatSetVisual(autoBatEnabled) end
		saveConfig()
	end, autoBatEnabled)
	local instaResetBtn = createButton("instaReset", "INSTANT\nRESET", false, function()
		cursedInstaReset()
	end, false)
	local laggerCarryBtn = createButton("laggerCarry", "LAGGER\nCARRY", true, function(state, setActive)
		setLaggerCarryMode(state)
		setActive(laggerToggled and laggerPhase == 2)
		saveConfig()
	end, laggerToggled and laggerPhase == 2)
	local laggerNormalBtn = createButton("laggerMode", "LAGGER\nMODE", true, function(state, setActive)
		setLaggerMode(state)
		setActive(laggerToggled and laggerPhase == 1)
		saveConfig()
	end, laggerToggled and laggerPhase == 1)
	mobilePanel = gui
	_updateMobileAutoLeft = autoLeftBtn.setActive
	_updateMobileAutoRight = autoRightBtn.setActive
	_updateMobileCarry = carrySpeedBtn.setActive
	_updateMobileLagger = laggerNormalBtn.setActive
	_updateMobileLaggerCarry = laggerCarryBtn.setActive
end
function buildGui()
	local BG    = Color3.fromRGB(5,5,7)
	local BG2   = Color3.fromRGB(9,9,13)
	local CARD  = Color3.fromRGB(14,14,18)
	local HOV   = Color3.fromRGB(22,22,28)
	local RED   = Color3.fromRGB(160,55,220)
	local REDDIM= Color3.fromRGB(95,30,130)
	local STROKE= Color3.fromRGB(55,15,80)
	local W     = Color3.fromRGB(235,235,235)
	local DIM   = Color3.fromRGB(90,90,100)
	local INP   = Color3.fromRGB(10,10,14)
	local OFF   = Color3.fromRGB(28,28,35)
	local old=game:GetService("CoreGui"):FindFirstChild("VyzeCC");if old then old:Destroy() end
	local pg=LP:FindFirstChild("PlayerGui");if pg then local o=pg:FindFirstChild("VyzeCC");if o then o:Destroy() end end
	local gui=Instance.new("ScreenGui")
	gui.Name="VyzeCC";gui.ResetOnSpawn=false;gui.DisplayOrder=10;gui.IgnoreGuiInset=true
	pcall(function() if syn and syn.protect_gui then syn.protect_gui(gui) end end)
	if not pcall(function() gui.Parent=game:GetService("CoreGui") end) then gui.Parent=LP:WaitForChild("PlayerGui") end
	local baseW, baseH = 300, 460
	local main=Instance.new("Frame",gui)
	main.Size=UDim2.new(0, math.floor(baseW * guiSizeScale), 0, math.floor(baseH * guiSizeScale))
	main.Position=UDim2.new(0,20,0,20)
	main.BackgroundColor3=BG;main.BackgroundTransparency=1;main.BorderSizePixel=0;main.ClipsDescendants=true
	Instance.new("UICorner",main).CornerRadius=UDim.new(0,12)
	local mainStroke=Instance.new("UIStroke",main)
	mainStroke.Color=STROKE
	mainStroke.Thickness=2.2
	mainStroke.Transparency=0.15
	mainStroke.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
	mainGuiFrame = main
	local mainBg=Instance.new("ImageLabel")
	mainBg.Name="Background"
	mainBg.Size=UDim2.new(1,0,1,0)
	mainBg.Position=UDim2.new(0,0,0,0)
	mainBg.BackgroundColor3=BG
	mainBg.BackgroundTransparency=0
	mainBg.BorderSizePixel=0
	mainBg.Image="rbxassetid://96235452296851"
	mainBg.ScaleType=Enum.ScaleType.Crop
	mainBg.ImageTransparency=0
	mainBg.ImageColor3=Color3.new(1,1,1)
	mainBg.ZIndex=0
	mainBg.Visible=true
	mainBg.Parent=main
	Instance.new("UICorner",mainBg).CornerRadius=UDim.new(0,12)
	task.spawn(function()
		pcall(function()
			game:GetService("ContentProvider"):PreloadAsync({"rbxassetid://96235452296851"})
		end)
		if mainBg and mainBg.Parent then
			mainBg.Image="rbxassetid://96235452296851"
		end
	end)
	local function applyGuiSize()
		if not mainGuiFrame then return end
		mainGuiFrame.Size = UDim2.new(0, math.floor(baseW * guiSizeScale), 0, math.floor(baseH * guiSizeScale))
	end
	local function clampGuiPos(f, scaleX, offX, scaleY, offY)
		local cam = workspace.CurrentCamera
		local vp = (cam and cam.ViewportSize) or Vector2.new(1280, 720)
		local sz = f.AbsoluteSize
		if sz.X < 1 then sz = Vector2.new(f.Size.X.Offset, f.Size.Y.Offset) end
		if sz.X < 1 then sz = Vector2.new(100, 40) end
		local absX = scaleX * vp.X + offX
		local absY = scaleY * vp.Y + offY
		absX = math.clamp(absX, 0, math.max(0, vp.X - sz.X))
		absY = math.clamp(absY, 0, math.max(0, vp.Y - sz.Y))
		return UDim2.new(0, absX, 0, absY)
	end
	local function drag(f, isLockedFn, onEnd)
		local dn,ds,sp,di=false
		f.InputBegan:Connect(function(i)
			if isLockedFn and isLockedFn() then return end
			if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
				dn=true;ds=i.Position;sp=f.Position
				i.Changed:Connect(function()
					if i.UserInputState==Enum.UserInputState.End then
						dn=false
						if onEnd then onEnd() end
					end
				end)
			end
		end)
		f.InputChanged:Connect(function(i)
			if i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch then di=i end
		end)
		UIS.InputChanged:Connect(function(i)
			if i==di and dn then
				if isLockedFn and isLockedFn() then dn=false; return end
				local nX=sp.X.Offset+(i.Position.X-ds.X)
				local nY=sp.Y.Offset+(i.Position.Y-ds.Y)
				f.Position=clampGuiPos(f, sp.X.Scale, nX, sp.Y.Scale, nY)
			end
		end)
	end
	drag(main, function() return guiLocked end, function() saveConfig() end)
	local LOGO_ID = "rbxassetid://75548910103458"
	local hdr=Instance.new("Frame",main)
	hdr.Size=UDim2.new(1,0,0,52);hdr.BackgroundTransparency=1;hdr.BorderSizePixel=0
	Instance.new("UICorner",hdr).CornerRadius=UDim.new(0,12)
	local ttl=Instance.new("ImageLabel",hdr)
	ttl.Size=UDim2.new(0,168,0,40);ttl.Position=UDim2.new(0,8,0.5,-20)
	ttl.BackgroundTransparency=1
	ttl.Image=LOGO_ID
	ttl.ScaleType=Enum.ScaleType.Fit
	ttl.ImageColor3=Color3.new(1,1,1)
	local closeBtn=Instance.new("TextButton",hdr)
	closeBtn.Size=UDim2.new(0,28,0,28);closeBtn.Position=UDim2.new(1,-34,0.5,-14)
	closeBtn.BackgroundColor3=REDDIM;closeBtn.BorderSizePixel=0
	closeBtn.Text="-";closeBtn.TextColor3=Color3.fromRGB(220,180,255);closeBtn.Font=Enum.Font.GothamBold;closeBtn.TextSize=22
	Instance.new("UICorner",closeBtn).CornerRadius=UDim.new(0,6)
	closeBtn.MouseEnter:Connect(function() TS:Create(closeBtn,TweenInfo.new(0.1),{BackgroundColor3=RED,TextColor3=Color3.fromRGB(255,255,255)}):Play() end)
	closeBtn.MouseLeave:Connect(function() TS:Create(closeBtn,TweenInfo.new(0.1),{BackgroundColor3=REDDIM,TextColor3=Color3.fromRGB(220,180,255)}):Play() end)
	local miniBtn=Instance.new("ImageButton",gui)
	miniBtn.Size=UDim2.new(0,120,0,32);miniBtn.Position=UDim2.new(0,26,0,26)
	miniBtn.BackgroundTransparency=1;miniBtn.BorderSizePixel=0
	miniBtn.Image=LOGO_ID
	miniBtn.ScaleType=Enum.ScaleType.Fit
	miniBtn.ImageColor3=Color3.new(1,1,1)
	miniBtn.ZIndex=20;miniBtn.Visible=false
	Instance.new("UICorner",miniBtn).CornerRadius=UDim.new(0,8)
	openMiniBtn = miniBtn
	drag(miniBtn, nil, function() saveConfig() end)
	miniBtn.MouseEnter:Connect(function() TS:Create(miniBtn,TweenInfo.new(0.1),{ImageTransparency=0.2}):Play() end)
	miniBtn.MouseLeave:Connect(function() TS:Create(miniBtn,TweenInfo.new(0.1),{ImageTransparency=0}):Play() end)
	local guiAnimToken = 0
	local function showGui()
		guiAnimToken = guiAnimToken + 1
		local token = guiAnimToken
		miniBtn.Visible = false
		main.Visible = true
		main.BackgroundTransparency = 1
		local scale = main:FindFirstChild("GuiOpenScale")
		if not scale then
			scale = Instance.new("UIScale")
			scale.Name = "GuiOpenScale"
			scale.Parent = main
		end
		scale.Scale = 0.86
		TS:Create(scale, TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play()
		local bgImg = main:FindFirstChild("Background")
		if bgImg and bgImg:IsA("ImageLabel") then
			bgImg.ImageTransparency = 1
			TS:Create(bgImg, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 }):Play()
		end
		for _, d in ipairs(main:GetDescendants()) do
			if token ~= guiAnimToken then break end
			if d:IsA("GuiObject") and d ~= main then
				pcall(function()
					if d:IsA("TextLabel") or d:IsA("TextButton") or d:IsA("TextBox") then
						local ot = d.TextTransparency
						d.TextTransparency = 1
						TS:Create(d, TweenInfo.new(0.2), { TextTransparency = ot }):Play()
					end
				end)
			end
		end
	end
	local function hideGui()
		guiAnimToken = guiAnimToken + 1
		local token = guiAnimToken
		local scale = main:FindFirstChild("GuiOpenScale")
		if not scale then
			scale = Instance.new("UIScale")
			scale.Name = "GuiOpenScale"
			scale.Parent = main
		end
		TS:Create(scale, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Scale = 0.9 }):Play()
		local bgImg = main:FindFirstChild("Background")
		local tw
		if bgImg and bgImg:IsA("ImageLabel") then
			tw = TS:Create(bgImg, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { ImageTransparency = 0.4 })
		else
			tw = TS:Create(main, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 0.35 })
		end
		tw:Play()
		tw.Completed:Connect(function()
			if token ~= guiAnimToken then return end
			main.Visible = false
			main.BackgroundTransparency = 1
			if bgImg then bgImg.ImageTransparency = 0 end
			scale.Scale = 1
			local mp = main.Position
			miniBtn.Position = clampGuiPos(miniBtn, mp.X.Scale, mp.X.Offset, mp.Y.Scale, mp.Y.Offset)
			miniBtn.Visible = true
			miniBtn.ImageTransparency = 1
			TS:Create(miniBtn, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 }):Play()
			saveConfig()
		end)
	end
	closeBtn.MouseButton1Click:Connect(hideGui)
	miniBtn.MouseButton1Click:Connect(showGui)
	local sf=Instance.new("ScrollingFrame",main)
	sf.Size=UDim2.new(1,0,1,-52);sf.Position=UDim2.new(0,0,0,52)
	sf.BackgroundTransparency=1;sf.BorderSizePixel=0;sf.ClipsDescendants=true
	sf.ScrollBarThickness=0;sf.ScrollBarImageTransparency=1
	sf.CanvasSize=UDim2.new(0,0,0,0);sf.AutomaticCanvasSize=Enum.AutomaticSize.Y
	local ll=Instance.new("UIListLayout",sf);ll.SortOrder=Enum.SortOrder.LayoutOrder;ll.Padding=UDim.new(0,5)
	local pad=Instance.new("UIPadding",sf)
	pad.PaddingLeft=UDim.new(0,12);pad.PaddingRight=UDim.new(0,12)
	pad.PaddingTop=UDim.new(0,8);pad.PaddingBottom=UDim.new(0,12)
	local lo=0
	local function LO() lo=lo+1;return lo end
	local function mkSect(txt)
		local f=Instance.new("Frame",sf);f.Size=UDim2.new(1,0,0,20);f.BackgroundTransparency=1;f.BorderSizePixel=0;f.LayoutOrder=LO()
		local l=Instance.new("TextLabel",f);l.Size=UDim2.new(1,-8,1,0);l.Position=UDim2.new(0,6,0,0)
		l.BackgroundTransparency=1;l.Text=txt:upper();l.TextColor3=RED
		l.Font=Enum.Font.GothamBlack;l.TextSize=9;l.TextXAlignment=Enum.TextXAlignment.Left
		l.TextStrokeTransparency=0.85;l.TextStrokeColor3=Color3.fromRGB(0,0,0)
	end
	local function mkRow(h)
		local f=Instance.new("Frame",sf);f.Size=UDim2.new(1,0,0,h or 32)
		f.BackgroundColor3=Color3.fromRGB(28,22,36)
		f.BackgroundTransparency=0.35
		f.BorderSizePixel=0;f.LayoutOrder=LO()
		Instance.new("UICorner",f).CornerRadius=UDim.new(0,10)
		local rs=Instance.new("UIStroke",f)
		rs.Color=Color3.fromRGB(55,40,70)
		rs.Thickness=1.6
		rs.Transparency=0.35
		f.MouseEnter:Connect(function() TS:Create(f,TweenInfo.new(0.08),{BackgroundTransparency=0.22}):Play() end)
		f.MouseLeave:Connect(function() TS:Create(f,TweenInfo.new(0.08),{BackgroundTransparency=0.35}):Play() end)
		return f
	end
	local function mkLabel(row,txt)
		local l=Instance.new("TextLabel",row);l.Size=UDim2.new(0.55,0,1,0);l.Position=UDim2.new(0,10,0,0)
		l.BackgroundTransparency=1;l.Text=txt;l.TextColor3=W
		l.Font=Enum.Font.GothamBold;l.TextSize=11;l.TextXAlignment=Enum.TextXAlignment.Left
	end
	local function mkPill(row,offset)
		local pill=Instance.new("Frame",row);pill.Size=UDim2.new(0,36,0,19)
		pill.Position=UDim2.new(1,-(offset or 50),0.5,-9.5)
		pill.BackgroundColor3=OFF;pill.BorderSizePixel=0;pill.ZIndex=3
		Instance.new("UICorner",pill).CornerRadius=UDim.new(1,0)
		local dot=Instance.new("Frame",pill);dot.Size=UDim2.new(0,13,0,13);dot.Position=UDim2.new(0,3,0.5,-6.5)
		dot.BackgroundColor3=DIM;dot.BorderSizePixel=0;dot.ZIndex=4
		Instance.new("UICorner",dot).CornerRadius=UDim.new(1,0)
		return pill,dot
	end
	local function animPill(pill,dot,on)
		TS:Create(pill,TweenInfo.new(0.18,Enum.EasingStyle.Quad),{BackgroundColor3=on and REDDIM or OFF}):Play()
		TS:Create(dot,TweenInfo.new(0.18,Enum.EasingStyle.Back),{
			Position=on and UDim2.new(1,-16,0.5,-6.5) or UDim2.new(0,3,0.5,-6.5),
			BackgroundColor3=on and RED or DIM
		}):Play()
	end
	local function mkToggle(txt,cb)
		local row=mkRow(32);mkLabel(row,txt)
		local pill,dot=mkPill(row,42)
		local on=false
		local function sv(s) on=s;animPill(pill,dot,s) end
		local clk=Instance.new("TextButton",pill);clk.Size=UDim2.new(1,0,1,0);clk.BackgroundTransparency=1;clk.Text="";clk.ZIndex=5
		clk.Activated:Connect(function() on=not on;sv(on);cb(on) end)
		pill.ZIndex=3;dot.ZIndex=4
		return sv
	end
	local function mkBox(parent,default,w,xOff,cb)
		local tb=Instance.new("TextBox",parent)
		local boxW = w or 50
		local rightInset = math.max((xOff or (boxW + 12)), boxW + 12)
		tb.Size=UDim2.new(0,boxW,0,22);tb.Position=UDim2.new(1,-rightInset,0.5,-11)
		tb.BackgroundColor3=INP;tb.BackgroundTransparency=0;tb.BorderSizePixel=0
		tb.Text=tostring(default);tb.TextColor3=W
		tb.Font=Enum.Font.GothamBold;tb.TextSize=11;tb.ClearTextOnFocus=false;tb.ZIndex=5
		Instance.new("UICorner",tb).CornerRadius=UDim.new(0,5)
		local bs=Instance.new("UIStroke",tb);bs.Color=Color3.fromRGB(30,30,38);bs.Thickness=1
		local realVal = tonumber(default) or 0
		tb:SetAttribute("StreamReal", realVal)
		table.insert(streamBoxes, tb)
		local function showMasked()
			if streamMode and UIS:GetFocusedTextBox() ~= tb then
				tb.Text = ". . ."
			else
				tb.Text = tostring(tb:GetAttribute("StreamReal") or realVal)
			end
		end
		tb.Focused:Connect(function()
			TS:Create(bs,TweenInfo.new(0.12),{Color=REDDIM}):Play()
			tb.Text = tostring(tb:GetAttribute("StreamReal") or realVal)
		end)
		tb.FocusLost:Connect(function()
			TS:Create(bs,TweenInfo.new(0.12),{Color=Color3.fromRGB(30,30,38)}):Play()
			local n = tonumber(tb.Text)
			if n then
				realVal = n
				tb:SetAttribute("StreamReal", n)
				if cb then cb(n) end
			else
				tb.Text = tostring(tb:GetAttribute("StreamReal") or realVal)
			end
			showMasked()
		end)
		showMasked()
		return tb
	end
	applyStreamModeVisuals = function()
		for _, tb in ipairs(streamBoxes) do
			if tb and tb.Parent then
				if streamMode and UIS:GetFocusedTextBox() ~= tb then
					tb.Text = ". . ."
				else
					tb.Text = tostring(tb:GetAttribute("StreamReal") or tb.Text)
				end
			end
		end
	end
	local GAMEPAD_KEYS={
		[Enum.KeyCode.ButtonA]=true,[Enum.KeyCode.ButtonB]=true,[Enum.KeyCode.ButtonX]=true,[Enum.KeyCode.ButtonY]=true,
		[Enum.KeyCode.ButtonL1]=true,[Enum.KeyCode.ButtonR1]=true,[Enum.KeyCode.ButtonL2]=true,[Enum.KeyCode.ButtonR2]=true,
		[Enum.KeyCode.ButtonL3]=true,[Enum.KeyCode.ButtonR3]=true,[Enum.KeyCode.ButtonStart]=true,[Enum.KeyCode.ButtonSelect]=true,
		[Enum.KeyCode.DPadUp]=true,[Enum.KeyCode.DPadDown]=true,[Enum.KeyCode.DPadLeft]=true,[Enum.KeyCode.DPadRight]=true
	}
	local function isGamepadInput(inp) return inp and inp.UserInputType and inp.UserInputType.Name:match("^Gamepad")~=nil end
	local function isBindableInput(inp)
		if not inp or inp.KeyCode==Enum.KeyCode.Unknown then return false end
		if inp.UserInputType==Enum.UserInputType.Keyboard then return true end
		return isGamepadInput(inp) and GAMEPAD_KEYS[inp.KeyCode]==true
	end
	local function kbMatch(entry,kc) return kc and (kc==entry.kb or (entry.gp and kc==entry.gp)) end
	local function mkKB(parent,kbEntry,cb)
		local btn=Instance.new("TextButton",parent)
		btn.Size=UDim2.new(0,46,0,22);btn.Position=UDim2.new(1,-58,0.5,-11)
		btn.BackgroundColor3=INP;btn.BorderSizePixel=0
		local function getLabel() return (kbEntry.gp and kbEntry.gp.Name) or (kbEntry.kb and kbEntry.kb.Name) or "None" end
		btn.Text=getLabel();btn.TextColor3=W
		btn.Font=Enum.Font.GothamBold;btn.TextSize=9;btn.ZIndex=5
		Instance.new("UICorner",btn).CornerRadius=UDim.new(0,5)
		local li=false;local lc;local pv=btn.Text;local listenStart=0
		btn.Activated:Connect(function()
			if li then li=false;_anyKeyListening=false;if lc then lc:Disconnect();lc=nil end;btn.Text=pv;btn.TextColor3=W;return end
			pv=btn.Text;li=true;_anyKeyListening=true;listenStart=tick();btn.Text="...";btn.TextColor3=W
			lc=UIS.InputBegan:Connect(function(inp)
				if not li then return end
				if inp.KeyCode==Enum.KeyCode.Escape then li=false;_anyKeyListening=false;if lc then lc:Disconnect();lc=nil end;btn.Text=pv;btn.TextColor3=W;return end
				local isGp=isGamepadInput(inp)
				if isGp and tick()-listenStart<0.15 then return end
				if not isBindableInput(inp) then return end
				btn.Text=inp.KeyCode.Name;pv=inp.KeyCode.Name;btn.TextColor3=W
				li=false;_anyKeyListening=false;if lc then lc:Disconnect();lc=nil end
				if cb then cb(inp.KeyCode,isGp) end
			end)
		end)
		return btn
	end
	local function mkToggleKB(txt,kbEntry,onToggle,onKB)
		local row=mkRow(32);mkLabel(row,txt)
		if kbEntry then mkKB(row,kbEntry,function(k,isGp)
			if isGp then kbEntry.gp=k;kbEntry.kb=nil else kbEntry.kb=k;kbEntry.gp=nil end
			if onKB then onKB(k,isGp) end
		end) end
		local pill,dot=mkPill(row,kbEntry and 102 or 42)
		local on=false
		local function sv(s) on=s;animPill(pill,dot,s) end
		local clk=Instance.new("TextButton",pill);clk.Size=UDim2.new(1,0,1,0);clk.BackgroundTransparency=1;clk.Text="";clk.ZIndex=5
		clk.Activated:Connect(function() if _anyKeyListening then return end;on=not on;sv(on);if onToggle then onToggle(on) end end)
		pill.ZIndex=3;dot.ZIndex=4
		return sv
	end
	local pbFrame=Instance.new("Frame",gui)
	pbFrame.Size=UDim2.new(0,300,0,56);pbFrame.Position=UDim2.new(0.5,-150,1,-72)
	pbFrame.BackgroundColor3=Color3.fromRGB(12,8,16)
	pbFrame.BackgroundTransparency=0.12
	pbFrame.BorderSizePixel=0;pbFrame.Active=true;pbFrame.ClipsDescendants=true
	Instance.new("UICorner",pbFrame).CornerRadius=UDim.new(0,12)
	local pbStroke=Instance.new("UIStroke",pbFrame)
	pbStroke.Color=Color3.fromRGB(160,55,220)
	pbStroke.Thickness=1.6
	pbStroke.Transparency=0.35
	local pbGrad=Instance.new("UIGradient",pbFrame)
	pbGrad.Color=ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(22,12,32)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(14,8,20)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(22,12,32)),
	})
	pbGrad.Rotation=90
	progressBarFrame = pbFrame
	task.defer(function()
		if pbFrame and pbFrame.Parent then
			local p = pbFrame.Position
			pbFrame.Position = clampGuiPos(pbFrame, p.X.Scale, p.X.Offset, p.Y.Scale, p.Y.Offset)
		end
	end)
	drag(pbFrame, nil, function() saveConfig() end)
	local pbTag=Instance.new("TextLabel",pbFrame)
	pbTag.Size=UDim2.new(0,52,0,16);pbTag.Position=UDim2.new(0,12,0,6)
	pbTag.BackgroundTransparency=1;pbTag.Text="STEAL"
	pbTag.TextColor3=Color3.fromRGB(200,140,255);pbTag.TextTransparency=0.15
	pbTag.Font=Enum.Font.GothamBlack;pbTag.TextSize=10
	pbTag.TextXAlignment=Enum.TextXAlignment.Left;pbTag.ZIndex=3
	progressPct=Instance.new("TextLabel",pbFrame)
	progressPct.Size=UDim2.new(0,56,0,18);progressPct.Position=UDim2.new(0.5,-28,0,4)
	progressPct.BackgroundTransparency=1;progressPct.Text="0%"
	progressPct.TextColor3=Color3.fromRGB(255,255,255)
	progressPct.Font=Enum.Font.GothamBlack;progressPct.TextSize=14
	progressPct.TextXAlignment=Enum.TextXAlignment.Center;progressPct.ZIndex=3
	progressPct.TextStrokeTransparency=0.6;progressPct.TextStrokeColor3=Color3.fromRGB(0,0,0)
	progressRadLbl=Instance.new("TextLabel",pbFrame)
	progressRadLbl.Size=UDim2.new(0,100,0,16);progressRadLbl.Position=UDim2.new(1,-112,0,6)
	progressRadLbl.BackgroundTransparency=1;progressRadLbl.Text=string.format("Radius: %.2g",Steal.StealRadius)
	progressRadLbl.TextColor3=Color3.fromRGB(190,170,210);progressRadLbl.Font=Enum.Font.GothamBold
	progressRadLbl.TextSize=10;progressRadLbl.TextXAlignment=Enum.TextXAlignment.Right;progressRadLbl.ZIndex=3
	local pbg=Instance.new("Frame",pbFrame)
	pbg.Name="ProgressTrack"
	pbg.Size=UDim2.new(1,-24,0,12);pbg.Position=UDim2.new(0,12,0,32)
	pbg.BackgroundColor3=Color3.fromRGB(8,6,12);pbg.BorderSizePixel=0;pbg.ZIndex=2
	pbg.ClipsDescendants=true
	Instance.new("UICorner",pbg).CornerRadius=UDim.new(1,0)
	local pbgStroke=Instance.new("UIStroke",pbg)
	pbgStroke.Color=Color3.fromRGB(40,25,55);pbgStroke.Thickness=1;pbgStroke.Transparency=0.3
	progressFill=Instance.new("Frame",pbg)
	progressFill.Size=UDim2.new(0,0,1,0)
	progressFill.BackgroundColor3=Color3.fromRGB(160,55,220)
	progressFill.BorderSizePixel=0;progressFill.ZIndex=3
	progressFill.ClipsDescendants=true
	Instance.new("UICorner",progressFill).CornerRadius=UDim.new(1,0)
	local fillGrad=Instance.new("UIGradient",progressFill)
	fillGrad.Color=ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(95,30,130)),
		ColorSequenceKeypoint.new(0.45, Color3.fromRGB(160,55,220)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(220,140,255)),
	})
	fillGrad.Rotation=0
	local shine=Instance.new("Frame",pbg)
	shine.Name="Shine"
	shine.Size=UDim2.new(0.22,0,1,0)
	shine.Position=UDim2.new(-0.3,0,0,0)
	shine.BackgroundColor3=Color3.fromRGB(255,255,255)
	shine.BackgroundTransparency=0.82
	shine.BorderSizePixel=0;shine.ZIndex=4
	shine.Visible=false
	Instance.new("UICorner",shine).CornerRadius=UDim.new(1,0)
	task.spawn(function()
		while shine and shine.Parent do
			if shine.Visible then
				shine.Position=UDim2.new(-0.35,0,0,0)
				local tw=TS:Create(shine,TweenInfo.new(1.0,Enum.EasingStyle.Linear),{Position=UDim2.new(1.15,0,0,0)})
				tw:Play();tw.Completed:Wait()
				task.wait(0.35)
			else
				task.wait(0.15)
			end
		end
	end)
	mkSect("AUTO CARRY")
	setAutoCarrySpeedVisual = mkToggle("Auto Carry Speed", function(on)
		autoCarrySpeedEnabled = on == true
		if autoCarrySpeedEnabled ~= true and _G.AutoCarrySpeed and _G.AutoCarrySpeed.Disable then
			pcall(function() _G.AutoCarrySpeed.Disable() end)
		end
		saveConfig()
	end)
	if setAutoCarrySpeedVisual then setAutoCarrySpeedVisual(autoCarrySpeedEnabled) end
	mkSect("Speed")
	do local row=mkRow(32);mkLabel(row,"Normal Speed");normalBox=mkBox(row,NS,50,48,function(v) if v>0 and v<=500 then NS=v end;saveConfig() end) end
	do local row=mkRow(32);mkLabel(row,"Carry Speed");carryBox=mkBox(row,CS,50,48,function(v) if v>0 and v<=500 then CS=v end;saveConfig() end) end
	do local row=mkRow(32);mkLabel(row,"Lagger Normal Speed");laggerBox=mkBox(row,LAGGER_SPEED,50,48,function(v) if v>0 and v<=500 then LAGGER_SPEED=v end;saveConfig() end) end
	do local row=mkRow(32);mkLabel(row,"Lagger Carry Speed");laggerCarryBox=mkBox(row,LAGGER_CARRY_SPEED,50,48,function(v) if v>0 and v<=500 then LAGGER_CARRY_SPEED=v end;saveConfig() end) end
	do
		local row=mkRow(32);mkLabel(row,"Mode")
		modeValLbl=Instance.new("TextLabel",row)
		modeValLbl.Size=UDim2.new(0,90,1,0);modeValLbl.Position=UDim2.new(1,-94,0,0)
		modeValLbl.BackgroundTransparency=1;modeValLbl.Text="Normal";modeValLbl.TextColor3=RED
		modeValLbl.Font=Enum.Font.GothamBlack;modeValLbl.TextSize=11;modeValLbl.TextXAlignment=Enum.TextXAlignment.Right
		local clk=Instance.new("TextButton",row);clk.Size=UDim2.new(1,0,1,0);clk.BackgroundTransparency=1;clk.Text="";clk.ZIndex=2
		clk.Activated:Connect(function()
			if _anyKeyListening then return end
			toggleCarryMode()
			saveConfig()
		end)
	end
	mkSect("Keybinds")
	do local row=mkRow(32);mkLabel(row,"Speed Key");mkKB(row,KB.SpeedToggle,function(k,isGp) if isGp then KB.SpeedToggle.gp=k;KB.SpeedToggle.kb=nil else KB.SpeedToggle.kb=k;KB.SpeedToggle.gp=nil end;saveConfig() end) end
	do local row=mkRow(32);mkLabel(row,"Lagger Key");mkKB(row,KB.LaggerToggle,function(k,isGp) if isGp then KB.LaggerToggle.gp=k;KB.LaggerToggle.kb=nil else KB.LaggerToggle.kb=k;KB.LaggerToggle.gp=nil end;saveConfig() end) end
	mkSect("Combat")
	do
		local abRow=mkRow(32);mkLabel(abRow,"Auto Bat")
		mkKB(abRow,KB.AutoBat,function(k,isGp)
			if isGp then KB.AutoBat.gp=k;KB.AutoBat.kb=nil else KB.AutoBat.kb=k;KB.AutoBat.gp=nil end
			saveConfig()
		end)
		local abPill,abDot=mkPill(abRow,102)
		abPill.ZIndex=3;abDot.ZIndex=4
		local abOn=false
		local function svAutoBat(s) abOn=s;animPill(abPill,abDot,s) end
		autoBatSetVisual=svAutoBat
		local abClk=Instance.new("TextButton",abPill);abClk.Size=UDim2.new(1,0,1,0);abClk.BackgroundTransparency=1;abClk.Text="";abClk.ZIndex=5
		abClk.Activated:Connect(function()
			if _anyKeyListening then return end
			abOn=not abOn;svAutoBat(abOn)
			if abOn then queueAutoBatStart() else autoBatEnabled=false;disableAutoBat() end
			saveConfig()
		end)
	end
	setAutoSwingVisual=mkToggle("Auto Swing",function(on)
		autoSwingEnabled=on
		saveConfig()
	end)
	if setAutoSwingVisual then setAutoSwingVisual(autoSwingEnabled) end
	setMirrorTPVisual=mkToggle("Mirror TP Down",function(on)
		mirrorTPEnabled=on
		saveConfig()
	end)
	if setMirrorTPVisual then setMirrorTPVisual(mirrorTPEnabled) end
	mkSect("Steal")
	do
		local row=mkRow(32);mkLabel(row,"Radius")
		radInput=mkBox(row,Steal.StealRadius,50,56,function(v)
			if v>=0.5 and v<=300 then Steal.StealRadius=v;if progressRadLbl then progressRadLbl.Text=string.format("Radius: %.2g",Steal.StealRadius) end end;saveConfig()
		end)
	end
	do
		local stealRow=mkRow(32);mkLabel(stealRow,"Auto Steal")
		local pill,dot=mkPill(stealRow,42)
		local on=false
		local function sv(s) on=s;animPill(pill,dot,s) end
		setInstaGrab=sv
		local clk=Instance.new("TextButton",pill);clk.Size=UDim2.new(1,0,1,0);clk.BackgroundTransparency=1;clk.Text="";clk.ZIndex=5
		clk.Activated:Connect(function()
			on=not on;sv(on);Steal.AutoStealEnabled=on
			if on then if not pcall(startAutoSteal) then Steal.AutoStealEnabled=false;sv(false) end else stopAutoSteal() end
			saveConfig()
		end)
		pill.ZIndex=3;dot.ZIndex=4
	end
	setRagdollStealVisual=mkToggle("Ragdoll Steal",function(on)
		ragdollStealEnabled=on==true
		if on and LP.Character then bindStealHitCharacter(LP.Character) end
		saveConfig()
	end)
	mkSect("Misc")
	do
		local row=mkRow(32);mkLabel(row,"Instant Reset")
		mkKB(row,KB.InstaReset,function(k,isGp) if isGp then KB.InstaReset.gp=k;KB.InstaReset.kb=nil else KB.InstaReset.kb=k;KB.InstaReset.gp=nil end;saveConfig() end)
		local clk=Instance.new("TextButton",row);clk.Size=UDim2.new(0.58,0,1,0);clk.BackgroundTransparency=1;clk.Text="";clk.ZIndex=2
		clk.Activated:Connect(function() cursedInstaReset() end)
	end
	setInfJumpVisual=mkToggle("Infinite Jump",function(on) infJumpEnabled=on end)
	setAntiRagVisual=mkToggle("Anti Ragdoll",function(on) antiRagdollEnabled=on;if on then startAntiRagdoll() else stopAntiRagdoll() end end)
	setBatCounterVisual=mkToggle("Bat Counter",function(on)
		batCounterEnabled=on
		if on then startBatCounter() else stopBatCounter() end
		saveConfig()
	end)
	setMedusaVisual=mkToggle("Medusa Counter",function(on)
		medusaCounterEnabled=on
		if on then setupMedusa(LP.Character)
		else stopMedusaCounter() end
		saveConfig()
	end)
	setUnwalkVisual=mkToggle("Unwalk",function(on) unwalkEnabled=on;if on then startUnwalk() else stopUnwalk() end end)
	mkSect("Visual")
	local espDetailsOpen = false
	local espDetailsRows = {}
	local espTracerLines = {}
	local ragdollCountdownLabel = nil
	do
		local row = mkRow(32)
		mkLabel(row, "ESP")
		local arrow = Instance.new("TextButton", row)
		arrow.Size = UDim2.new(0, 28, 0, 22)
		arrow.Position = UDim2.new(1, -92, 0.5, -11)
		arrow.BackgroundColor3 = Color3.fromRGB(18, 14, 24)
		arrow.BorderSizePixel = 0
		arrow.Text = ">"
		arrow.TextColor3 = W
		arrow.Font = Enum.Font.GothamBlack
		arrow.TextSize = 14
		arrow.ZIndex = 6
		Instance.new("UICorner", arrow).CornerRadius = UDim.new(0, 7)
		local pill, dot = mkPill(row, 48)
		local on = false
		local function sv(s) on = s; animPill(pill, dot, s) end
		setEspVisual = sv
		local clk = Instance.new("TextButton", pill)
		clk.Size = UDim2.new(1, 0, 1, 0)
		clk.BackgroundTransparency = 1
		clk.Text = ""
		clk.ZIndex = 5
		clk.Activated:Connect(function()
			on = not on
			sv(on)
			if on then enableESP() else disableESP() end
			saveConfig()
		end)
		arrow.Activated:Connect(function()
			espDetailsOpen = not espDetailsOpen
			arrow.Text = espDetailsOpen and "v" or ">"
			for _, r in ipairs(espDetailsRows) do
				r.Visible = espDetailsOpen
			end
		end)
	end
	do
		local row = mkRow(32)
		row.Visible = false
		table.insert(espDetailsRows, row)
		mkLabel(row, "Show Tracer")
		local pill, dot = mkPill(row, 48)
		local on = false
		local function sv(s) on = s; animPill(pill, dot, s) end
		local clk = Instance.new("TextButton", pill)
		clk.Size = UDim2.new(1, 0, 1, 0)
		clk.BackgroundTransparency = 1
		clk.Text = ""
		clk.ZIndex = 5
		setEspTracersVisual = sv
		clk.Activated:Connect(function()
			on = not on
			sv(on)
			espTracersEnabled = on
			saveConfig()
		end)
	end
	do
		local row = mkRow(32)
		row.Visible = false
		table.insert(espDetailsRows, row)
		mkLabel(row, "Ragdoll Countdown")
		local pill, dot = mkPill(row, 48)
		local on = false
		local function sv(s) on = s; animPill(pill, dot, s) end
		local clk = Instance.new("TextButton", pill)
		clk.Size = UDim2.new(1, 0, 1, 0)
		clk.BackgroundTransparency = 1
		clk.Text = ""
		clk.ZIndex = 5
		setRagdollCountdownVisual = sv
		clk.Activated:Connect(function()
			on = not on
			sv(on)
			ragdollCountdownEnabled = on
			if not on and ragdollCountdownLabel then
				pcall(function() ragdollCountdownLabel:Destroy() end)
				ragdollCountdownLabel = nil
			end
			saveConfig()
		end)
	end
	setE01WarningVisual = mkToggle("Show E01 Warning", function(on)
		showE01Warning = on == true
		saveConfig()
	end)
	setAntiLagVisual = mkToggle("Anti Lag", function(on)
		if on then enableAntiLag() else disableAntiLag() end
		saveConfig()
	end)
	setBaseXRayVisual = mkToggle("X-Ray Base", function(on)
		baseXRayEnabled = on == true
		local plots = workspace:FindFirstChild("Plots")
		if plots then
			for _, p in ipairs(plots:GetDescendants()) do
				if p:IsA("BasePart") then
					local n = p.Name:lower()
					local skip = n:find("brainrot") or n:find("animal") or n:find("pet") or n:find("handle")
					local par = p.Parent
					while par and par ~= plots and not skip do
						local pn = tostring(par.Name):lower()
						if par:IsA("Tool") then
							skip = true
						elseif pn:find("brainrot") or pn:find("animal") or pn:find("pet") then
							skip = true
						end
						par = par.Parent
					end
					if not skip then
						if on then
							if not p:GetAttribute("_VyzeXRay") then
								p:SetAttribute("_VyzeXRay", p.LocalTransparencyModifier)
							end
							p.LocalTransparencyModifier = 0.65
						else
							local prev = p:GetAttribute("_VyzeXRay")
							if prev ~= nil then p.LocalTransparencyModifier = prev end
							p:SetAttribute("_VyzeXRay", nil)
						end
					end
				end
			end
		end
		saveConfig()
	end)
	setFovChangeVisual = mkToggle("FOV Change", function(on)
		fovChangeEnabled = on == true
		if on then
			workspace.CurrentCamera.FieldOfView = fieldOfViewVal
		else
			workspace.CurrentCamera.FieldOfView = 70
		end
		saveConfig()
	end)
	do
		local row = mkRow(32)
		mkLabel(row, "FOV Value")
		mkBox(row, fieldOfViewVal, 50, 56, function(v)
			if v >= 40 and v <= 120 then
				fieldOfViewVal = v
				if fovChangeEnabled then
					workspace.CurrentCamera.FieldOfView = fieldOfViewVal
				end
			end
			saveConfig()
		end)
	end
	setHeadlessVisual = mkToggle("Headless", function(on)
		headlessEnabled = on == true
		local char = LP.Character
		local head = char and char:FindFirstChild("Head")
		if head then
			head.Transparency = on and 1 or 0
			for _, c in ipairs(head:GetChildren()) do
				if c:IsA("Decal") or c:IsA("Texture") then
					c.Transparency = on and 1 or 0
				end
			end
		end
		saveConfig()
	end)
	RunService.RenderStepped:Connect(function()
		if espTracersEnabled and espEnabled then
			local myRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
			local cam = workspace.CurrentCamera
			if myRoot and cam then
				for _, plr in ipairs(Players:GetPlayers()) do
					if plr ~= LP and plr.Character then
						local tr = plr.Character:FindFirstChild("HumanoidRootPart")
						if tr then
							local a, onA = cam:WorldToViewportPoint(myRoot.Position)
							local b, onB = cam:WorldToViewportPoint(tr.Position)
							local line = espTracerLines[plr]
							if Drawing and type(Drawing.new) == "function" then
								if not line then
									line = Drawing.new("Line")
									line.Thickness = 1.5
									line.Color = ESP_COLOR
									line.Transparency = 0.85
									espTracerLines[plr] = line
								end
								if onA and onB and a.Z > 0 and b.Z > 0 then
									line.From = Vector2.new(a.X, a.Y)
									line.To = Vector2.new(b.X, b.Y)
									line.Visible = true
								else
									line.Visible = false
								end
							end
						end
					end
				end
			end
		else
			for plr, line in pairs(espTracerLines) do
				pcall(function() line.Visible = false end)
			end
		end
		if ragdollCountdownEnabled then
			local char = LP.Character
			local hum = char and char:FindFirstChildOfClass("Humanoid")
			local head = char and char:FindFirstChild("Head")
			if hum and head then
				local st = hum:GetState()
				local rag = st == Enum.HumanoidStateType.Physics or st == Enum.HumanoidStateType.Ragdoll or st == Enum.HumanoidStateType.FallingDown or hum.PlatformStand
				if rag then
					if not ragdollCountdownLabel or not ragdollCountdownLabel.Parent then
						local bb = Instance.new("BillboardGui")
						bb.Name = "VyzeRagdollCD"
						bb.Size = UDim2.new(0, 80, 0, 24)
						bb.StudsOffset = Vector3.new(0, 2.4, 0)
						bb.AlwaysOnTop = true
						bb.Adornee = head
						bb.Parent = head
						local tl = Instance.new("TextLabel", bb)
						tl.Size = UDim2.fromScale(1, 1)
						tl.BackgroundTransparency = 1
						tl.Font = Enum.Font.GothamBlack
						tl.TextSize = 14
						tl.TextColor3 = Color3.fromRGB(255, 120, 120)
						tl.TextStrokeTransparency = 0.3
						tl.Text = "RAG"
						ragdollCountdownLabel = bb
					end
				elseif ragdollCountdownLabel then
					pcall(function() ragdollCountdownLabel:Destroy() end)
					ragdollCountdownLabel = nil
				end
			end
		end
	end)
	mkSect("Movement")
	do
		local sv=mkToggleKB("Auto Left",KB.AutoLeft,
			function(on)
				autoLeftEnabled=on
				if on then
					queueAutoLeftStart()
				else stopAutoLeft() end
			end,
			function(k,isGp) if isGp then KB.AutoLeft.gp=k;KB.AutoLeft.kb=nil else KB.AutoLeft.kb=k;KB.AutoLeft.gp=nil end;saveConfig() end)
		autoLeftSetVisual=sv
	end
	do
		local sv=mkToggleKB("Auto Right",KB.AutoRight,
			function(on)
				autoRightEnabled=on
				if on then
					queueAutoRightStart()
				else stopAutoRight() end
			end,
			function(k,isGp) if isGp then KB.AutoRight.gp=k;KB.AutoRight.kb=nil else KB.AutoRight.kb=k;KB.AutoRight.gp=nil end;saveConfig() end)
		autoRightSetVisual=sv
	end
	do
		local row=mkRow(32);mkLabel(row,"Drop Brainrot")
		mkKB(row,KB.DropBrainrot,function(k,isGp) if isGp then KB.DropBrainrot.gp=k;KB.DropBrainrot.kb=nil else KB.DropBrainrot.kb=k;KB.DropBrainrot.gp=nil end;saveConfig() end)
		local clk=Instance.new("TextButton",row);clk.Size=UDim2.new(0.58,0,1,0);clk.BackgroundTransparency=1;clk.Text="";clk.ZIndex=2
		clk.Activated:Connect(function() runDrop() end)
	end
	do
		local row=mkRow(32);mkLabel(row,"TP Down")
		mkKB(row,KB.TPFloor,function(k,isGp) if isGp then KB.TPFloor.gp=k;KB.TPFloor.kb=nil else KB.TPFloor.kb=k;KB.TPFloor.gp=nil end;saveConfig() end)
		local clk=Instance.new("TextButton",row);clk.Size=UDim2.new(0.58,0,1,0);clk.BackgroundTransparency=1;clk.Text="";clk.ZIndex=2
		clk.Activated:Connect(function() runTPFloor() end)
	end
	do
		setAutoTPVisual=mkToggle("Auto TP",function(on)
			autoTPEnabled=on
			if on then startAutoTP() else stopAutoTP() end
			saveConfig()
		end)
	end
	do
		local row=mkRow(32);mkLabel(row,"Auto TP Height")
		autoTPHeightBox=mkBox(row,autoTPHeight,50,56,function(v)
			if v>=0 and v<=500 then autoTPHeight=v else setBoxReal(autoTPHeightBox, autoTPHeight) end
			saveConfig()
		end)
	end
	mkSect("Interface")
	setGuiLockVisual = mkToggle("Lock GUI", function(on)
		guiLocked = on
		saveConfig()
	end)
	setStreamModeVisual = mkToggle("Stream Mode", function(on)
		streamMode = on
		if applyStreamModeVisuals then applyStreamModeVisuals() end
		updateSpeedLabelText()
		saveConfig()
	end)
	if setStreamModeVisual then setStreamModeVisual(streamMode) end
	do local row=mkRow(32);mkLabel(row,"Hide GUI");mkKB(row,KB.GuiHide,function(k,isGp) if isGp then KB.GuiHide.gp=k;KB.GuiHide.kb=nil else KB.GuiHide.kb=k;KB.GuiHide.gp=nil end;saveConfig() end) end
	do
		local row=mkRow(32);mkLabel(row,"GUI Size")
		guiSizeBox=mkBox(row, guiSizeScale, 50, 56, function(v)
			if v >= 0.5 and v <= 2.5 then
				guiSizeScale = v
				applyGuiSize()
			else
				setBoxReal(guiSizeBox, guiSizeScale)
			end
			saveConfig()
		end)
	end
	mkSect("Mobile Buttons")
	do
		local row=mkRow(32);mkLabel(row,"Mobile Buttons Size")
		mobileSizeBox=mkBox(row, mobileBtnSize, 50, 56, function(v)
			if v >= 40 and v <= 150 then
				mobileBtnSize = v
				applyMobileBtnSize()
			else
				setBoxReal(mobileSizeBox, mobileBtnSize)
			end
			saveConfig()
		end)
	end
	setMobileHideVisual = mkToggle("Hide Mobile Buttons", function(on)
		setMobileButtonsVisible(not on)
		saveConfig()
	end)
	setMobileLockVisual = mkToggle("Lock Buttons", function(on)
		mobileButtonsLocked = on
		saveConfig()
	end)
	do
		local row=mkRow(32);mkLabel(row,"Reset Btns")
		local clk=Instance.new("TextButton",row)
		clk.Size=UDim2.new(0,56,0,22);clk.Position=UDim2.new(1,-64,0.5,-11)
		clk.BackgroundColor3=Color3.fromRGB(160,55,220);clk.BorderSizePixel=0
		clk.Text="Reset";clk.TextColor3=Color3.fromRGB(255,255,255)
		clk.Font=Enum.Font.GothamBold;clk.TextSize=11;clk.ZIndex=5
		Instance.new("UICorner",clk).CornerRadius=UDim.new(0,6)
		clk.Activated:Connect(function()
			if _anyKeyListening then return end
			resetMobileButtonsPosition()
		end)
	end
	UIS.InputBegan:Connect(function(input,gpe)
		if _anyKeyListening then return end
		if input.UserInputType==Enum.UserInputType.Keyboard then
			if gpe or UIS:GetFocusedTextBox() then return end
		elseif not isGamepadInput(input) then return end
		if not isBindableInput(input) then return end
		local kc=input.KeyCode
		if kbMatch(KB.LaggerToggle,kc) then
			toggleLaggerMode()
			saveConfig()
		elseif kbMatch(KB.SpeedToggle,kc) then
			toggleCarryMode()
			saveConfig()
		elseif kbMatch(KB.DropBrainrot,kc) then runDrop()
		elseif kbMatch(KB.TPFloor,kc) then runTPFloor()
		elseif kbMatch(KB.InstaReset,kc) then cursedInstaReset()
		elseif kbMatch(KB.AutoLeft,kc) then
			autoLeftEnabled=not autoLeftEnabled
			if autoLeftEnabled then
				queueAutoLeftStart()
			else stopAutoLeft() end
			if autoLeftSetVisual then autoLeftSetVisual(autoLeftEnabled) end
			if _updateMobileAutoLeft then _updateMobileAutoLeft(autoLeftEnabled) end
		elseif kbMatch(KB.AutoRight,kc) then
			autoRightEnabled=not autoRightEnabled
			if autoRightEnabled then
				queueAutoRightStart()
			else stopAutoRight() end
			if autoRightSetVisual then autoRightSetVisual(autoRightEnabled) end
			if _updateMobileAutoRight then _updateMobileAutoRight(autoRightEnabled) end
		elseif kbMatch(KB.AutoBat,kc) then
			if not autoBatEnabled then
				queueAutoBatStart()
				if autoBatSetVisual then autoBatSetVisual(true) end
			else
				autoBatEnabled=false;disableAutoBat()
				if autoBatSetVisual then autoBatSetVisual(false) end
			end
		elseif kbMatch(KB.GuiHide,kc) then if main.Visible then hideGui() else showGui() end
		end
	end)
end
local _savedCfg = nil
function loadConfigKeys()
	if not(isfile and isfile("vyzeCC.json")) then return end
	local ok,cfg=pcall(function() return HS:JSONDecode(readfile("vyzeCC.json")) end)
	if not ok or not cfg then return end
	_savedCfg=cfg
	local function lk(e,d) if type(d)~="table" then return end;if d.kb and Enum.KeyCode[d.kb] then e.kb=Enum.KeyCode[d.kb] end;if d.gp and Enum.KeyCode[d.gp] then e.gp=Enum.KeyCode[d.gp] end end
	lk(KB.DropBrainrot,cfg.dropBrainrotKey);lk(KB.AutoLeft,cfg.autoLeftKey);lk(KB.AutoRight,cfg.autoRightKey)
	lk(KB.AutoBat,cfg.autoBatKey);lk(KB.LaggerToggle,cfg.laggerToggleKey)
	lk(KB.TPFloor,cfg.tpFloorKey);lk(KB.InstaReset,cfg.instaResetKey);lk(KB.GuiHide,cfg.guiHideKey);lk(KB.SpeedToggle,cfg.speedToggleKey)
	if cfg.normalSpeed then NS=cfg.normalSpeed end
	if cfg.carrySpeed then CS=cfg.carrySpeed end
	if cfg.grabRadius and type(cfg.grabRadius)=="number" then Steal.StealRadius=cfg.grabRadius else Steal.StealRadius=55 end
	if cfg.stealDuration and type(cfg.stealDuration)=="number" then Steal.StealDuration=cfg.stealDuration else Steal.StealDuration=0.5 end
	if cfg.laggerSpeed and type(cfg.laggerSpeed)=="number" then LAGGER_SPEED=cfg.laggerSpeed end
	if cfg.laggerCarrySpeed and type(cfg.laggerCarrySpeed)=="number" then LAGGER_CARRY_SPEED=cfg.laggerCarrySpeed end
	if cfg.autoTPHeight and type(cfg.autoTPHeight)=="number" then autoTPHeight=cfg.autoTPHeight end
	if cfg.autoSwing~=nil then autoSwingEnabled=cfg.autoSwing==true end
	if cfg.mirrorTP~=nil then mirrorTPEnabled=cfg.mirrorTP==true end
	if cfg.guiLocked~=nil then guiLocked=cfg.guiLocked==true end
	if cfg.streamMode~=nil then streamMode=cfg.streamMode==true end
	if cfg.autoCarrySpeedEnabled~=nil then autoCarrySpeedEnabled=cfg.autoCarrySpeedEnabled==true end
	if cfg.guiSizeScale and type(cfg.guiSizeScale)=="number" then guiSizeScale=math.clamp(cfg.guiSizeScale,0.5,2.5) end
	if cfg.mobileBtnSize and type(cfg.mobileBtnSize)=="number" then mobileBtnSize=math.clamp(cfg.mobileBtnSize,40,150) end
	if cfg.mobileButtonsHidden~=nil then mobileButtonsHidden=cfg.mobileButtonsHidden==true end
	if cfg.mobileButtonsLocked~=nil then mobileButtonsLocked=cfg.mobileButtonsLocked==true end
	if type(cfg.mobileBtnPositions)=="table" then mobileBtnPositions=cfg.mobileBtnPositions end
end
function loadConfigState()
	local cfg=_savedCfg;if not cfg then return end
	setBoxReal(normalBox, NS)
	setBoxReal(carryBox, CS)
	setBoxReal(radInput, Steal.StealRadius)
	if progressRadLbl then progressRadLbl.Text=string.format("Radius: %.2g",Steal.StealRadius) end
	setBoxReal(laggerBox, LAGGER_SPEED)
	setBoxReal(laggerCarryBox, LAGGER_CARRY_SPEED)
	setBoxReal(autoTPHeightBox, autoTPHeight)
	setBoxReal(guiSizeBox, guiSizeScale)
	setBoxReal(mobileSizeBox, mobileBtnSize)
	if setStreamModeVisual then setStreamModeVisual(streamMode) end
	if applyStreamModeVisuals then applyStreamModeVisuals() end
	if mainGuiFrame then
		mainGuiFrame.Size = UDim2.new(0, math.floor(300 * guiSizeScale), 0, math.floor(460 * guiSizeScale))
		if type(cfg.guiPos)=="table" and cfg.guiPos.x then
			mainGuiFrame.Position = UDim2.new(cfg.guiPos.sx or 0, cfg.guiPos.x, cfg.guiPos.sy or 0, cfg.guiPos.y)
		end
	end
	if progressBarFrame and type(cfg.progressBarPos)=="table" and cfg.progressBarPos.x then
		progressBarFrame.Position = UDim2.new(
			cfg.progressBarPos.sx or 0, cfg.progressBarPos.x,
			cfg.progressBarPos.sy or 0, cfg.progressBarPos.y
		)
		task.defer(function()
			if progressBarFrame and progressBarFrame.Parent then
				local p = progressBarFrame.Position
				local cam = workspace.CurrentCamera
				local vp = (cam and cam.ViewportSize) or Vector2.new(1280, 720)
				local sz = progressBarFrame.AbsoluteSize
				if sz.X < 1 then sz = Vector2.new(280, 50) end
				local absX = math.clamp(p.X.Scale * vp.X + p.X.Offset, 0, math.max(0, vp.X - sz.X))
				local absY = math.clamp(p.Y.Scale * vp.Y + p.Y.Offset, 0, math.max(0, vp.Y - sz.Y))
				progressBarFrame.Position = UDim2.new(0, absX, 0, absY)
			end
		end)
	end
	if openMiniBtn and type(cfg.miniBtnPos)=="table" and cfg.miniBtnPos.x then
		openMiniBtn.Position = UDim2.new(
			cfg.miniBtnPos.sx or 0, cfg.miniBtnPos.x,
			cfg.miniBtnPos.sy or 0, cfg.miniBtnPos.y
		)
	end
	task.spawn(function()
		task.wait(0.15)
		if cfg.antiRagdoll then antiRagdollEnabled=true;if setAntiRagVisual then setAntiRagVisual(true) end;startAntiRagdoll() end
		if cfg.autoStealEnabled then Steal.AutoStealEnabled=true;if setInstaGrab then setInstaGrab(true) end;pcall(startAutoSteal) end
		if cfg.autoCarrySpeedEnabled then autoCarrySpeedEnabled=true;if setAutoCarrySpeedVisual then setAutoCarrySpeedVisual(true) end end
		if cfg.infiniteJump then infJumpEnabled=true;if setInfJumpVisual then setInfJumpVisual(true) end end
		if cfg.medusaCounter then medusaCounterEnabled=true;if setMedusaVisual then setMedusaVisual(true) end;setupMedusa(LP.Character) end
		if cfg.batCounter then batCounterEnabled=true;if setBatCounterVisual then setBatCounterVisual(true) end;startBatCounter() end
		if cfg.laggerMode then laggerToggled=true;speedMode=false;laggerPhase=cfg.laggerCarryMode and 2 or 1;refreshSpeedModeLabel()
		elseif cfg.carryMode then speedMode=false;toggleCarryMode() end
		if cfg.autoTPEnabled then autoTPEnabled=true;if setAutoTPVisual then setAutoTPVisual(true) end;startAutoTP() end
		if setAutoSwingVisual then setAutoSwingVisual(autoSwingEnabled) end
		if setMirrorTPVisual then setMirrorTPVisual(mirrorTPEnabled) end
		if cfg.autoBat then autoBatEnabled=true;if autoBatSetVisual then autoBatSetVisual(true) end;queueAutoBatStart() end
		if cfg.unwalkEnabled then unwalkEnabled=true;if setUnwalkVisual then setUnwalkVisual(true) end;task.spawn(function() task.wait(0.5);startUnwalk() end) end
		if cfg.antiLag then enableAntiLag();if setAntiLagVisual then setAntiLagVisual(true) end end
		if cfg.espEnabled then enableESP();if setEspVisual then setEspVisual(true) end end
		if cfg.espTracersEnabled then espTracersEnabled=true;if setEspTracersVisual then setEspTracersVisual(true) end end
		if cfg.ragdollCountdownEnabled then ragdollCountdownEnabled=true;if setRagdollCountdownVisual then setRagdollCountdownVisual(true) end end
		if cfg.showE01Warning then showE01Warning=true;if setE01WarningVisual then setE01WarningVisual(true) end end
		if type(cfg.fieldOfViewVal)=="number" then fieldOfViewVal=cfg.fieldOfViewVal end
		if cfg.fovChangeEnabled then fovChangeEnabled=true;if setFovChangeVisual then setFovChangeVisual(true) end;pcall(function() workspace.CurrentCamera.FieldOfView=fieldOfViewVal end) end
		if cfg.headlessEnabled then
			headlessEnabled=true
			if setHeadlessVisual then setHeadlessVisual(true) end
			task.defer(function()
				local char=LP.Character
				local head=char and char:FindFirstChild("Head")
				if head then
					head.Transparency=1
					for _,c in ipairs(head:GetChildren()) do
						if c:IsA("Decal") or c:IsA("Texture") then c.Transparency=1 end
					end
				end
			end)
		end
		if cfg.baseXRayEnabled then
			baseXRayEnabled=true
			if setBaseXRayVisual then setBaseXRayVisual(true) end
			task.defer(function()
				local plots=workspace:FindFirstChild("Plots")
				if not plots then return end
				for _,part in ipairs(plots:GetDescendants()) do
					if part:IsA("BasePart") then
						local n=part.Name:lower()
						local skip=n:find("brainrot") or n:find("animal") or n:find("pet") or n:find("handle")
						local par=part.Parent
						while par and par~=plots and not skip do
							local pn=tostring(par.Name):lower()
							if par:IsA("Tool") or pn:find("brainrot") or pn:find("animal") or pn:find("pet") then skip=true end
							par=par.Parent
						end
						if not skip then
							if not part:GetAttribute("_VyzeXRay") then part:SetAttribute("_VyzeXRay", part.LocalTransparencyModifier) end
							part.LocalTransparencyModifier=0.65
						end
					end
				end
			end)
		end
		if cfg.ragdollStealEnabled then ragdollStealEnabled=true;if setRagdollStealVisual then setRagdollStealVisual(true) end;if LP.Character then bindStealHitCharacter(LP.Character) end end
		if setGuiLockVisual then setGuiLockVisual(guiLocked) end
		if setMobileHideVisual then setMobileHideVisual(mobileButtonsHidden) end
		if setMobileLockVisual then setMobileLockVisual(mobileButtonsLocked) end
		if mobileButtonsHidden then setMobileButtonsVisible(false) end
		applyMobileBtnSize()
	end)
end
loadConfigKeys()
buildGui()
loadConfigState()
createMobilePanel()
task.spawn(function()
	task.wait(0.05)
	if mobileButtonsHidden then setMobileButtonsVisible(false) end
	applyMobileBtnSize()
end)
end
__vyze_main()
