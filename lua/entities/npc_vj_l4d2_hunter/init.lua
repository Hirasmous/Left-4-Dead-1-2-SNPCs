AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/hunter.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 250
ENT.HasBloodPool = false -- Does it have a blood pool?
ENT.HullType = HULL_HUMAN
ENT.HasPoseParameterLooking = true -- Does it look at its enemy using poseparameters?
ENT.PoseParameterLooking_InvertPitch = false -- Inverts the pitch poseparameters (X)
ENT.PoseParameterLooking_InvertYaw = false -- Inverts the yaw poseparameters (Y)
ENT.PoseParameterLooking_InvertRoll = false -- Inverts the roll poseparameters (Z)
ENT.PoseParameterLooking_TurningSpeed = 10 -- How fast does the parameter turn?
ENT.DeathCorpseAlwaysCollide = false -- Should the corpse always collide?
ENT.CallForHelp = false -- Does the SNPC call for help?
ENT.PoseParameterLooking_Names = {pitch={"body_pitch"},yaw={"body_yaw"},roll={}} -- Custom pose parameters to use, can put as many as needed
ENT.VJC_Data = {
	CameraMode = 1, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(40, 10, -50), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "ValveBiped.Bip01_Head1", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(0, 0, 5), -- The offset for the controller when the camera is in first person
}
ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_Postures = "Moving" -- "Both" = Moving or standing | "Moving" = Only when moving | "Standing" = Only when standing
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 65 -- How far does the damage go?
ENT.MeleeAttackDamage = 15
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.HasLeapAttack = true -- Should the SNPC have a leap attack?
ENT.LeapAttackDamage = 15
ENT.LeapAttackDamageType = DMG_SLASH -- Type of Damage
ENT.TimeUntilLeapAttackDamage = 2 -- How much time until it runs the leap damage code?
ENT.TimeUntilLeapAttackVelocity = 2 -- How much time until it runs the velocity code?
ENT.NextLeapAttackTime = 1 -- How much time until it can use a leap attack?
ENT.NextAnyAttackTime_Leap = 0.4 -- How much time until it can use any attack again? | Counted in Seconds
ENT.LeapAttackVelocityForward = 300 -- How much forward force should it apply?
ENT.LeapAttackVelocityUp = 285 -- How much upward force should it apply?
ENT.LeapAttackAnimationDelay = 2 -- It will wait certain amount of time before playing the animation
ENT.LeapAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the leap attack animation?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.LeapDistance = 750 -- The distance of the leap, for example if it is set to 500, when the SNPC is 500 Unit away, it will jump
ENT.LeapToMeleeDistance = 200 -- How close does it have to be until it uses melee?
ENT.LeapAttackDamageDistance = 100 -- How far does the damage go?
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 0 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 0 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.AnimTbl_Flinch = {"vjges_flinch_stomach","vjges_flinch_head"} -- If it uses normal based animation, use this
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = false -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward_02"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward_02"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward_01"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {}
ENT.SoundTbl_Idle = {"HunterZombie.Voice","HunterZombie.Growl"}
ENT.SoundTbl_Alert = {"HunterZombie.Alert"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.mp3","vj_l4d2/pz/hit/claw_hit_flesh_2.mp3","vj_l4d2/pz/hit/claw_hit_flesh_3.mp3","vj_l4d2/pz/hit/claw_hit_flesh_4.mp3"}
ENT.SoundTbl_BeforeMeleeAttack = {"player/pz/voice/attack/zombiedog_attack1.mp3","player/pz/voice/attack/zombiedog_attack2.mp3","player/pz/voice/attack/zombiedog_attack3.mp3"}
ENT.SoundTbl_BeforeLeapAttack = {"HunterZombie.Warn"}
ENT.SoundTbl_LeapAttackDamageMiss = {"HunterZombie.Pounce.Miss"}
ENT.SoundTbl_LeapAttackJump = {"HunterZombie.Pounce","player/hunter/voice/attack/shriek_1.mp3"}
ENT.SoundTbl_LeapAttackDamage = {"player/hunter/hit/tackled_1.mp3"}
ENT.SoundTbl_Pain = {"HunterZombie.Pain"}
ENT.SoundTbl_Death = {"HunterZombie.Death"}
ENT.SoundTbl_HunterPounceMiss = {"HunterZombie.Pounce.Miss"}
ENT.SoundTbl_HunterFlyLoop = {"HunterZombie.Pounce.FlyLoop"}
ENT.SoundTbl_Shred = {"player/hunter/voice/attack/hunter_shred_01.mp3", "player/hunter/voice/attack/hunter_shred_02.mp3", "player/hunter/voice/attack/hunter_shred_03.mp3", "player/hunter/voice/attack/hunter_shred_04.mp3", "player/hunter/voice/attack/hunter_shred_05.mp3", "player/hunter/voice/attack/hunter_shred_06.mp3", "player/hunter/voice/attack/hunter_shred_07.mp3", "player/hunter/voice/attack/hunter_shred_08.mp3", "player/hunter/voice/attack/hunter_shred_09.mp3", "player/hunter/voice/attack/hunter_shred_10.mp3", "player/hunter/voice/attack/hunter_shred_11.mp3", "player/hunter/voice/attack/hunter_shred_12.mp3"}
ENT.NextSoundTime_Idle1 = 1
ENT.NextSoundTime_Idle2 = 2
ENT.IdleSoundChance = 2

ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.FootStepSoundLevel = 80
ENT.AlertSoundLevel = 95
ENT.IdleSoundLevel = 95
ENT.DeathSoundLevel = 85
ENT.LeapAttackJumpSoundLevel = 95
ENT.BeforeLeapAttackSoundLevel = 105
ENT.NextSoundTime_Idle1 = 1
ENT.NextSoundTime_Idle2 = 2
ENT.LeapAttackJumpSoundPitch1 = 95
ENT.LeapAttackJumpSoundPitch1 = 105

ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105

ENT.UseTheSameGeneralSoundPitch = false

-- Custom --
ENT.nEntityIndex = -1 --this is for identifying timers unique to each hunter in the world
ENT.IncapacitationRange = 100 --how close can he be to incapacitate his enemies?
ENT.HasEnemyIncapacitated = false --is he in range of being incapacitated?
ENT.IsPouncing = false --is the sequence "Melee_Pounce" playing?
ENT.pIncapacitatedEnemy = nil --the enemy that is incapacitated 
ENT.pEnemyRagdoll = nil --the incapacitated enemy's ragdoll
ENT.IncapAnimation = "Melee_Pounce"
ENT.vecLastPos = Vector(0, 0, 0)
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/hunterbacteria.mp3","vj_l4d2/music/bacteria/hunterbacterias.mp3"}
ENT.SoundTbl_Incapacitation = {"vj_l4d2/music/special_attacks/exenteration.mp3"}
ENT.BacteriaSound = nil
ENT.IncapSong = nil
ENT.IsGhosted = false
ENT.tblEnemyWeapons = {}
ENT.tblEnemyAmmo = {}
ENT.GhostRunAwayT = CurTime()
ENT.CanSpawnWhileGhosted = false
ENT.HasSpawned = false
ENT.IsGhosted = false
ENT.IsFlying = false
ENT.CheckEnemyTimer = 2
ENT.FootStepType = "Common"
ENT.NextFlyLoopSound = CurTime()
ENT.EnemyMoveType = 3

util.AddNetworkString("L4D2HunterHUD")
util.AddNetworkString("L4D2HunterHUDGhost")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:L4D2_InitializeHooks()

	hook.Add("KeyPress", "hunter_Crouch", function(ply, key)
		if self.VJ_TheController == ply && !self.IsGhosted && !self.IsIncapacitating then
			if key == IN_DUCK then
				self.HasLeapAttack = true
				self:EmitSound("HunterZombie.Warn")
				self.TimeUntilLeapAttackVelocity = 0
			end
		end
	end)
	hook.Add("KeyRelease", "hunter_CrouchRelease", function(ply, key)
		if self.VJ_TheController == ply && !self.IsGhosted && !self.IsIncapacitating then
			if key == IN_DUCK then
				self.HasLeapAttack = false
				self.TimeUntilLeapAttackVelocity = 2
			end
		end
	end)
	hook.Add("KeyPress", "hunter_Dismount", function(ply, key)
		if GetConVar("vj_l4d2_dismount"):GetInt() == 1 then
			if self.HasEnemyIncapacitated then
				if self.VJ_TheController == ply then
					if key == IN_JUMP then
						self.HasEnemyIncapacitated = false
						self:VJ_ACT_PLAYACTIVITY("Jump", true, 0, false)
						self:SetVelocity(self:GetUp() * 200 - self:GetForward() * 400)
						timer.Simple(2, function()
							if !IsValid(self) then return end
							self:DismountHunter()
						end)
					end
				end
			end
		end
	end)

	self:SetHullType(self.HullType)
	self.nextBacteria = 0
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
			VJ_CreateSound(self,self.SoundTbl_HunterPounceMiss,85,self:VJ_DecideSoundPitch(100,100))
			ParticleEffect("hunter_leap_dust",self:GetPos(),self:GetAngles())
		end
	end
	if key == "event_pounce" then
		local incapent = self.pIncapacitatedEnemy
		for i = 1, 1 do 
			local ent = ents.Create("obj_vj_l4d2_bile")
			ent:SetPos(self:GetAttachment(4).Pos)
			ent:SetOwner(self)
			ent:Spawn()
			ent:Activate()
			local phys = ent:GetPhysicsObject()
			if IsValid(phys) then
				phys:SetVelocity(self:GetPos() + self:GetForward() * math.Rand(-10000, 10000) + self:GetRight() * math.Rand(-10000, 10000) + self:GetUp() * -3000)
			end
		end 
		for i = 1, 1 do 
			local ent = ents.Create("obj_vj_l4d2_bile")
			ent:SetPos(self:GetAttachment(5).Pos)
			ent:SetOwner(self)
			ent:Spawn()
			ent:Activate()
			local phys = ent:GetPhysicsObject()
			if IsValid(phys) then
				phys:SetVelocity(self:GetPos() + self:GetForward() * math.Rand(-10000, 10000) + self:GetRight() * math.Rand(-10000, 10000) + self:GetUp() * -3000)
			end
		end 
		if IsValid(incapent) then
			local applyDmg = DamageInfo()
			applyDmg:SetDamage(10)
			applyDmg:SetDamageType(DMG_SLASH)
			applyDmg:SetInflictor(incapent)
			applyDmg:SetAttacker(self)
			incapent:TakeDamage(2,self,incapent)	
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
	if self.HasEnemyIncapacitated == false then
		self:SetGhost(true)
	end
	function self.VJ_TheControllerEntity:CustomOnStopControlling()
		net.Start("L4D2HunterHUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
		net.Start("L4D2HunterHUDGhost")
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
			net.Start("L4D2HunterHUDGhost")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2HunterHUD")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		elseif self.IsGhosted == false then
			net.Start("L4D2HunterHUD")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2HunterHUDGhost")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		end
	end
end 
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:HunterIncapacitate(ent)
	local ent = self.pIncapacitatedEnemy
	if ent then
		self.pIncapacitatedEnemy = ent 
		self.HasEnemyIncapacitated = true
		if not ent:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
			ent:AddEFlags(EFL_NO_THINK_FUNCTION)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DismountHunter()
	self.HasEnemyIncapacitated = false
	self:SetParent(nil)
	if self.VJ_IsBeingControlled then
		self.AnimTbl_IdleStand = {ACT_IDLE}
	end
	if self.IncapSong then
		self.IncapSong:Stop()
		self.IncapSong = nil
	end
	if !IsValid(self.pIncapacitatedEnemy) then return end
	local enemy = self.pIncapacitatedEnemy
	hook.Add("ShouldCollide", "hunter_EnableCollisions", function(ent1, ent2)
		if (ent1 == self and ent2 == enemy) then return true end
	end)
	if enemy:IsNPC() && GetConVar("vj_l4d2_npcs_dropweapons"):GetInt() == 0 then
		if IsValid(enemy:GetActiveWeapon()) then
			enemy:GetActiveWeapon():SetNoDraw(false)
		end
	end
	if enemy:GetNoDraw() == true then
		enemy:SetNoDraw(false)
	end
	if enemy:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
		enemy:RemoveEFlags(EFL_NO_THINK_FUNCTION)
	end
	if enemy:IsPlayer() then
		self:Incap_Lighting(enemy, true)
		enemy:SetMoveType(self.EnemyMoveType)
		enemy:SetParent(nil)
		enemy:SetPos(self:GetPos())
		if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= enemy then
			enemy:SetObserverMode(0)
			enemy:DrawViewModel(true)
			enemy:DrawWorldModel(true)
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
function ENT:CustomOnLeapAttack_BeforeStartTimer() 
	if self:IsShoved() then return end
	if self.VJ_IsBeingControlled == false then
		self.AnimTbl_Run = {ACT_RUN_CROUCH}
		self.AnimTbl_Walk = {ACT_RUN_CROUCH}  
		VJ_CreateSound(self,"HunterZombie.Warn",85,self:VJ_DecideSoundPitch(100,100))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_AfterStartTimer()
	self.nEntityIndex = self:EntIndex()
	self:SetNW2Float("PounceT",CurTime() +self.NextLeapAttackTime)
	if self.VJ_IsBeingControlled == false then
		timer.Simple(1.89,function()
			if IsValid(self) && IsValid(self:GetEnemy()) then
				if self:IsShoved() then return end 
				self:VJ_ACT_PLAYACTIVITY("Pounce_01",true,1.7,true) 
			end	
			if IsValid(self) then 
				self.AnimTbl_Run = {ACT_RUN}
				self.AnimTbl_Walk = {ACT_RUN}		   
			end 
		end)
	elseif self.VJ_IsBeingControlled == true then
		timer.Simple(0,function()
			if IsValid(self) then 
				self:VJ_ACT_PLAYACTIVITY("Pounce_01",true,1.7,true)		
			end
		end)
	end
	if self.VJ_IsBeingControlled == false then
		timer.Simple(1.9, function()
			if IsValid(self) && IsValid(self:GetEnemy()) then 
				if self:IsShoved() then return end 
				self:VJ_ACT_PLAYACTIVITY("Pounce_Idle_01",false,1.2,false)
				ParticleEffectAttach("hunter_motion_blur",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("attach_blur"))
				ParticleEffect("hunter_leap_dust",self:GetPos(),self:GetAngles())   
			end
		end)
	elseif self.VJ_IsBeingControlled == true then
		timer.Simple(0.1, function()
			if IsValid(self) && IsValid(self:GetEnemy()) then 
				self:VJ_ACT_PLAYACTIVITY("Pounce_Idle_01",true,1.2,true)
				ParticleEffectAttach("hunter_motion_blur",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("attach_blur"))
				ParticleEffect("hunter_leap_dust",self:GetPos(),self:GetAngles())   
			end
		end)
	end
	if self.VJ_IsBeingControlled == false then
		timer.Simple(1.94, function()
			if IsValid(self) && IsValid(self:GetEnemy()) then 
				if self:IsShoved() then return end 
				if timer.Exists("Hunter_Land") then timer.Stop("Hunter_Land") end
				timer.Create("Hunter_Land", 0.14, 11, function()  
					if !IsValid(self) then return end
					if self.HasEnemyIncapacitated == true then return end
					local tr = util.TraceLine( {
						start = self:GetPos() +self:OBBCenter(),
						endpos = self:GetPos() +self:GetUp() *-10,
						filter = self,
						mask = MASK_SOLID,
					} )
					if tr.HitWorld then
						self:VJ_ACT_PLAYACTIVITY("vjseq_Lunge_Land_Low_Nav_01",false,1.5,false) 
						timer.Stop("Hunter_Land")
						timer.Stop("Hunter"..tostring(id).."_HasEnemyInRange")
					end
				end)		  
			end
		end)
	elseif self.VJ_IsBeingControlled == true then
		timer.Simple(0, function()
			if IsValid(self) then	  
				if timer.Exists("Hunter_Land") then timer.Stop("Hunter_Land") end
				timer.Create("Hunter_Land", 0.14, 11, function()
					if IsValid(self) then  
						if self.HasEnemyIncapacitated == true then return end
						local tr = util.TraceLine( {
							start = self:GetPos() +self:OBBCenter(),
							endpos = self:GetPos() +self:GetUp() *-10,
							filter = self,
							mask = MASK_SOLID,
						} )
						if tr.HitWorld then
							self:VJ_ACT_PLAYACTIVITY("vjseq_Lunge_Land_Low_Nav_01",false,1.5,false) 
							timer.Stop("Hunter_Land")
						end
					end
				end)
			end
		end)
	end

	timer.Simple(self.CheckEnemyTimer, function()
		if IsValid(self) then 
			if self:IsShoved() then return end
			if timer.Exists("Hunter"..tostring(self.nEntityIndex).."_HasEnemyInRange") then timer.Stop("Hunter"..tostring(id).."_HasEnemyInRange") end --if the same timer is playing, stop it
			timer.Create("Hunter"..tostring(self.nEntityIndex).."_HasEnemyInRange", 0.1, 11, function() --like a think function, checks every 0.1 second to see if an enemy is in range for incapacitation
				if !IsValid(self) then return end
				local id = self.nEntityIndex
				local tbControllers = {}
				for _, x in ipairs(ents.FindByClass("npc_vj_l4d*")) do
					if x.VJ_IsBeingControlled then
						tbControllers[table.Count(tbControllers) + 1] = x.VJ_TheController
					end
				end
				for k, v in ipairs(ents.FindInSphere(self:GetPos(), self.IncapacitationRange)) do
					if IsValid(self) && IsValid(v) then
						if (v:IsPlayer() && v:Alive() && GetConVar('ai_ignoreplayers'):GetInt() == 0 && not table.HasValue(tbControllers, v)) or (v:IsNPC() && v ~= self) then
							if (self.VJ_IsBeingControlled && v:GetClass() ~= "obj_vj_bullseye" && self:IsEntityAlly(v) == false) || self:Disposition(v) == D_HT then
								if self.HasEnemyIncapacitated then return end
								local enemy = v
								if enemy:IsPlayer() && enemy:GetMoveType() == MOVETYPE_NOCLIP then
									return
								end
								if not self:CanIncapacitate(enemy) then
									timer.Stop("Hunter"..tostring(id).."_HasEnemyInRange")
									return
								end
								if enemy:LookupBone("ValveBiped.Bip01_Pelvis") || enemy:IsPlayer() then
									local dist = self:GetPos():Distance(enemy:GetPos())
									if dist <= self.IncapacitationRange then
										self.HasEnemyIncapacitated = true
										timer.Stop("Hunter"..tostring(id).."_HasEnemyInRange") --kill the timer
												
										self:SpawnCamera(enemy,15)
												
										VJ_CreateSound(v,"player/hunter/hit/tackled_1.mp3",75,self:VJ_DecideSoundPitch(100,100))
										self:SetLocalVelocity(self:GetForward() * 0) --stop the hunter from lunging forward
										self.pIncapacitatedEnemy = enemy
										enemy:SetLocalVelocity(self:GetForward() * 0)
										if enemy:IsNPC() then
											self:SetParent(enemy)						   
											if GetConVar("vj_l4d2_npcs_dropweapons"):GetInt() == 0 then
												if IsValid(enemy:GetActiveWeapon()) then
													enemy:GetActiveWeapon():SetNoDraw(true)
												end
											else
												enemy:DropWeapon()
											end
										elseif enemy:IsPlayer() then
											self.EnemyMoveType = enemy:GetMoveType()
											enemy:SetMoveType(MOVETYPE_CUSTOM)
											self:Incap_Lighting(enemy, false)
											enemy:SetParent(self)										 
											enemy:SetLocalPos(Vector(0, 0, 0))
											self:StripEnemyWeapons(enemy)
											if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= enemy then
												enemy:SetObserverMode(OBS_MODE_CHASE)
												enemy:SpectateEntity(self.Camera)
												enemy:DrawViewModel(false)
												enemy:DrawWorldModel(false)
												enemy:SetFOV(75)
											end
										end
										self.nextShredSound = CurTime()
										self:SetCustomCollisionCheck(true)
										enemy:SetCustomCollisionCheck(true)
										hook.Add("ShouldCollide", "hunter_EnableCollisions", function(ent1, ent2)
											if (ent1 == self and ent2 == enemy) then return false end
										end)
										local ang = self:GetAngles()
										enemy:SetNoDraw(true)
										local tr = util.TraceLine({start = self:GetPos() + self:GetUp() * self:OBBMins():Distance(self:OBBMaxs()), endpos = self:GetPos() - self:GetUp() * self:OBBMaxs():Distance(self:OBBMins()), filter = {self, enemy}})
										if IsValid(self.pEnemyRagdoll) then
											self.pEnemyRagdoll:Remove()
										end
										local mdl
										if enemy:IsPlayer() && enemy:LookupBone("ValveBiped.Bip01_Pelvis") == nil then
											mdl = ents.Create("prop_ragdoll")
											mdl:SetModel(enemy:GetModel())
											mdl:SetPos(tr.HitPos)
											mdl:SetAngles(Angle(ang.x - 90, ang.y - 180, ang.z))
											mdl:SetCollisionGroup(1)
											mdl:Spawn()
											local root = mdl:GetPhysicsObjectNum(0)
											root:EnableMotion(false)
											mdl:Fire("StartRagdollBoogie")
										else
											mdl = ents.Create("prop_dynamic")
											mdl:SetModel("models/survivors/L4D2_Human_base.mdl")
											mdl:SetPos(tr.HitPos)
											mdl:SetAngles(Angle(ang.x, ang.y - 180, ang.z))
											mdl:Spawn()
											mdl:SetRenderMode(1)
											mdl:SetColor(Color(0, 0, 0, 0))
											if enemy:IsPlayer() then
												mdl:SetParent(self)
											else
												mdl:SetParent(enemy)
											end
											mdl:ResetSequence(3)
											mdl:ResetSequenceInfo()
											mdl:SetCycle(0)
											mdl:SetLocalPos(Vector(0, 0, 0))
											self:IncapacitateEnemy(enemy, mdl)
										end
										self.pEnemyRagdoll = mdl
										for k, v in ipairs(ents.FindByClass("player")) do
											if enemy:IsNPC() then
												VJ_CreateSound(v,"vj_l4d2/music/tags/exenterationhit.mp3",95,self:VJ_DecideSoundPitch(100,100))
											end
										end
										enemy:CallOnRemove("hunter_ClearParent", function(ent)
											if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy == ent then
												self:DismountHunter()
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
			end)
		end
	end)  
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	if self.IsIncapacitating == true then return end
	local randattack = math.random(1,2)
	if randattack == 1 then
		self.AnimTbl_MeleeAttack = {"vjges_Melee_02","vjges_Melee_03"}
		self.TimeUntilMeleeAttackDamage = 0.6
		self.MeleeAttackDamage = 15
	elseif randattack == 2 then
		self.AnimTbl_MeleeAttack = {"vjges_Melee_02","vjges_Melee_03"}
		self.TimeUntilMeleeAttackDamage = 0.6
		self.MeleeAttackDamage = 15
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSchedule()
	local ent = self.pIncapacitatedEnemy
	if IsValid(ent) then
		local flDistance = self:GetPos():Distance(ent:GetPos())
		if flDistance <= self.IncapacitationRange then
			if ent:Health() <= 0 then return end
			self:VJ_PlaySequence("Melee_Pounce")
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	local function SetPitch(ent, poseName, tgt)
		local spos = ent:GetPos()
		local bpos = spos + ent:OBBCenter()
		local tblPos = {
			[1] = Vector(bpos.x, bpos.y, bpos.z + 1),
			[2] = Vector(bpos.x, bpos.y, bpos.z - 1)
		}
		local quadrants = {
			[1] = Vector(spos.x + 45, spos.y, spos.z),
			[2] = Vector(spos.x - 45, spos.y, spos.z),
			[3] = Vector(spos.x, spos.y + 45, spos.z),
			[4] = Vector(spos.x, spos.y - 45, spos.z)
		}
		tgt = tgt or self
		local tpos = tgt:GetPos()
		local distX = math.max(bpos.x, tpos.x) - math.min(bpos.x, tpos.x)
		local distY = math.max(bpos.y, tpos.y) - math.min(bpos.y, tpos.y)
		local distZ = math.max(bpos.z, tpos.z) - math.min(bpos.z, tpos.z)
		local degX = math.deg(math.atan(distZ / distX))
		local degY = math.deg(math.atan(distZ / distY))
		local pos = math.min(tpos:Distance(tblPos[1]), tpos:Distance(tblPos[2]))
		local quad = math.min(tpos:Distance(quadrants[1]), tpos:Distance(quadrants[2]), tpos:Distance(quadrants[3]), tpos:Distance(quadrants[4]))
		if quad == tpos:Distance(quadrants[1]) || quad == tpos:Distance(quadrants[2]) then
			degX = math.Round(degX)
			if tpos.z < spos.z then
				degX = -degX
			end
			ent:SetPoseParameter(poseName, math.Remap(degX, 0, -20, 0, 1))
		elseif quad == tpos:Distance(quadrants[3]) || quad == tpos:Distance(quadrants[4]) then
			degY = math.Round(degY)
			if tpos.z < spos.z then
				degY = -degY
			end
			ent:SetPoseParameter(poseName, math.Remap(degY, 0, -20, 0, 1))
		end
	end

	SetPitch(self, "horiz_vel", self:GetEnemy())

	self:GetGroundType(self:GetPos()) -- in the features.lua
	if self.VJ_IsBeingControlled == false then
		self.CheckEnemyTimer = 2
	elseif self.VJ_IsBeingControlled == true then
		self.CheckEnemyTimer = 0
	end
	
	if GetConVarNumber("vj_l4d2_enemy_finding") == 1 then
        self.FindEnemy_UseSphere = true 
        self.FindEnemy_CanSeeThroughWalls = true 
    elseif GetConVarNumber("vj_l4d2_enemy_finding") == 0 then
        self.FindEnemy_UseSphere = false 
        self.FindEnemy_CanSeeThroughWalls = false
    end

	self:IgnoreIncappedEnemies()
	if self:IsInWorld() then
		self.LastInWorldPos = self:GetPos()
	else
		if self.LastInWorldPos then self:SetPos(self.LastInWorldPos) end
	end
	if self.HasEnemyIncapacitated == false && IsValid(self:GetEnemy()) && self.IsIncapacitating == false then
		local enemy = self:GetEnemy()
		if enemy:Health() > 0 then
			local dist = self:GetPos():Distance(enemy:GetPos())
			if dist < 20 then
				local tr1 = util.TraceLine({start = self:GetPos(), endpos = self:GetPos() + self:GetForward() * 35, filter = {self, enemy}})
				local tr2 = util.TraceLine({start = self:GetPos(), endpos = self:GetPos() + self:GetRight() * 35, filter = {self, enemy}})
				local tr3 = util.TraceLine({start = self:GetPos(), endpos = self:GetPos() - self:GetForward() * 35, filter = {self, enemy}})
				local tr4 = util.TraceLine({start = self:GetPos(), endpos = self:GetPos() - self:GetRight() * 35, filter = {self, enemy}})
				if tr1.Hit == false then
					self:SetPos(self:GetPos() + self:GetForward() * enemy:OBBMaxs().x * 1.5)
				elseif tr2.Hit == false then
					self:SetPos(self:GetPos() + self:GetRight() * enemy:OBBMaxs().y * 1.5)
				elseif tr3.Hit == false then
					self:SetPos(self:GetPos() - self:GetForward() * enemy:OBBMaxs().x * 1.5)
				elseif tr4.Hit == false then
					self:SetPos(self:GetPos() - self:GetRight() * enemy:OBBMaxs().y * 1.5)
				end
			end
		end
	end


	if self:GetSequence() == self:LookupSequence("Pounce_Idle_01") then
		if CurTime() > self.NextFlyLoopSound then
			VJ_CreateSound(self,self.SoundTbl_HunterFlyLoop,85,self:VJ_DecideSoundPitch(100,100))
			self.NextFlyLoopSound = CurTime() +0.8
		end
	end

	if self.IsGhosted then
		self:Ghost()
	end
	if self.IsGhosted then
		self.HasLeapAttack = false
	end
	self.vecLastPos = self:GetPos()
	if self:GetSequence() == self:LookupSequence(self.IncapAnimation) then
		self.IsIncapacitating = true
	else
		self.IsIncapacitating = false
	end
	if self.IsIncapacitating == true && self.HasEnemyIncapacitated == false then
		self:VJ_ACT_PLAYACTIVITY("Jump", true)   
	end
	if IsValid(self.pIncapacitatedEnemy) then
		local enemy = self.pIncapacitatedEnemy
		if enemy:Health() <= 0 then
			self:DismountHunter()
		end
		if self.IsIncapacitating == true then
			if self.HasEnemyIncapacitated == true then
				if not enemy:GetNoDraw() then
					enemy:SetNoDraw(true)
				end
				if not enemy:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
					enemy:AddEFlags(EFL_NO_THINK_FUNCTION)
				end
			end
			local dist = self:GetPos():Distance(enemy:GetPos())
			if dist > self.IncapacitationRange then
				self:DismountHunter()
			end
		else
			if self.HasEnemyIncapacitated == false then
				self:DismountHunter()
			end
		end
	else
		if self.IsIncapacitating == true then
			self:DismountHunter()
			self:SetPos(self:GetPos())
		end
	end
	if CurTime() >= self.nextBacteria then
		self:PlayBacteria()
	end
	if self.HasEnemyIncapacitated == true then 
		self.HasMeleeAttack = false
		self.CombatFaceEnemy = false
		if self.VJ_IsBeingControlled then
			self.AnimTbl_IdleStand = {self:GetSequenceActivity(self:LookupSequence(self.IncapAnimation))}
		end
		self:PlayIncapSong()
		if IsValid(self.pEnemyRagdoll) then
			self:SetAngles(Angle(self:GetAngles().x, self.pEnemyRagdoll:GetAngles().y - 180, self:GetAngles().z))
			self.pEnemyRagdoll:SetLocalPos(Vector(0, 0, 0))
			if self.pEnemyRagdoll:GetClass() == "prop_ragdoll" then
				self.pEnemyRagdoll:Fire("StartRagdollBoogie")
				self.pEnemyRagdoll:GetPhysicsObjectNum(0):SetPos(self:GetPos())
				self.pEnemyRagdoll:SetAngles(self:GetAngles())
			end
		end
		if IsValid(self.pIncapacitatedEnemy) then
			self.IsFlying = false
			if CurTime() >= self.nextShredSound then
				VJ_CreateSound(self, self.SoundTbl_Shred)
				self.nextShredSound = CurTime() + 0.3
			end
			local enemy = self.pIncapacitatedEnemy
			local dist = self:GetPos():Distance(enemy:GetPos())
			if enemy:IsPlayer() && enemy:Alive() then
				enemy:SetLocalPos(Vector(0, 0, 0))
			else
				if enemy:Health() > 0 then
					self:SetLocalPos(Vector(0, 0, 0))
				end
			end
			if dist > self.IncapacitationRange then
				self:DismountHunter()
				enemy:SetParent(nil)
			end
			if enemy:GetNoDraw() == true then 
				enemy:SetNoDraw(true)
			end
		end
	else
		if !self.IsGhosted then
			self.HasMeleeAttack = true
		end
		self.CombatFaceEnemy = true
	end

	if self.VJ_IsBeingControlled then
		self.ConstantlyFaceEnemy = false
	else
		self.ConstantlyFaceEnemy = true
	end

	self:ManageHUD(self.VJ_TheController)
	
	if self.VJ_IsBeingControlled == true then
		self:CapabilitiesRemove(CAP_MOVE_JUMP)
	end
end 
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if self.pIncapacitatedEnemy && dmginfo:GetAttacker() == self.pIncapacitatedEnemy then return end
	if self:IsShoved() then return end
	if dmginfo:GetDamageType() == DMG_CLUB || dmginfo:GetDamageType() == DMG_GENERIC then
		self:StopAttacks(true)
		self.vAct_StopAttacks = true
		local function GetDirection()
			local directions = {
				{"Shoved_Backward_01", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() + self:GetForward() * 25)},   --North; move back
				{"Shoved_Backward_02", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() + self:GetForward() * 25)},   --North; move back
				{"Shoved_Leftward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() + self:GetRight() * 25)},	 --East; move left
				{"Shoved_Forward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() - self:GetForward() * 25)},   --South; move forward
				{"Shoved_Rightward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() - self:GetRight() * 25)}	  --West; move right
			}
			table.sort(directions, function(a, b) return a[2] < b[2] end)
			return directions[1][1]
		end
		local function GetDirection_Incapping()
			local directions_incapping = {
				{"Melee_Pounce_Knockoff_Backward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() + self:GetForward() * 25)},   --North; move back
				{"Melee_Pounce_Knockoff_L", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() + self:GetRight() * 25)},	 --East; move left
				{"Melee_Pounce_Knockoff_Forward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() - self:GetForward() * 25)},   --South; move forward
				{"Melee_Pounce_Knockoff_R", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() - self:GetRight() * 25)}	  --West; move right
			}	
			table.sort(directions_incapping, function(a, b) return a[2] < b[2] end)
			return directions_incapping[1][1] 
		end
		self:StopAttacks(true)
		if self.HasEnemyIncapacitated == true && IsValid(self.pIncapacitatedEnemy) then
			self:VJ_ACT_PLAYACTIVITY(GetDirection_Incapping(),true,VJ_GetSequenceDuration(self,GetDirection_Incapping()),false)
			self:DismountHunter()
		else
			self:VJ_ACT_PLAYACTIVITY(GetDirection(),true,VJ_GetSequenceDuration(self,GetDirection()),false)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo,hitgroup)
	self:VJ_ACT_PLAYACTIVITY("ACT_DIERAGDOLL",true,1.74,false)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo, hitgroup, GetCorpse)
	self:L4D2_DeathMessage(dmginfo:GetAttacker())
	self:DismountHunter()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	self:DismountHunter()
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
