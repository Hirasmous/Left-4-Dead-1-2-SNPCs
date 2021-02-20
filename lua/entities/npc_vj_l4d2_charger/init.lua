AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/charger.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_c_h")
ENT.HullType = HULL_HUMAN
ENT.HasBloodPool = false -- Does it have a blood pool?
ENT.DisableWandering = true -- Disables wandering when the SNPC is idle
-- ENT.Bacterias = {"bacteria/chargerbacteria.mp3","bacteria/chargerbacterias.mp3"}
ENT.FindEnemy_CanSeeThroughWalls = true -- Should it be able to see through walls and objects? | Can be useful if you want to make it know where the enemy is at all times
ENT.HasPoseParameterLooking = true -- Does it look at its enemy using poseparameters?
ENT.PoseParameterLooking_InvertPitch = false -- Inverts the pitch poseparameters (X)
ENT.PoseParameterLooking_InvertYaw = false -- Inverts the yaw poseparameters (Y)
ENT.PoseParameterLooking_InvertRoll = false -- Inverts the roll poseparameters (Z)
ENT.PoseParameterLooking_TurningSpeed = 10 -- How fast does the parameter turn?
ENT.DeathCorpseAlwaysCollide = false -- Should the corpse always collide?
ENT.CallForHelp = false -- Does the SNPC call for help?
ENT.PoseParameterLooking_Names = {pitch={"body_pitch"},yaw={"body_yaw"},roll={}} -- Custom pose parameters to use, can put as many as needed
ENT.DisableFootStepSoundTimer = false -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
ENT.VJC_Data = {
	CameraMode = 1, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(40, 10, -50), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "bip_head", -- If left empty, the base will attempt to calculate a position for first person
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
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_c_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.HasLeapAttack = true -- Should the SNPC have a leap attack?
ENT.LeapAttackDamage = 15
ENT.LeapAttackDamageType = DMG_CRUSH -- Type of Damage
ENT.AnimTbl_LeapAttack = {ACT_RUN_AIM_RELAXED} -- Melee Attack Animations
ENT.TimeUntilLeapAttackVelocity = 0 -- How much time until it runs the velocity code?
ENT.TimeUntilLeapAttackDamage = 1 -- How much time until it runs the leap damage code?
ENT.LeapAttackVelocityForward = 0 -- How much forward force should it apply?
ENT.LeapAttackVelocityUp = 0 -- How much upward force should it apply?
ENT.NextAnyAttackTime_Leap = 1 -- How much time until it can use any attack again? | Counted in Seconds
ENT.LeapAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.LeapAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the leap attack animation?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.LeapAttackExtraTimers = {0.4,0.6,0.8,1} -- Extra leap attack timers | it will run the damage code after the given amount of seconds
ENT.StopLeapAttackAfterFirstHit = true
ENT.NextLeapAttackTime = 15 -- How much time until it can use a leap attack?
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.LeapAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.LeapAttackDamageDistance = 100 -- How far does the damage go?
ENT.FootStepTimeRun = 0.2 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.4 -- Next foot step sound when it is walking
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 0 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 12 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = true -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"Charger.Default.RunLeft","Charger.Default.RunRight"}
ENT.SoundTbl_Idle = {"ChargerZombie.Voice","ChargerZombie.Growl"}
ENT.SoundTbl_Alert = {"ChargerZombie.Alert","ChargerZombie.Recognize"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_MeleeAttack = {"ChargerZombie.Smash"}
ENT.SoundTbl_BeforeMeleeAttack = {"ChargerZombie.VocalizePummel"}
ENT.SoundTbl_LeapAttackJump = {"ChargerZombie.Charge"}
ENT.SoundTbl_LeapAttackDamage = {}
ENT.SoundTbl_Pain = {"ChargerZombie.Pain"}
ENT.SoundTbl_Death = {"ChargerZombie.Death"}
ENT.SoundTbl_Charger_ImpactHard = {"ChargerZombie.ImpactHard"}
ENT.SoundTbl_Charger_Pummel = {"ChargerZombie.Pummel"}
ENT.SoundTbl_Charger_PummelVocalize = {"ChargerZombie.VocalizePummel"}

ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.FootStepSoundLevel = 90
ENT.AlertSoundLevel = 90
ENT.IdleSoundLevel = 95
ENT.DeathSoundLevel = 85
ENT.LeapAttackJumpSoundLevel = 100
ENT.NextSoundTime_Idle1 = 1
ENT.NextSoundTime_Idle2 = 2
ENT.IdleSoundChance = 1
ENT.FootStepSoundPitch1 = 100
ENT.FootStepSoundPitch2 = 100
ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105
ENT.UseTheSameGeneralSoundPitch = false

-- Custom -- 
ENT.IsGhosted = false
ENT.IsIncapacitating = false
ENT.nEntityIndex = -1 --this is for identifying timers unique to each charger in the world
ENT.IncapacitationRange = 100 --how close can he be to incapacitate his enemies?
ENT.HasEnemyIncapacitated = false --is he in range of being incapacitated?
ENT.IsPouncing = false --is the sequence "Charger_Pound" playing?
ENT.pIncapacitatedEnemy = nil --the enemy that is incapacitated 
ENT.pEnemyRagdoll = nil --the incapacitated enemy's ragdoll
ENT.IncapAnimation = "Charger_Pound"
ENT.vecLastPos = Vector(0, 0, 0)
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/chargerbacteria.mp3","vj_l4d2/music/bacteria/chargerbacterias.mp3"}
ENT.SoundTbl_Incapacitation = {"vj_l4d2/music/special_attacks/mortification.mp3"}
ENT.BacteriaSound = nil
ENT.IncapSong = nil
ENT.Light1 = nil
ENT.Light2 = nil
ENT.tblEnemyWeapons = {}
ENT.tblEnemyAmmo = {}
ENT.GhostRunAwayT = CurTime()
ENT.CanSpawnWhileGhosted = false
ENT.HasSpawned = false
ENT.IsGhosted = false
ENT.IsCharging = false
ENT.NextChargeTime = CurTime()
ENT.ChargeStopT = CurTime()
ENT.PummelType = "Down"

util.AddNetworkString("L4D2ChargerHUD")
util.AddNetworkString("L4D2ChargerHUDGhost")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetHullType(self.HullType)
	self.nextBacteria = 0
	self:SetGhost(tobool(GetConVarNumber("vj_l4d2_ghosted")))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "event_emit FootStep" then
		self:FootStepSoundCode()
	end
	if key == "event_emit VocalizePummel" then
		VJ_EmitSound(self,self.SoundTbl_Charger_PummelVocalize,75,self:VJ_DecideSoundPitch(100,95)) 
	end
	if key == "event_emit Pummel" then
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
			ent:SetPos(self:GetAttachment(4).Pos)
			ent:SetOwner(self)
			ent:Spawn()
			ent:Activate()
			local phys = ent:GetPhysicsObject()
			if IsValid(phys) then
			phys:SetVelocity(self:GetPos() + self:GetForward() * math.Rand(-10000, 10000) + self:GetRight() * math.Rand(-10000, 10000) + self:GetUp() * -3000)
			end
		end
		VJ_EmitSound(self,self.SoundTbl_Charger_Pummel,75,self:VJ_DecideSoundPitch(100,95)) 
		if GetConVarNumber("vj_l4d2_incapdamage") == 1 then
			if IsValid(incapent) then
				local applyDmg = DamageInfo()
				applyDmg:SetDamage(10)
				applyDmg:SetDamageType(DMG_CRUSH)
				applyDmg:SetInflictor(incapent)
				applyDmg:SetAttacker(self)
				incapent:TakeDamage(25,self,incapent)
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
	if self.HasEnemyIncapacitated == false then
		self:SetGhost(true)
	end
	function self.VJ_TheControllerEntity:CustomOnStopControlling()
		net.Start("L4D2ChargerHUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
		net.Start("L4D2ChargerHUDGhost")
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
			net.Start("L4D2ChargerHUDGhost")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2ChargerHUD")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		elseif self.IsGhosted == false then
			net.Start("L4D2ChargerHUD")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2ChargerHUDGhost")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Pummel_Effects(fadeout)
	if fadeout == false then
		self.spotlightpoint = ents.Create("env_projectedtexture")
		self.spotlightpoint:SetPos( self:GetPos() +self:GetUp()*110)
		self.spotlightpoint:SetKeyValue('lightcolor', "145 25 12")
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
		self.spotlightpoint1:SetKeyValue('lightcolor', "145 25 12")
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
		glowlight:SetKeyValue("_light","145 25 12")
		glowlight:SetKeyValue("brightness","5")
		glowlight:SetKeyValue("distance","107")
		glowlight:SetKeyValue("style","0")
		glowlight:SetPos(self:GetPos() +self:GetUp()*95)
		glowlight:SetParent(self)
		glowlight:Spawn()
		glowlight:Activate()
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
function ENT:ChargerIncapacitate(ent)
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
function ENT:PummelEnemy(v)
	if self.IsCharging then
		self.IsCharging = false
	end
	if timer.Exists("Charger"..tostring(self.nEntityIndex).."_HasEnemyInRange") then timer.Stop("Charger"..tostring(id).."_HasEnemyInRange") end --if the same timer is playing, stop it
	timer.Create("Charger"..tostring(self.nEntityIndex).."_HasEnemyInRange", 0.1, 11, function() --like a think function, checks every 0.1 second to see if an enemy is in range for incapacitation
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
					if (self.VJ_IsBeingControlled && (v:GetClass() ~= "obj_vj_bullseye" || self:IsEntityAlly(v) == false)) || self:Disposition(v) == D_HT then
						if self.HasEnemyIncapacitated then return end
						local enemy = v
						if enemy:IsPlayer() && enemy:GetMoveType() == MOVETYPE_NOCLIP then
							return
						end
						if not self:CanIncapacitate(enemy) then
							timer.Stop("Charger"..tostring(id).."_HasEnemyInRange")
							return
						end
						if enemy:LookupBone("ValveBiped.Bip01_Pelvis") || enemy:IsPlayer() then
							local dist = self:GetPos():Distance(enemy:GetPos())
							if dist <= self.IncapacitationRange then
								self.HasEnemyIncapacitated = true
								timer.Stop("Charger"..tostring(id).."_HasEnemyInRange") 
								self:SetLocalVelocity(self:GetForward() * 0) 
								self.pIncapacitatedEnemy = enemy
								enemy:SetLocalVelocity(self:GetForward() * 0)
								self.MovementType = VJ_MOVETYPE_STATIONARY 				
								local camera = ents.Create("prop_dynamic")
								camera:SetModel("models/error.mdl")
								camera:SetPos(self:GetPos())
								camera:Spawn()
								camera:Activate()
								camera:SetRenderMode(RENDERMODE_NONE)
								camera:DrawShadow(false)
								camera:SetParent(self)
								camera:Fire("SetParentAttachment","attach_blur")
								self:DeleteOnRemove(camera)
								if enemy:IsNPC() then
									for k, v in ipairs(ents.FindByClass("player")) do
										VJ_CreateSound(v,"vj_l4d2/music/tags/mortificationhit.mp3",90,self:VJ_DecideSoundPitch(100,100))
									end
									if GetConVar("vj_l4d2_npcs_dropweapons"):GetInt() == 0 then
										enemy:GetActiveWeapon():SetNoDraw(true)
									else
										enemy:DropWeapon()
									end
								elseif enemy:IsPlayer() then
									self:StripEnemyWeapons(enemy)
									if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= enemy then
										enemy:SetObserverMode(OBS_MODE_CHASE)
										enemy:SpectateEntity(camera)
										enemy:DrawViewModel(false)
										enemy:DrawWorldModel(false)
										enemy:SetFOV(80)
									end
								end
								self.pIncapacitatedEnemy = v
								self.nextIncapSong = CurTime()
								self:SetCustomCollisionCheck(true)
								enemy:SetCustomCollisionCheck(true)
								hook.Add("ShouldCollide", "Charger_EnableCollisions", function(ent1, ent2)
									if (ent1 == self and ent2 == enemy) then return false end
								end)						 
								local ang = self:GetAngles()
								enemy:SetNoDraw(true)
								local tr = util.TraceLine({start = self:GetPos() + self:GetUp() * self:OBBMins():Distance(self:OBBMaxs()), endpos = self:GetPos() - self:GetUp() * self:OBBMaxs():Distance(self:OBBMins()), filter = {self, enemy}})
								if IsValid(self.pEnemyRagdoll) then
									net.Start("infected_RemoveCSEnt")
										net.WriteString(tostring(self:EntIndex()))
									net.Broadcast()
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
									self.pEnemyRagdoll = mdl
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
									local tm = 0.1
									if self.VJ_IsBeingControlled then
										tm = 0.7
									end
									timer.Simple(tm,function()
										if IsValid(self) && IsValid(enemy) && IsValid(mdl) then
											if self.PummelType == "Down" then
												mdl:ResetSequence("Charger_pounded")
												mdl:ResetSequenceInfo()
												mdl:SetCycle(0)
												mdl:SetPlaybackRate(1)
												mdl:SetLocalPos(Vector(0, 0, 0))
											elseif self.PummelType == "Up" then
												mdl:ResetSequence("Charger_pounded_up")
												mdl:ResetSequenceInfo()
												mdl:SetCycle(0)
												mdl:SetPlaybackRate(1)
												mdl:SetLocalPos(Vector(0, 0, 0))
											elseif self.PummelType == "North" then
												mdl:ResetSequence("Charger_pounded_north")
												mdl:ResetSequenceInfo()
												mdl:SetCycle(0)
												mdl:SetPlaybackRate(1)
												mdl:SetLocalPos(Vector(0, 0, 0))
											end
										end
									end)
									timer.Simple(0.15, function()
										if !IsValid(self) then return end
										net.Start("infected_PounceEnemy")
											net.WriteString(tostring(self:EntIndex()))
											net.WriteEntity(mdl)
											net.WriteString(enemy:GetModel())
										net.Broadcast()
									end)
								end
								self.pEnemyRagdoll = mdl
								if enemy:IsPlayer() then
									self:Pummel_Effects(false)
									enemy:SetParent(self)
									enemy:SetLocalPos(Vector(0, 0, 0))
								else
									self:SetParent(enemy)
								end
								enemy:CallOnRemove("Charger_ClearParent", function(ent)
									if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy == ent then
										self:DismountCharger()
									end
									if ent:IsPlayer() then
										ent:SetParent(nil)
									end
								end)			 
								hook.Add("PlayerDeath", "player_RemoveCSEnt", function( victim, inflictor, attacker )
									if victim == self.pIncapacitatedEnemy then
										enemy:SetParent(nil)
										enemy:SetObserverMode(0)
										enemy:DrawViewModel(true)
										enemy:DrawWorldModel(true)
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
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DismountCharger()
	self.MovementType = VJ_MOVETYPE_GROUND
	self:Pummel_Effects(true)
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
	hook.Add("ShouldCollide", "Charger_EnableCollisions", function(ent1, ent2)
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
		if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= enemy then
			enemy:SetObserverMode(0)
			enemy:DrawViewModel(true)
			enemy:DrawWorldModel(true)
		end
		if table.Count(self.tblEnemyWeapons) > 0 then
			for i = 1, table.Count(self.tblEnemyWeapons) do
				local tbl = self.tblEnemyWeapons
				enemy:Give(tbl[i][1], true)
				local wpn = enemy:GetWeapon(tbl[i][1])
				if tbl[i][2][1] ~= -1 then
					wpn:SetClip1(tbl[i][2][2])
				end
				if tbl[i][3][1] ~= -1 then
					wpn:SetClip2(tbl[i][3][2])
				end
			end
		end
		for a, c in ipairs(self.tblEnemyAmmo) do
			enemy:GiveAmmo(c, game.GetAmmoName(a), true)
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
function ENT:CustomOnLeapAttack_AfterStartTimer()
	self:SetNW2Int("ChargeT",CurTime() +self.NextLeapAttackTime)
	if timer.Exists("Charger_HitWall") then timer.Stop("Charger_HitWall") end 
	timer.Create("Charger_HitWall", 0.1, 11, function()
		if !IsValid(self) then return end
		local anims = VJ_PICK{"Shoved_Backward","Shoved_Leftward","Shoved_Rightward"}
		local tr = util.TraceLine( {
			start = self:GetPos() +self:OBBCenter() +self:OBBMaxs() +self:OBBMins(),
			endpos = self:GetPos() + self:GetForward() *80 +self:GetUp() *20,
			filter = self,
			mask = MASK_SOLID_BRUSHONLY,
		} )
		if tr.HitWorld then
			self:VJ_ACT_PLAYACTIVITY(anims,true,VJ_GetSequenceDuration(self,anims),false)
			VJ_EmitSound(self,self.SoundTbl_Pain,75,self:VJ_DecideSoundPitch(100,95)) 
			VJ_EmitSound(self,self.SoundTbl_Charger_ImpactHard,75,self:VJ_DecideSoundPitch(100,95))				 
			ParticleEffectAttach("charger_wall_impact",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("lhand"))
			timer.Stop("Charger_HitWall")
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_AfterChecks(TheHitEntity)
	if self.VJ_IsBeingControlled == false then
		self:VJ_ACT_PLAYACTIVITY(VJ_PICK{"Charger_Slam_Ground","Charger_Shoved_Backward"},true,0.1,false)
	end
	VJ_EmitSound(self,self.SoundTbl_Pain,75,self:VJ_DecideSoundPitch(100,95)) 
	VJ_EmitSound(self,self.SoundTbl_Charger_Pummel,75,self:VJ_DecideSoundPitch(100,95))	
	self:PummelEnemy(TheHitEntity)
	ParticleEffectAttach("charger_wall_impact",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("lhand"))
	for k, v in ipairs(ents.FindByClass("player")) do
		if TheHitEntity:IsPlayer() then
			VJ_CreateSound(v,"vj_l4d2/music/special_attacks/contusion.mp3",90,self:VJ_DecideSoundPitch(100,100))
		elseif TheHitEntity:IsNPC() then
			TheHitEntity:StopMoving()
			VJ_CreateSound(v,"vj_l4d2/music/tags/contusionhit.mp3",90,self:VJ_DecideSoundPitch(100,100))
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	if self.IsIncapacitating == true then return end
	local randattack = math.random(1,2)
	if randattack == 1 then
		self.AnimTbl_MeleeAttack = {"vjges_Charger_punch"}
		self.TimeUntilMeleeAttackDamage = 0.8
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_c_d")
	elseif randattack == 2 then
		self.AnimTbl_MeleeAttack = {"vjges_Melee_01","vjges_Melee_02","vjges_Melee_03"}
		self.TimeUntilMeleeAttackDamage = 0.3
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_c_d")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSchedule()
	local ent = self.pIncapacitatedEnemy
	if IsValid(ent) then
		local dist = self:GetPos():Distance(ent:GetPos())
		if dist <= self.IncapacitationRange then
			if ent:Health() <= 0 then return end
			self:VJ_PlaySequence(self.IncapAnimation) 
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Charger_Think()
	if IsValid(self.pEnemyRagdoll) then
		if self:GetSequence() == self:LookupSequence("Charger_Pound") then
			self.pEnemyRagdoll:ResetSequence("Charger_pounded")
			self.pEnemyRagdoll:ResetSequenceInfo()
			self.pEnemyRagdoll:SetCycle(0)
			self.pEnemyRagdoll:SetPlaybackRate(1)
			self.pEnemyRagdoll:SetLocalPos(Vector(0, 0, 0))
		elseif self:GetSequence() == self:LookupSequence("Charger_Pound_Up")  then
			self.pEnemyRagdoll:ResetSequence("Charger_pounded_up")
			self.pEnemyRagdoll:ResetSequenceInfo()
			self.pEnemyRagdoll:SetCycle(0)
			self.pEnemyRagdoll:SetPlaybackRate(1)
			self.pEnemyRagdoll:SetLocalPos(Vector(0, 0, 0))
		elseif self:GetSequence() == self:LookupSequence("Charger_Pound_North")  then
			self.pEnemyRagdoll:ResetSequence("Charger_pounded_north")
			self.pEnemyRagdoll:ResetSequenceInfo()
			self.pEnemyRagdoll:SetCycle(0)
			self.pEnemyRagdoll:SetPlaybackRate(1)
			self.pEnemyRagdoll:SetLocalPos(Vector(0, 0, 0))
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	self:Charger_Think()
	self:IgnoreIncappedEnemies()
	if self.IsGhosted then
		self:Ghost()
	end
	if self.IsGhosted then
		self.HasLeapAttack = false
	else
		self.HasLeapAttack = true
	end

	self.vecLastPos = self:GetPos()

	if self:GetSequence() == self:LookupSequence(self.IncapAnimation) || self:GetSequence() == self:LookupSequence("Charger_Pound") then
		self.IsIncapacitating = true
	else
		self.IsIncapacitating = false
	end

	if self.IsIncapacitating == true && self.HasEnemyIncapacitated == false then
		self:VJ_ACT_PLAYACTIVITY("Jump", true)   
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
			self.pEnemyRagdoll:SetLocalPos(Vector(0,0,0))
			if self.pEnemyRagdoll:GetClass() == "prop_ragdoll" then
				self.pEnemyRagdoll:Fire("StartRagdollBoogie")
				self.pEnemyRagdoll:SetPos(self:GetAttachment(3).Pos)
			end
		end
		if IsValid(self.pIncapacitatedEnemy) then
			local enemy = self.pIncapacitatedEnemy
			if enemy:Health() <= 0 then
				self:DismountCharger()
			end
			if not enemy:GetNoDraw() then
				enemy:SetNoDraw(true)
			end
			if not enemy:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
				enemy:AddEFlags(EFL_NO_THINK_FUNCTION)
			end	
			if enemy:Health() < enemy:GetMaxHealth() / 3 then
				if IsValid(self.pEnemyRagdoll) then
					if self.PummelType == "Down" then
						self.pEnemyRagdoll:ResetSequence("Charger_pounded_incap")
						self.pEnemyRagdoll:ResetSequenceInfo()
						self.pEnemyRagdoll:SetCycle(0)
					end
				end
			end
			if enemy:IsPlayer() && enemy:Alive() then
				enemy:SetLocalPos(Vector(0, 0, 0))
			else
				if enemy:Health() > 0 then
					self:SetLocalPos(Vector(0, 0, 0))
				end
			end
			local dist = self:GetPos():Distance(enemy:GetPos())
			if dist > self.IncapacitationRange then
				self:DismountCharger()
			end
			local Tr_PummelCeiling = util.TraceLine({
				start = self:GetPos() +self:OBBCenter(),
				endpos = self:GetPos() +self:OBBCenter() +self:GetUp() *150,
				filter = {self,self.pIncapacitatedEnemy}
			})
			local Tr_PummelWall = util.TraceLine({
				start = self:GetPos() +self:OBBCenter(),
				endpos = self:GetPos() +self:OBBCenter() +self:GetForward() *150,
				filter = {self,self.pIncapacitatedEnemy}
			})
			if Tr_PummelWall.HitWorld && math.random(1,2) == 1 then
				self.PummelType = "North"
				self.IncapAnimation = "Charger_Pound_North"
			elseif Tr_PummelCeiling.HitWorld && math.random(1,2) == 1 then
				self.PummelType = "Up"
				self.IncapAnimation = "Charger_Pound_Up"
			end
		end
	else
		self.HasMeleeAttack = true
		self.CombatFaceEnemy = true
	end

	if CurTime() >= self.nextBacteria then
		self:PlayBacteria()
	end
	
	self:ManageHUD(self.VJ_TheController)
	hook.Add("PlayerButtonDown", "Ghosting", function(ply, button)
		if self.VJ_IsBeingControlled then
			if button == KEY_E then
				if self.IsGhosted then
					self:SetGhost(false)
				else
					self:SetGhost(true)  
				end
			end
		end
	end)
	if self.VJ_IsBeingControlled == true then
		hook.Add("KeyPress", "Charger_Crouch", function(ply, key)
			if self.VJ_TheController == ply then
				if key == IN_DUCK then
					self.AnimTbl_IdleStand = {self:GetSequenceActivity(self:LookupSequence("Crouch_Idle_Upper_Knife"))}
					self.AnimTbl_Walk = {ACT_RUN_CROUCH}
					self.AnimTbl_Run = {ACT_RUN_CROUCH}
					self.HasLeapAttack = false
				end
			end
		end)
		hook.Add("KeyRelease", "Charger_CrouchRelease", function(ply, key)
			if self.VJ_TheController == ply then
				if key == IN_DUCK then
					self.AnimTbl_IdleStand = {ACT_IDLE}
					self.AnimTbl_Walk = {ACT_WALK}
					self.AnimTbl_Run = {ACT_RUN}
					self.HasLeapAttack = true
				end
			end
		end)
	end

	if self.VJ_IsBeingControlled == true then
		self:CapabilitiesRemove(CAP_MOVE_JUMP)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if self.pIncapacitatedEnemy && dmginfo:GetAttacker() == self.pIncapacitatedEnemy then return end
	if self:IsShoved() then return end
	if dmginfo:GetDamageType() == DMG_BLAST || dmginfo:GetDamageType() == DMG_CRUSH then
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
			self:DismountCharger()
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,GetCorpse)
	local ent = dmginfo:GetAttacker() or dmginfo:GetInflictor() or self:GetEnemy()
	if IsValid(ent) then
		if ent:IsNPC() then
			PrintMessage(HUD_PRINTTALK, ent:GetClass().." killed ".. self:GetName())
		elseif ent:IsPlayer() then
			PrintMessage(HUD_PRINTTALK, ent:GetName().." killed ".. self:GetName())
		end
	end
	self:DismountCharger()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	self:DismountCharger()
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
