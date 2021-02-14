AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/jockey.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_j_h")
ENT.HullType = HULL_WIDE_SHORT
ENT.DisableWandering = true -- Disables wandering when the SNPC is idle
ENT.FindEnemy_CanSeeThroughWalls = true -- Should it be able to see through walls and objects? | Can be useful if you want to make it know where the enemy is at all times
ENT.HasPoseParameterLooking = true -- Does it look at its enemy using poseparameters?
ENT.PoseParameterLooking_InvertPitch = false -- Inverts the pitch poseparameters (X)
ENT.PoseParameterLooking_InvertYaw = false -- Inverts the yaw poseparameters (Y)
ENT.PoseParameterLooking_InvertRoll = false -- Inverts the roll poseparameters (Z)
ENT.PoseParameterLooking_TurningSpeed = 10 -- How fast does the parameter turn?
ENT.DeathCorpseAlwaysCollide = false -- Should the corpse always collide?
ENT.CallForHelp = false -- Does the SNPC call for help?
ENT.PoseParameterLooking_Names = {pitch={"body_pitch"},yaw={"body_yaw"},roll={}} -- Custom pose parameters to use, can put as many as needed
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
ENT.VJC_Data = {
	CameraMode = 1, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(40,10,-20), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "bip_head", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(0, 0, 5), -- The offset for the controller when the camera is in first person
}
ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_Postures = "Moving" -- "Both" = Moving or standing | "Moving" = Only when moving | "Standing" = Only when standing
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasBloodPool = false -- Does it have a blood pool?
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 65 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_j_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.HasLeapAttack = true -- Should the SNPC have a leap attack?
ENT.LeapAttackDamage = GetConVarNumber("vj_l4d2_j_d")
ENT.LeapAttackDamageType = DMG_SLASH -- Type of Damage
ENT.AnimTbl_LeapAttack = {ACT_JUMP} -- Melee Attack Animations
ENT.TimeUntilLeapAttackDamage = 0.5 -- How much time until it runs the leap damage code?
ENT.TimeUntilLeapAttackVelocity = 0.2 -- How much time until it runs the velocity code?
ENT.LeapAttackVelocityForward = 0 -- How much forward force should it apply?
ENT.LeapAttackVelocityUp = 270 -- How much upward force should it apply?
ENT.LeapAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.LeapAttackExtraTimers = {0.4,0.6,0.8,1} -- Extra leap attack timers | it will run the damage code after the given amount of seconds
ENT.StopLeapAttackAfterFirstHit = true
ENT.LeapAttackAnimationFaceEnemy = false -- Should it face the enemy while playing the leap attack animation?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.LeapDistance = 200 -- The distance of the leap, for example if it is set to 500, when the SNPC is 500 Unit away, it will jump
ENT.LeapToMeleeDistance = 100 -- How close does it have to be until it uses melee?
ENT.LeapAttackDamageDistance = 70 -- How far does the damage go?
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 12 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = true -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"Boomer.Concrete.WalkLeft","Boomer.Concrete.WalkRight"}
ENT.SoundTbl_Idle = {"JockeyZombie.Recognize"}
ENT.SoundTbl_Alert = {"JockeyZombie.Alert","JockeyZombie.Warn"}
ENT.SoundTbl_LeapAttackDamage = {"player/pz/hit/zombie_slice_1.mp3","player/pz/hit/zombie_slice_2.mp3","player/pz/hit/zombie_slice_3.mp3","player/pz/hit/zombie_slice_4.mp3","player/pz/hit/zombie_slice_5.mp3","player/pz/hit/zombie_slice_6.mp3"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.mp3","vj_l4d2/pz/hit/claw_hit_flesh_2.mp3","vj_l4d2/pz/hit/claw_hit_flesh_3.mp3","vj_l4d2/pz/hit/claw_hit_flesh_4.mp3"}
ENT.SoundTbl_LeapAttackJump = {"JockeyZombie.Alert","JockeyZombie.Warn"}
ENT.SoundTbl_LeapAttackDamageMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_Pain = {"JockeyZombie.Pain"}
ENT.SoundTbl_Death = {"JockeyZombie.Death"}

ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.FootStepSoundLevel = 80
ENT.AlertSoundLevel = 95
ENT.IdleSoundLevel = 95
ENT.DeathSoundLevel = 85
ENT.NextSoundTime_Idle1 = 1
ENT.NextSoundTime_Idle2 = 2
ENT.IdleSoundChance = 2
ENT.IdleSoundPitch1 = 100
ENT.IdleSoundPitch2 = 100
ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105
ENT.UseTheSameGeneralSoundPitch = false

-- Custom --
ENT.IsGhosted = false
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/jockeybacteria.mp3","vj_l4d2/music/bacteria/jockeybacterias.mp3"}
ENT.SoundTbl_Incapacitation = {"vj_l4d2/music/special_attacks/vassalation.mp3"}
ENT.SoundTbl_Vassal = {"player/jockey/voice/attack/jockey_attackloop01.mp3", "player/jockey/voice/attack/jockey_attackloop02.mp3", "player/jockey/voice/attack/jockey_attackloop03.mp3", "player/jockey/voice/attack/jockey_attackloop04.mp3"}
ENT.BacteriaSound = nil
ENT.IncapSong = nil
ENT.CanPlayIncapSong = true
ENT.nEntityIndex = -1
ENT.IncapacitationRange = 100
ENT.HasEnemyIncapacitated = false
ENT.IsIncapacitating = false
ENT.IsPouncing = false
ENT.pIncapacitatedEnemy = nil
ENT.pEnemyRagdoll = nil
ENT.IncapAnimation = "Jockey_Ride"
ENT.vecLastPos = Vector(0, 0, 0)
ENT.tblEnemyAmmo = {}
ENT.tblEnemyWeapons = {}
ENT.GhostRunAwayT = CurTime()
ENT.CanSpawnWhileGhosted = false
ENT.HasSpawned = false
ENT.IsGhosted = false
ENT.CanIncap = true

util.AddNetworkString("L4D2JockeyHUD")
util.AddNetworkString("L4D2JockeyHUDGhost")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetHullType(self.HullType)
	self:SetCollisionBounds(Vector(-13, -13, 0), Vector(13, 13, 40))
	self.nextBacteria = 0
	self.soundVassal = ""
	self:SetGhost(tobool(GetConVarNumber("vj_l4d2_ghosted")))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ResetJockey()
	local enemy = self.pIncapacitatedEnemy
	self:Pounce_Effects(true)
	self.HasEnemyIncapacitated = false
	if self.IncapSong ~= nil then
		self.IncapSong:Stop()
	end
	self:SetParent(nil)
	self.AnimTbl_IdleStand = {ACT_IDLE}
	self.MovementType = VJ_MOVETYPE_GROUND
	self:VJ_ACT_PLAYACTIVITY("Pounce", true, 0, false)
	self:SetCollisionBounds(Vector(-13, -13, 0),Vector(13, 13, self:OBBMaxs().z / 2))
	self:SetPos(self:GetPos() + self:GetUp() * self:OBBMaxs().z)
	if !IsValid(self.pIncapacitatedEnemy) then return end
	hook.Add("ShouldCollide", "Jockey_EnableCollisions", function(ent1, ent2)
		if (ent1 == self and ent2 == enemy) then return true end
	end)
	if enemy:GetNoDraw() == true then
		enemy:SetNoDraw(false)
	end
	if enemy:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
		enemy:RemoveEFlags(EFL_NO_THINK_FUNCTION)
	end
	enemy:SetMoveType(self.EnemyMoveType)
	self.EnemyMoveType = nil
	if enemy:IsPlayer() then
		enemy:SetObserverMode(0)
        enemy:DrawViewModel(true)
        enemy:DrawWorldModel(true)
		if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= enemy then
			enemy:SetPos(self.vecLastPos)
			enemy:SetObserverMode(0)
			enemy:DrawViewModel(true)
			enemy:DrawWorldModel(true)
		end
	end
	net.Start("infected_RemoveCSEnt")
		net.WriteString(tostring(self:EntIndex()))
	net.Broadcast()
	if IsValid(self.pEnemyRagdoll) then
		self.pEnemyRagdoll:Remove()
		self.pEnemyRagdoll = nil
	end
	self.pIncapacitatedEnemy = nil
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSchedule()
	local ent = self.pIncapacitatedEnemy
	if IsValid(ent) then
		local dist = self:GetPos():Distance(ent:GetPos())
		if dist <= self.IncapacitationRange then
			if ent:Health() <= 0 then return end
			self:VJ_PlaySequence("Jockey_Ride")
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CanIncapacitate(ent)
	for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
		if v.HasEnemyIncapacitated == true && IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == ent then
			return false
		end
	end
	for k, v in ipairs(ents.FindByClass("npc_vj_l4d_*")) do
		if v.HasEnemyIncapacitated == true && IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == ent then
			return false
		end
	end
	return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:IsEntityAlly(ent)
	if ent:IsNPC() then
		if ent.IsVJBaseSNPC == true then
			for i = 1, table.Count(ent.VJ_NPC_Class) do
				for c = 1, table.Count(self.VJ_NPC_Class) do
					if ent.VJ_NPC_Class[i] == self.VJ_NPC_Class[c] then
						return true
					end
				end
			end
		end
	elseif ent:IsPlayer() then
		if table.HasValue(self.VJ_NPC_Class, "CLASS_PLAYER_ALLY") then
			return true
		end
		if self.VJ_IsBeingControlled && self.VJ_TheController == ent then 
			return true
		end
	end
	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Pounce_Effects(fadeout)
	if fadeout == false then
		self.spotlightpoint = ents.Create("env_projectedtexture")
		self.spotlightpoint:SetPos( self:GetPos() +self:GetUp()*110)
		self.spotlightpoint:SetKeyValue('lightcolor', "140 255 0")
		self.spotlightpoint:SetKeyValue('lightfov', '70')
		self.spotlightpoint:SetKeyValue('brightnessscale', '8')
		self.spotlightpoint:SetKeyValue('farz', '612')
		self.spotlightpoint:SetKeyValue('nearz', '0.1')
		self.spotlightpoint:SetKeyValue('shadowquality', '1')
		self.spotlightpoint:SetKeyValue('enableshadows', '1')
		self.spotlightpoint:SetKeyValue('target', '!player')
		self.spotlightpoint:SetKeyValue('texturename', 'effects/flashlight/hard')
		self.spotlightpoint:SetKeyValue('lightonlytarget', 'on')
		self.spotlightpoint:SetParent(self)
		self.spotlightpoint:Spawn()
		self.spotlightpoint:Activate()
		self:DeleteOnRemove(self.spotlightpoint)
		self.Light1 = self.spotlightpoint
		self.spotlightpoint1 = ents.Create("env_projectedtexture")
		self.spotlightpoint1:SetPos( self:GetPos() +self:GetUp()*110)
		self.spotlightpoint1:SetKeyValue('lightcolor', "140 255 0")
		self.spotlightpoint1:SetKeyValue('lightfov', '70')
		self.spotlightpoint1:SetKeyValue('brightnessscale', '8')
		self.spotlightpoint1:SetKeyValue('farz', '612')
		self.spotlightpoint1:SetKeyValue('nearz', '0.1')
		self.spotlightpoint1:SetKeyValue('shadowquality', '1')
		self.spotlightpoint1:SetKeyValue('enableshadows', '1')
		self.spotlightpoint1:SetKeyValue('target', '!player')
		self.spotlightpoint1:SetKeyValue('texturename', 'effects/flashlight/hard')
		self.spotlightpoint1:SetKeyValue('lightonlytarget', 'on')
		self.spotlightpoint1:SetParent(self)
		self.spotlightpoint1:Spawn()
		self.spotlightpoint1:Activate()
		self:DeleteOnRemove(self.spotlightpoint1)
		self.Light2 = self.spotlightpoint1
		local glowlight = ents.Create("light_dynamic")
		glowlight:SetKeyValue("_light","140 255 0")
		glowlight:SetKeyValue("brightness","5")
		glowlight:SetKeyValue("distance","107")
		glowlight:SetKeyValue("style","0")
		glowlight:SetPos(self:GetPos() +self:GetUp()*95)
		glowlight:SetParent(self)
		glowlight:Spawn()
		glowlight:Activate()
		--glowlight:Fire("SetParentAttachment","attach_blur")
		glowlight:Fire("TurnOn","",0)
		self:DeleteOnRemove(glowlight)
		self.Light3 = glowlight
	end
	if fadeout == true then
		if IsValid(self.Light1) && IsValid(self.Light2) && IsValid(self.Light3) then
			self.Light1:Remove()
			self.Light2:Remove()
			self.Light3:Remove()
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlayVassalationSound(lvl)
	if IsValid(self.IncapSound) && self.IncapSound:IsPlaying() == true then return end
	local snd = table.Random(self.SoundTbl_Vassal)
	self.IncapSound = VJ_CreateSound(self, snd, 80)
	timer.Simple(math.Round(SoundDuration(snd)), function()
		if !IsValid(self.IncapSound) then return end
		self.IncapSound:Stop()
	end)
	local id = self:EntIndex()
	self:CallOnRemove("jockey_StopIncapSound", function(ent)
		if self.IncapSound ~= nil then
			self.IncapSound:Stop()
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_AfterStartTimer()
	self:SetNW2Int("PounceT",CurTime() +self.NextLeapAttackTime)
	if self.VJ_IsBeingControlled then
		timer.Simple(2, function()
		    if IsValid(self) then
			    self:VJ_ACT_PLAYACTIVITY("Pounce", false, 0, false)
			end
		end)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	if self.IsGhosted then
		self:Ghost()
	end
	if self.IsGhosted then
        self.CanIncap = false
        self.HasLeapAttack = false
    else
        self.CanIncap = true
	self.HasLeapAttack = true
    end

	self.vecLastPos = self:GetPos()

	if IsValid(self.pEnemyRagdoll) then
		if IsValid(self.pIncapacitatedEnemy) then
			self.HasPoseParameterLooking = false
			local enemy = self.pIncapacitatedEnemy
			if enemy:IsPlayer() then
				enemy = self
			end
			local rag = self.pEnemyRagdoll
			rag.bIsBeingPounced = true
			local velo = enemy:GetVelocity()
			local ePos = enemy:GetPos()
			local fPos = ePos + velo
			local fDist = ePos:Distance(fPos)
			local eFor = enemy:GetForward() * fDist
			local eSide = enemy:GetRight() * fDist
			local directions = {
				[1] = Vector(ePos + eFor),
				[2] = Vector(ePos - eSide),
				[3] = Vector(ePos - eFor),
				[4] = Vector(ePos + eSide)
			}
			local mins, maxs = -1, 1
			local dMin, dMax
			if enemy:IsPlayer() then
				dMin, dMax = -enemy:GetMaxSpeed(), enemy:GetMaxSpeed()
			else
				dMin, dMax = -fDist, fDist
			end
			local dDir = math.min(directions[1]:Distance(fPos), directions[2]:Distance(fPos), directions[3]:Distance(fPos), directions[4]:Distance(fPos))
			local direction
			if dDir == directions[1]:Distance(fPos) then
				direction = directions[1]
			elseif dDir == directions[2]:Distance(fPos) then
				direction = directions[2]
			elseif dDir == directions[3]:Distance(fPos) then
				direction = directions[3]
			elseif dDir == directions[4]:Distance(fPos) then
				direction = directions[4]
			end
			fDist = math.Round(fDist)
			if direction:Distance(fPos) < 20 then
				if dDir == math.Round(directions[1]:Distance(fPos)) then
					rag.moveX = math.Remap(fDist, dMin, dMax, mins, maxs)
					rag.moveY = 0
					self:SetPoseParameter("move_x", math.Remap(fDist, dMin, dMax, mins, maxs))
					self:SetPoseParameter("move_y", 0)
				elseif dDir == math.Round(directions[2]:Distance(fPos)) then
					rag.moveX = 0
					rag.moveY = math.Remap(-fDist, dMin, dMax, mins, maxs)
					self:SetPoseParameter("move_x", 0)
					self:SetPoseParameter("move_y", math.Remap(-fDist, dMin, dMax, mins, maxs))
				elseif dDir == math.Round(directions[3]:Distance(fPos)) then
					rag.moveX = math.Remap(-fDist, dMin, dMax, mins, maxs)
					rag.moveY = 0
					self:SetPoseParameter("move_x", math.Remap(-fDist, dMin, dMax, mins, maxs))
					self:SetPoseParameter("move_y", 0)
				elseif dDir == math.Round(directions[4]:Distance(fPos)) then
					rag.moveX = 0
					rag.moveY = math.Remap(fDist, dMin, dMax, mins, maxs)
					self:SetPoseParameter("move_x", 0)
					self:SetPoseParameter("move_y", math.Remap(fDist, dMin, dMax, mins, maxs))
				end
			else
				local dFor = math.min(directions[1]:Distance(fPos), directions[3]:Distance(fPos))
				local dSide = math.min(directions[2]:Distance(fPos), directions[4]:Distance(fPos))
				if dFor == directions[1]:Distance(fPos) then
					rag.moveX = math.Remap(fDist, dMin, dMax, mins, maxs)
					self:SetPoseParameter("move_x", math.Remap(fDist, dMin, dMax, mins, maxs))
				else
					rag.moveX = math.Remap(-fDist, dMin, dMax, mins, maxs)
					self:SetPoseParameter("move_x", math.Remap(-fDist, dMin, dMax, mins, maxs))
				end
				if dSide == directions[2]:Distance(fPos) then
					rag.moveY = math.Remap(-fDist, dMin, dMax, mins, maxs)
					self:SetPoseParameter("move_y", math.Remap(-fDist, dMin, dMax, mins, maxs))
				else
					rag.moveY = math.Remap(fDist, dMin, dMax, mins, maxs)
					self:SetPoseParameter("move_y", math.Remap(fDist, dMin, dMax, mins, maxs))
				end
			end
		end
	end

	if IsValid(self.pIncapacitatedEnemy) then
		if CurTime() >= self.nextIncapSong then
			self:Jockey_PlayIncapSong(true,false)
		end
	end

	if self:GetSequence() == self:LookupSequence("Jump") then
		self.IsPouncing = true 
	else
		self.IsPouncing = false
	end

	if self:GetSequence() == self:LookupSequence(self.IncapAnimation) then
		self.IsIncapacitating = true
	else
		self.IsIncapacitating = false
	end

	if self.IsIncapacitating == true && IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy:Health() <= 0 then
		self:ResetJockey()
	end

	if self.IsPouncing == true && self.HasEnemyIncapacitated == false && self.CanIncap then
		for k, v in ipairs(ents.FindInSphere(self:GetPos(), self.IncapacitationRange)) do
			if IsValid(v) then
				if (v:IsPlayer() && v:Alive() && GetConVar("ai_ignoreplayers"):GetInt() == 0) or (v:IsNPC() && v ~= self) then
					if v:LookupBone("ValveBiped.Bip01_Pelvis") then
						if (self.VJ_IsBeingControlled && v:GetClass() ~= "obj_vj_bullseye" && self:IsEntityAlly(v) == false) || self:Disposition(v) == D_HT then
							if not self:CanIncapacitate(v) then return end
							self.HasEnemyIncapacitated = true
							self.nextVassalSound = CurTime()
							self:SetLocalVelocity(self:GetForward() * 0)
							self:SetCustomCollisionCheck(true)
							v:SetCustomCollisionCheck(true)
							self.nextIncapSong = CurTime()
							hook.Add("ShouldCollide", "Jockey_EnableCollisions", function(ent1, ent2)
								if (ent1 == self and ent2 == v) then return false end
							end)
							self.pIncapacitatedEnemy = v
							self.MovementType = VJ_MOVETYPE_STATIONARY
							local camera = ents.Create("prop_dynamic")
							camera:SetModel("models/error.mdl")
							camera:SetPos(self:GetPos())
							camera:Spawn()
						    camera:Activate()
							camera:SetRenderMode(RENDERMODE_NONE)
							camera:DrawShadow(false)
							camera:SetParent(self)
							camera:Fire("SetParentAttachment","pelvis")
							self:DeleteOnRemove(camera)
							v:SetNoDraw(true)
					        if v:IsNPC() then
					        	for k, x in ipairs(ents.FindByClass("player")) do
					        	    VJ_CreateSound(x,"vj_l4d2/music/tags/vassalationhit.mp3",90,self:VJ_DecideSoundPitch(100,100))
					            end
								if GetConVar("vj_l4d2_npcs_dropweapons"):GetInt() == 0 then
					            	v:GetActiveWeapon():SetNoDraw(true)
					            else
									v:DropWeapon()
								end
							elseif v:IsPlayer() then
					            if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= v then
					                v:SetObserverMode(OBS_MODE_CHASE)
					                v:SpectateEntity(camera)
					                v:DrawViewModel(false)
					                v:DrawWorldModel(false)
					                v:SetFOV(85)
					                self:Pounce_Effects(false)
					            end
							end
							local ang = v:GetAngles()
							local mdl = ents.Create("prop_anim_survivor")
							mdl:SetModel("models/survivors/L4D2_Human_base.mdl")
							mdl:SetPos(v:GetPos())
							mdl:SetAngles(ang)
							mdl:Spawn()
							mdl:SetRenderMode(1)
							mdl:SetColor(Color(0, 0, 0, 0))
							if v:IsPlayer() then
								mdl:SetParent(self)
							else
								mdl:SetParent(v)
							end
							mdl:ResetSequence(1)
							mdl:ResetSequenceInfo()
							mdl:SetCycle(0)
							mdl:SetLocalPos(Vector(0, 0, 0))
							timer.Simple(0.15, function()
								if !IsValid(self) then return end
								net.Start("infected_PounceEnemy")
									net.WriteString(tostring(self:EntIndex()))
									net.WriteEntity(mdl)
									net.WriteString(v:GetModel())
								net.Broadcast()
							end)
							self.EnemyMoveType = v:GetMoveType()
							if v:IsPlayer() then
								self:SetCollisionBounds(Vector(-13, -13, 0),Vector(13, 13, self:OBBMaxs().z * 2))
								v:SetParent(self)
								v:SetLocalPos(Vector(0, 0, 0))
								v:SetMoveType(MOVETYPE_CUSTOM)
							else
								self:SetCollisionBounds(Vector(-13, -13, self:OBBMaxs().z),Vector(13, 13, self:OBBMaxs().z * 2))
								self:SetParent(v)
							end
							self:SetAngles(v:GetAngles())
							self.pEnemyRagdoll = mdl
							v:CallOnRemove("jockey_ClearParent", function(ent)
								if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy == ent then
									--[[self:SetCollisionBounds(Vector(25,25,25), Vector(-25,-25,0)) 
									self:SetParent(nil)]]
									self:ResetJockey()
									net.Start("infected_RemoveCSEnt")
										net.WriteString(tostring(self:EntIndex()))
									net.Broadcast()
								end
								if ent:IsPlayer() then
									ent:SetParent(nil)
								end
							end)		  
							hook.Add("PlayerDeath", "player_RemoveCSEnt", function( victim, inflictor, attacker )
								if victim == self.pIncapacitatedEnemy then
									victim:SetParent(nil)
									victim:SetObserverMode(0)
									victim:DrawViewModel(true)
									victim:DrawWorldModel(true)
								end
							end)
							self:CallOnRemove("jockey_OnRemove", function(ent)
								net.Start("infected_RemoveCSEnt")
									net.WriteString(tostring(ent:EntIndex()))
								net.Broadcast()
								if ent.IncapSong ~= nil then
									ent.IncapSong:Stop()
								end
								local enemy = self.pIncapacitatedEnemy
								if IsValid(enemy) then
									if enemy:IsPlayer() then
										enemy:SetMoveType(self.EnemyMoveType)
										enemy:SetPos(self.vecLastPos)
										enemy:SetObserverMode(0)
										enemy:DrawViewModel(true)
										enemy:DrawWorldModel(true)
										if table.Count(self.tblEnemyWeapons) > 0 then
											for i = 1, table.Count(self.tblEnemyWeapons) do
												enemy:Give(self.tblEnemyWeapons[i], true)
											end
										end
										if table.Count(self.tblEnemyAmmo) > 0 then
											for i = 1, table.Count(self.tblEnemyAmmo) do
												enemy:GiveAmmo(self.tblEnemyAmmo[i][2], game.GetAmmoName(self.tblEnemyAmmo[1]), true)
											end
										end
									end
									if enemy:GetNoDraw() == true then
										enemy:SetNoDraw(false)
									end
									if enemy:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
										enemy:RemoveEFlags(EFL_NO_THINK_FUNCTION)
									end
									if IsValid(self.pEnemyRagdoll) then
										self.pEnemyRagdoll:Remove()
									end
								end
							end)
						end
					end
				end
			end
		end
	end
	if self.HasEnemyIncapacitated == true then 
		if (IsValid(self.IncapSound) && self.IncapSound:IsPlaying() == false) || self.IncapSound == nil then
			self:PlayVassalationSound()
		end
		self.HasIdleSounds = false
		self.HasMeleeAttack = false
		self.CombatFaceEnemy = false
		if self.VJ_IsBeingControlled then
			self.AnimTbl_IdleStand = {self:GetSequenceActivity(self:LookupSequence(self.IncapAnimation))}
		end
		if IsValid(self.pIncapacitatedEnemy) then
			local enemy = self.pIncapacitatedEnemy
			if self.VJ_IsBeingControlled == false then
				for k, v in ipairs(ents.FindInSphere(self:GetPos(), 1500)) do
					if IsValid(v) && (v:GetClass() == "obj_vj_l4d2_acidpuddle" || v:GetClass() == "npc_vj_l4d2_tank" || v:GetClass() == "npc_vj_l4d2_witch_s" || v:GetClass() == "npc_vj_l4d2_witch_w") then
						if self:IsLineOfSightClear(v:GetPos()) then
							local d = self:GetPos():Distance(v:GetPos()) 
							if d > 100 then
								local speed = 600
								local pos = enemy:GetPos()
								local tpos = v:GetPos()
								local di = pos:Distance(tpos)
								local fr = speed/di
								local x = pos.x + speed * (tpos.x - pos.x) / di
								local y = pos.y + speed * (tpos.y - pos.y) / di
								local x1 = x - pos.x
								local y1 = y - pos.y
								if enemy:IsOnGround() || enemy:GetMoveType() == MOVETYPE_FLY then
									local sp = 20
									local dx = pos.x + sp * (tpos.x - pos.x) / di
									local dy = pos.y + sp * (tpos.y - pos.y) / di
									local x2 = dx - pos.x
									local y2 = dy - pos.y
									local tr = util.TraceLine({start = pos, endpos = Vector(dx, dy, v:GetPos().z), filter = {self, enemy, v, mdl}})
									if tr.Hit == true then
										if not enemy:IsPlayer() then
											enemy:SetMoveType(MOVETYPE_FLY)
											enemy:SetLocalVelocity(enemy:GetUp() * 12)
										else
											enemy:SetMoveType(MOVETYPE_FLY)
											self:SetLocalVelocity(self:GetUp() * 100)
										end
									else
										enemy:SetMoveType(self.EnemyMoveType)
										if not enemy:IsPlayer() then
											enemy:SetVelocity(Vector(x1, y1, 0))
										else
											self:SetVelocity(Vector(x1, y1, 0))
										end
									end
								end
							end
						end
					end
				end
				if enemy:IsPlayer() then
					hook.Add("SetupMove", "player_RiddenSetupMovement", function(ply, mv, cmd)
						if self.pIncapacitatedEnemy == ply then
							if mv:KeyDown(IN_FORWARD) then
								if enemy:IsOnGround() then
									self:SetLocalVelocity(self:GetForward() * 400)
								end
							end
							if mv:KeyDown(IN_BACK) then
								if enemy:IsOnGround() then
									self:SetLocalVelocity(-self:GetForward() * 400)
								end
							end
							if mv:KeyDown(IN_MOVELEFT) then
								if enemy:IsOnGround() then
									self:SetLocalVelocity(-self:GetRight() * 400)
								end
							end
							if mv:KeyDown(IN_MOVERIGHT) then
								if enemy:IsOnGround() then
									self:SetLocalVelocity(self:GetRight() * 400)
								end
							end
						end
					end)
				end
			else
				hook.Add("SetupMove", "jockey_RideSetupMovement", function(ply, mv, cmd)
					if self.VJ_TheController == ply then
						if !IsValid(enemy) then return end
						if mv:KeyDown(IN_FORWARD) then
							if enemy:IsOnGround() then
								enemy:SetVelocity(enemy:GetForward() * 500)
							end
						end
						if mv:KeyDown(IN_BACK) then
							if enemy:IsOnGround() then
								enemy:SetVelocity(-enemy:GetForward() * 500)
							end
						end
						if mv:KeyDown(IN_MOVELEFT) then
							if enemy:IsOnGround() then
								enemy:SetVelocity(-enemy:GetRight() * 500)
							end
						end
						if mv:KeyDown(IN_MOVERIGHT) then
							if enemy:IsOnGround() then
								enemy:SetVelocity(enemy:GetRight() * 500)
							end
						end
					end
				end)
			end
			if enemy:IsPlayer() then
				self:SetCollisionBounds(Vector(-13, -13, 0),Vector(13, 13, enemy:OBBMaxs().z))
				enemy:SetLocalPos(Vector(0, 0, 0))
			else
				self:SetLocalPos(self:GetLocalPos() * 0)
				self:SetLocalAngles(Angle(0, 0, 0))
			end
			if IsValid(self.pEnemyRagdoll) then
				self.pEnemyRagdoll:SetLocalPos(Vector(0, 0, 0))
				self.pEnemyRagdoll:SetLocalAngles(Angle(0, 0, 0))
			end
			local dist = self:GetPos():Distance(enemy:GetPos())
			if dist > self.IncapacitationRange then
				self:ResetJockey()
			end
		else
			self:ResetJockey()
		end
	else
		if self.IncapSound ~= nil then
			self.IncapSound:Stop()
		end
		self.HasIdleSounds = true
		self.HasMeleeAttack = true
		self.CombatFaceEnemy = true
	end

	self:ManageHUD(self.VJ_TheController)
	hook.Add("KeyPress", "Ghosting", function(ply, key)
        if self.VJ_IsBeingControlled then
            if key == IN_USE then
        	    if self.IsGhosted == true then
        	        self:SetGhost(false)
        	    elseif self.IsGhosted == false then
        	        self:SetGhost(true)  
        	    end
            end
        end
    end)
    
	if self.VJ_IsBeingControlled == true then
		hook.Add("KeyPress", "jockey_Crouch", function(ply, key)
			if self.VJ_TheController == ply then
				if key == IN_DUCK then
					self.AnimTbl_IdleStand = {self:GetSequenceActivity(self:LookupSequence("Crouch_Idle"))}
					self.AnimTbl_Walk = {ACT_RUN_CROUCH}
					self.AnimTbl_Run = {ACT_RUN_CROUCH}
				end
			end
		end)
		hook.Add("KeyRelease", "jockey_CrouchRelease", function(ply, key)
			if self.VJ_TheController == ply then
				if key == IN_DUCK then
					self.AnimTbl_IdleStand = {ACT_IDLE}
					self.AnimTbl_Walk = {ACT_WALK}
					self.AnimTbl_Run = {ACT_RUN}
				end
			end
		end)
		hook.Add("KeyPress", "jockey_Dismount", function(ply, key)
			if self.HasEnemyIncapacitated then
				if self.VJ_TheController == ply then
					if key == IN_JUMP then
						self.HasEnemyIncapacitated = false
						self:VJ_ACT_PLAYACTIVITY("Pounce", true, 0, false)
						self:SetVelocity(self:GetUp() * 100 - self:GetForward() * 200)
						timer.Simple(2, function()
							if !IsValid(self) then return end
							self:ResetJockey()
						end)
					end
				end
			end
		end)
	end
	if CurTime() >= self.nextBacteria then
		self:PlayBacteria()
	end
end

--leave this alone
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "event_emit FootStep" then
		self:FootStepSoundCode()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,GetCorpse)
    local ent = self:GetEnemy()
    if IsValid(ent) then
        if ent:IsNPC() then
            PrintMessage(HUD_PRINTTALK, ent:GetClass().." killed ".. self:GetName())
        elseif ent:IsPlayer() then
            PrintMessage(HUD_PRINTTALK, ent:GetName().." killed ".. self:GetName())
        end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo,hitgroup)
    self:VJ_ACT_PLAYACTIVITY("ACT_DIERAGDOLL",true,1.74,false)
    VJ_STOPSOUND(self.soundtrack)
    VJ_STOPSOUND(self.attacking)
