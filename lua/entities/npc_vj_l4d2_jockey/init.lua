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
ENT.CanFlinch = 0 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 12 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = true -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {}
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
ENT.CanPounce = true
ENT.FootStepType = "CommonLight"
ENT.pNavigator = nil
ENT.EnemyCollisionBounds = nil
ENT.IncapDamage = 5

util.AddNetworkString("L4D2JockeyHUD")
util.AddNetworkString("L4D2JockeyHUDGhost")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:L4D2_InitializeHooks()

	hook.Add("KeyPress", "jockey_Dismount", function(ply, key)
		if GetConVar("vj_l4d2_dismount"):GetInt() == 1 then
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
		end
	end)

	self:SetHullType(self.HullType)
	self:SetCollisionBounds(Vector(-13, -13, 0), Vector(13, 13, 40))
	self.nextBacteria = 0
	self.soundVassal = ""
	self:SetGhost(tobool(GetConVarNumber("vj_l4d2_ghosted")))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnUnGhost()
    VJ_CreateSound(self,self.SoundTbl_Alert,90,self:VJ_DecideSoundPitch(95,105))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "event_emit FootStep" then
		self:FootStepSoundCode()
	end
	if key == "event_land" then
		if !self.IsGhosted then
			VJ_CreateSound(self,"vj_l4d2/pz/fall/bodyfall_largecreature.mp3",85,self:VJ_DecideSoundPitch(100,100))
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
	if self.HasEnemyIncapacitated == false then
		self:SetGhost(true)
	end
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
function ENT:PlayVassalationSound(lvl)
	if self.IncapSound && self.IncapSound:IsPlaying() == true then return end
	local snd = table.Random(self.SoundTbl_Vassal)
	self.IncapSound = CreateSound(self, snd)
	self.IncapSound:Play()
	timer.Simple(SoundDuration(snd) * 3, function()
		if self.IncapSound == nil then return end
		self.IncapSound:Stop()
		self.IncapSound = nil
	end)
	self:CallOnRemove("jockey_StopIncapSound", function(ent)
		if self.IncapSound ~= nil then
			self.IncapSound:Stop()
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ResetJockey()
	self:ClearPoseParameters()
	if IsValid(self.pNavigator) then
		if self.pNavigator.VJ_IsBeingControlled == true then
			local ctrl = self.pNavigator.VJ_TheController
			ctrl.VJ_TheControllerEntity:StopControlling(true)
			if self:Health() > 0 then
				local SpawnControllerObject = ents.Create("obj_vj_npccontroller")
				SpawnControllerObject.VJCE_Player = ctrl
				SpawnControllerObject:SetControlledNPC(self)
				SpawnControllerObject:Spawn()
				SpawnControllerObject:StartControlling()
			end
		end
		self.pNavigator:Remove()
	end
	self.HasEnemyIncapacitated = false
	if self.IncapSong then
		self.IncapSong:Stop()
		self.IncapSong = nil
	end
	self:VJ_ACT_PLAYACTIVITY(ACT_IDLE)
	self:SetParent(nil)
	self.AnimTbl_IdleStand = {ACT_IDLE}
	self.MovementType = VJ_MOVETYPE_GROUND
	self:SetCollisionBounds(Vector(-13, -13, 0),Vector(13, 13, self:OBBMaxs().z / 2))
	self:SetPos(self:GetPos() + self:GetUp() * self:OBBMaxs().z)
	if !IsValid(self.pIncapacitatedEnemy) then return end
	local enemy = self.pIncapacitatedEnemy
	self:Incap_Lighting(enemy, true)
	enemy:SetCollisionBounds(self.EnemyCollisionBounds[1], self.EnemyCollisionBounds[2])
	enemy:SetParent(nil)
	if not enemy:IsNPC() then
		enemy:SetPos(self:GetPos())
	end
	if IsValid(enemy:GetActiveWeapon()) then
		enemy:GetActiveWeapon():SetNoDraw(false)
	end
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
		if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= enemy then
			enemy:SetObserverMode(0)
			enemy:DrawViewModel(true)
			enemy:DrawWorldModel(true)
			enemy:SetPos(self:GetPos())
		end
		if table.Count(self.tblEnemyWeapons) > 0 then
            for i = 1, table.Count(self.tblEnemyWeapons) do
                local tbl = self.tblEnemyWeapons
                enemy.VJ_CanBePickedUpWithOutUse = true
                enemy.VJ_CanBePickedUpWithOutUse_Class = tbl[i][1]
                enemy:Give(tbl[i][1], true)
                local wpn = enemy:GetWeapon(tbl[i][1])
                if tbl[i][2][1] ~= -1 then
                    wpn:SetClip1(tbl[i][2][2])
                end
                if tbl[i][3][1] ~= -1 then
                    wpn:SetClip2(tbl[i][3][2])
                end
            end
            if enemy:HasWeapon(self.EnemyActiveWeapon) then
                enemy:SetActiveWeapon(enemy:GetWeapon(self.EnemyActiveWeapon))
            end
        end
		for a, c in ipairs(self.tblEnemyAmmo) do
			enemy:GiveAmmo(c, game.GetAmmoName(a), true)
		end
	end
	if IsValid(self.pEnemyRagdoll) then
		self.pEnemyRagdoll:Remove()
		self.pEnemyRagdoll = nil
	end
	self.pIncapacitatedEnemy = nil
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
function ENT:CustomOnThink()
	self:GetGroundType(self:GetPos())
	self:IgnoreIncappedEnemies()
	if self.IsGhosted then
		self:Ghost()
	end
	if self.IsGhosted then
		self.HasLeapAttack = false
		self.CanPounce = false
	else
		self.HasLeapAttack = true
		self.CanPounce = true
	end

	self.vecLastPos = self:GetPos()

	if IsValid(self.pEnemyRagdoll) then
		if IsValid(self.pIncapacitatedEnemy) then
			self.HasPoseParameterLooking = false
			local enemy = self.pNavigator
			if enemy:IsPlayer() then
				enemy = self
			end
			local rag = self.pEnemyRagdoll
			rag.bIsBeingPounced = true
			local velo = enemy:GetGroundSpeedVelocity()
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
			if math.Round(direction:Distance(fPos)) == 0 then
				if math.Round(direction:Distance(fPos)) == math.Round(directions[1]:Distance(fPos)) then
					rag.moveX = math.Remap(fDist, dMin, dMax, mins, maxs)
					rag.moveY = 0
					self:SetPoseParameter("move_x", math.Remap(fDist, dMin, dMax, mins, maxs))
					self:SetPoseParameter("move_y", 0)
				elseif math.Round(direction:Distance(fPos)) == math.Round(directions[2]:Distance(fPos)) then
					rag.moveX = 0
					rag.moveY = math.Remap(-fDist, dMin, dMax, mins, maxs)
					self:SetPoseParameter("move_x", 0)
					self:SetPoseParameter("move_y", math.Remap(-fDist, dMin, dMax, mins, maxs))
				elseif math.Round(direction:Distance(fPos)) == math.Round(directions[3]:Distance(fPos)) then
					rag.moveX = math.Remap(-fDist, dMin, dMax, mins, maxs)
					rag.moveY = 0
					self:SetPoseParameter("move_x", math.Remap(-fDist, dMin, dMax, mins, maxs))
					self:SetPoseParameter("move_y", 0)
				elseif math.Round(direction:Distance(fPos)) == math.Round(directions[4]:Distance(fPos)) then
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

	if self.IsPouncing == true && self.HasEnemyIncapacitated == false && self.CanPounce == true then
		local id = self.nEntityIndex
		local tbControllers = {}
		for _, x in ipairs(ents.FindByClass("npc_vj_l4d*")) do
			if x.VJ_IsBeingControlled then
				tbControllers[table.Count(tbControllers) + 1] = x.VJ_TheController
			end
		end
		for k, v in ipairs(ents.FindInSphere(self:GetPos(), self.IncapacitationRange)) do
			if IsValid(v) then
				if (v:IsPlayer() && v:Alive() && GetConVar('ai_ignoreplayers'):GetInt() == 0 && not table.HasValue(tbControllers, v)) or (v:IsNPC() && v ~= self) then
					if v:LookupBone("ValveBiped.Bip01_Pelvis") then
						if (self.VJ_IsBeingControlled && v:GetClass() ~= "obj_vj_bullseye" && self:IsEntityAlly(v) == false) || self:Disposition(v) == D_HT then
							if self.HasEnemyIncapacitated then return end
							if not self:CanIncapacitate(v) then return end
							self.HasEnemyIncapacitated = true
							self.nextVassalSound = CurTime()
							self:SetLocalVelocity(self:GetForward() * 0)
							self:SetCustomCollisionCheck(true)
							v:SetCustomCollisionCheck(true)
							self.nextIncapSong = CurTime()
							self.nextIncapDamage = CurTime()
							self.pIncapacitatedEnemy = v
							self.MovementType = VJ_MOVETYPE_STATIONARY

							self:SpawnCamera(self,25)

							self:ClearPoseParameters()

							v:SetNoDraw(true)

							if v:IsNPC() then
								for k, x in ipairs(ents.FindByClass("player")) do
									VJ_CreateSound(x,"vj_l4d2/music/tags/vassalationhit.mp3",90,self:VJ_DecideSoundPitch(100,100))
								end
								if GetConVar("vj_l4d2_npcs_dropweapons"):GetInt() == 0 then
									if IsValid(v:GetActiveWeapon()) then
										v:GetActiveWeapon():SetNoDraw(true)
									end
								else
									v:DropWeapon()
								end
							elseif v:IsPlayer() then
								self:StripEnemyWeapons(v)
								self:Incap_Lighting(v)
								self.Light1:SetKeyValue('lightcolor', "89 255 0 255")
								if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= v then
									v:SetObserverMode(OBS_MODE_CHASE)
									v:SpectateEntity(self.Camera)
									v:DrawViewModel(false)
									v:DrawWorldModel(false)
									v:SetFOV(80)
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
							mdl:SetParent(self)
							mdl:ResetSequence(1)
							mdl:ResetSequenceInfo()
							mdl:SetCycle(0)
							mdl:SetLocalPos(Vector(0, 0, 0))
							self:IncapacitateEnemy(v, mdl)

							local tr = util.TraceLine({start = self:GetPos(), endpos = self:GetPos() - self:GetUp() * 1000, filter = {enemy, self}})
							local navigator = ents.Create("npc_vj_jockey_controller")
							navigator:SetPos(tr.HitPos)
							navigator:Spawn()
							navigator:SetOwner(self)
							self.pNavigator = navigator
							self:SetParent(navigator)

							self:CallOnRemove("Jockey_RemoveNavigator", function(ent)
								if IsValid(self.pNavigator) then
									self.pNavigator:Remove()
								end
							end)

							navigator:SetCustomCollisionCheck(true)
							hook.Add("ShouldCollide", "Jockey_EnableCollisions1", function(ent1, ent2)
								if (ent1 == self and ent2 == v) || (ent1 == navigator and ent2 == v) || (ent1 == navigator and ent2 == self) then return false end
							end)

							self.pEnemyRagdoll = mdl
							self.EnemyMoveType = v:GetMoveType()

							self:SetCollisionBounds(Vector(-13, -13, self:OBBMaxs().z), Vector(13, 13, self:OBBMaxs().z * 2))
							v:SetParent(self.pNavigator)
							local mins, maxs = self:GetCollisionBounds()
							local m1, m2 = v:GetCollisionBounds()
							self.EnemyCollisionBounds = {m1, m2}
							v:SetCollisionBounds(mins, maxs)

							if self.VJ_IsBeingControlled then
								local ctrl = self.VJ_TheController
								ctrl.VJ_TheControllerEntity:StopControlling()
								if !IsValid(self.pNavigator) then return end
								local SpawnControllerObject = ents.Create("obj_vj_npccontroller")
								SpawnControllerObject.VJCE_Player = ctrl
								SpawnControllerObject:SetControlledNPC(self.pNavigator)
								SpawnControllerObject:Spawn()
								SpawnControllerObject:StartControlling()
							end

							self:SetAngles(v:GetAngles())

							v:CallOnRemove("jockey_ClearParent", function(ent)
								if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy == ent then
									self:ResetJockey()
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
		self:PlayIncapSong()
		self.HasIdleSounds = false
		self.HasMeleeAttack = false
		self.CombatFaceEnemy = false
		if self.VJ_IsBeingControlled then
			self.AnimTbl_IdleStand = {self:GetSequenceActivity(self:LookupSequence(self.IncapAnimation))}
		end
		if IsValid(self.pIncapacitatedEnemy) then
			local enemy = self.pIncapacitatedEnemy
			if CurTime() >= self.nextIncapDamage then
				enemy:TakeDamage(self.IncapDamage, self, self)
				VJ_CreateSound(self,table.Random(self.SoundTbl_MeleeAttack),75,self:VJ_DecideSoundPitch(100,100))
				self.nextIncapDamage = CurTime() + 1.5
			end
			if self.VJ_IsBeingControlled == false then
				if enemy:IsPlayer() then
					hook.Add("SetupMove", "player_RiddenSetupMovement", function(ply, mv, cmd)
						if self.pIncapacitatedEnemy == ply then
							if IsValid(self.pNavigator) then
								local nav = self.pNavigator
								if mv:KeyDown(IN_FORWARD) then
									if nav:IsOnGround() then
										nav:SetVelocity(nav:GetForward() * 50 + nav:GetUp() * 10)
									end
								end
								if mv:KeyDown(IN_BACK) then
									if nav:IsOnGround() then
										nav:SetVelocity(-nav:GetForward() * 50 + nav:GetUp() * 10)
									end
								end
								if mv:KeyDown(IN_MOVELEFT) then
									if nav:IsOnGround() then
										nav:SetVelocity(-nav:GetRight() * 50 + nav:GetUp() * 10)
									end
								end
								if mv:KeyDown(IN_MOVERIGHT) then
									if nav:IsOnGround() then
										nav:SetVelocity(nav:GetRight() * 50 + nav:GetUp() * 10)
									end
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
				if enemy:Alive() == true then
					enemy:SetLocalPos(Vector(0, 0, 0))
					self:SetLocalPos(Vector(0, 0, 0))
				end
			else
				enemy:SetLocalPos(Vector(0, 0, 0))
				self:SetLocalPos(Vector(0, 0, 0))
			end
			if IsValid(self.pEnemyRagdoll) then
				self.pEnemyRagdoll:SetLocalPos(Vector(0, 0, 0))
				self.pEnemyRagdoll:SetLocalAngles(Angle(0, 0, 0))
			end
			local dist = self:GetPos():Distance(enemy:GetPos())
			if dist > self.IncapacitationRange then
			--	self:ResetJockey()
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

	if self.VJ_IsBeingControlled then
		self.ConstantlyFaceEnemy = false
	else
		self.ConstantlyFaceEnemy = true
	end

	self:ManageHUD(self.VJ_TheController)

	if CurTime() >= self.nextBacteria then
		self:PlayBacteria()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if self.pIncapacitatedEnemy && dmginfo:GetAttacker() == self.pIncapacitatedEnemy then return end
	if self:IsShoved() then return end
	if dmginfo:GetDamageType() == DMG_CLUB || dmginfo:GetDamageType() == DMG_GENERIC then
		local function GetDirection()
			local directions = {
				{"Shoved_Backward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() + self:GetForward() * 25)},   --North; move back
				{"Shoved_Leftward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() + self:GetRight() * 25)},	 --East; move left
				{"Shoved_Forward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() - self:GetForward() * 25)},   --South; move forward
				{"Shoved_Rightward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() - self:GetRight() * 25)}	  --West; move right
			}
			table.sort(directions, function(a, b) return a[2] < b[2] end)
			return directions[1][1]
		end
		self:VJ_ACT_PLAYACTIVITY(GetDirection(),true,VJ_GetSequenceDuration(self,GetDirection()),false)
		if self.HasEnemyIncapacitated == true && IsValid(self.pIncapacitatedEnemy) then
			self:VJ_ACT_PLAYACTIVITY(GetDirection(),true,VJ_GetSequenceDuration(self,GetDirection()),false)
			self:ResetJockey()
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,GetCorpse)
	self:L4D2_DeathMessage(dmginfo:GetAttacker())
	self:ResetJockey()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo,hitgroup)
	self:VJ_ACT_PLAYACTIVITY("ACT_DIERAGDOLL",true,1.74,false)
end	  
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	self:ResetJockey()
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