end      
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
    VJ_STOPSOUND(self.soundtrack)
    VJ_STOPSOUND(self.attacking)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
    self:SetGhost(true)
    function self.VJ_TheControllerEntity:CustomOnStopControlling()
        net.Start("L4D2JockeyHUD")
            net.WriteBool(true)
            net.WriteEntity(self)
            net.WriteEntity(ply)
        net.Send(ply)
        net.Start("L4D2JockeyHUDGhost")
            net.WriteBool(true)
            net.WriteEntity(self)
            net.WriteEntity(ply)
        net.Send(ply)
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ManageHUD(ply)
    if self.VJ_IsBeingControlled == true then
        if self.IsGhosted == true then
            net.Start("L4D2JockeyHUDGhost")
                net.WriteBool(false)
                net.WriteEntity(self)
                net.WriteEntity(ply)
            net.Send(ply)
            net.Start("L4D2JockeyHUD")
                net.WriteBool(true)
                net.WriteEntity(self)
                net.WriteEntity(ply)
            net.Send(ply)
        elseif self.IsGhosted == false then
            net.Start("L4D2JockeyHUD")
                net.WriteBool(false)
                net.WriteEntity(self)
                net.WriteEntity(ply)
            net.Send(ply)
            net.Start("L4D2JockeyHUDGhost")
                net.WriteBool(true)
                net.WriteEntity(self)
                net.WriteEntity(ply)
            net.Send(ply)
        end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if dmginfo:GetDamageType() == DMG_CLUB then
		self:VJ_ACT_PLAYACTIVITY("Shoved_BackWard",false,3,false)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	local randattack = math.random(1,2)
	if randattack == 1 then
		self.AnimTbl_MeleeAttack = {"vjges_Jockey_Melee"}
		self.TimeUntilMeleeAttackDamage = 0.25
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_j_d")
	elseif randattack == 2 then
		self.AnimTbl_MeleeAttack = {"vjges_Jockey_Melee"}
		self.TimeUntilMeleeAttackDamage = 0.25
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_j_d")
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
