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
ENT.HasLeapAttack = false -- Should the SNPC have a leap attack?
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
ENT.StopLeapAttackAfterFirstHit = false
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
ENT.IncapAnimation = "Charger_pound"
ENT.vecLastPos = Vector(0, 0, 0)
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/chargerbacteria.mp3","vj_l4d2/music/bacteria/chargerbacterias.mp3"}
ENT.SoundTbl_Incapacitation = {"vj_l4d2/music/special_attacks/mortification.mp3"}
ENT.BacteriaSound = nil
ENT.IncapSong = nil
ENT.Light1 = nil
ENT.Light2 = nil
ENT.Light3 = nil
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
ENT.EnemyMoveType = 3

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
	--if timer.Exists("Charger"..tostring(self.nEntityIndex).."_HasEnemyInRange") then timer.Stop("Charger"..tostring(id).."_HasEnemyInRange") end --if the same timer is playing, stop it
	--timer.Create("Charger"..tostring(self.nEntityIndex).."_HasEnemyInRange", 0.1, 11, function() --like a think function, checks every 0.1 second to see if an enemy is in range for incapacitation
		if !IsValid(self) then return end
		local id = self.nEntityIndex
		local tbControllers = {}
		for _, x in ipairs(ents.FindByClass("npc_vj_l4d*")) do
			if x.VJ_IsBeingControlled then
				tbControllers[table.Count(tbControllers) + 1] = x.VJ_TheController
			end
		end
		--for k, v in ipairs(ents.FindInSphere(self:GetPos(), self.IncapacitationRange)) do
			if IsValid(self) && IsValid(v) then
				if (v:IsPlayer() && v:Alive() && GetConVar('ai_ignoreplayers'):GetInt() == 0 && not table.HasValue(tbControllers, v)) or (v:IsNPC() && v ~= self) then
					if (self.VJ_IsBeingControlled && v:GetClass() ~= "obj_vj_bullseye" && self:IsEntityAlly(v) == false) || self:Disposition(v) == D_HT then
						if self.HasEnemyIncapacitated then return end
						local enemy = v
						if enemy:IsPlayer() && enemy:GetMoveType() == MOVETYPE_NOCLIP then
							return
						end
						if not self:CanIncapacitate(enemy) then
							--timer.Stop("Charger"..tostring(id).."_HasEnemyInRange")
							return
						end
						
						if enemy:LookupBone("ValveBiped.Bip01_Pelvis") || enemy:IsPlayer() then
							local dist = self:GetPos():Distance(enemy:GetPos())
							if dist <= self.IncapacitationRange then
								self.HasEnemyIncapacitated = true
								print("PUMMELLED")
								--timer.Simple(0.1, function()
									if !IsValid(self) then return end
									local tr = util.TraceLine({start = self:GetPos() + self:OBBMaxs(), endpos = self:GetPos() + self:OBBMaxs() + self:GetForward() * 75, filter = {self, self.pIncapacitatedEnemy}})
									if tr.Hit == false then
										--self:CarryEnemy()
										--[[local tgt = ents.Create("obj_vj_bullseye")
										tgt.EnemyToIndividual = true
										tgt.EnemyToIndividualEnt = self
										tgt:SetModel("models/dav0r/hoverball.mdl")
										tgt:SetPos(enemy:GetPos() + self:GetForward() * 650)
										self.pCarryTarget = tgt
										self:BuildPath(tgt)]]
										self:CarryEnemy()
									end
								--end)
								--timer.Stop("Charger"..tostring(id).."_HasEnemyInRange") 
								self:SetLocalVelocity(self:GetForward() * 1000) 
								self.pIncapacitatedEnemy = enemy
								--enemy:SetLocalVelocity(self:GetForward() * 0)
								--self.MovementType = VJ_MOVETYPE_STATIONARY 				
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
								self.EnemyMoveType = enemy:GetMoveType()
								if enemy:IsNPC() then
									enemy:SetMoveType(MOVETYPE_FLY)
									for k, v in ipairs(ents.FindByClass("player")) do
										VJ_CreateSound(v,"vj_l4d2/music/tags/mortificationhit.mp3",90,self:VJ_DecideSoundPitch(100,100))
									end
									if GetConVar("vj_l4d2_npcs_dropweapons"):GetInt() == 0 then
										if IsValid(enemy:GetActiveWeapon()) then
											enemy:GetActiveWeapon():SetNoDraw(true)
										end
									else
										enemy:DropWeapon()
									end
								elseif enemy:IsPlayer() then
									enemy:SetMoveType(MOVETYPE_CUSTOM)
									self:Incap_Lighting(enemy)
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
								   	mdl = ents.Create("prop_anim_survivor")
									mdl:SetModel("models/survivors/L4D2_Human_base.mdl")
									mdl:SetPos(tr.HitPos)
									mdl:SetAngles(Angle(ang.x, ang.y - 180, ang.z))
									mdl:Spawn()
									mdl:SetRenderMode(1)
									mdl:SetColor(Color(0, 0, 0, 0))
									--if enemy:IsPlayer() then
										mdl:SetParent(self)
									--[[else
										mdl:SetParent(enemy)
									end]]
									self:IncapacitateEnemy(enemy, mdl)
								end
								self.pEnemyRagdoll = mdl
								--if enemy:IsPlayer() then
									enemy:SetParent(self)
									enemy:SetPos(self:GetPos())
								--[[else
									self:SetParent(enemy)
								end]]		
							end
						end
					end
				end
			end
		--end
	--end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DismountCharger()
	self.MovementType = VJ_MOVETYPE_GROUND
	self.HasEnemyIncapacitated = false
	--self:SetParent(nil)
	if self.VJ_IsBeingControlled then
		self.AnimTbl_IdleStand = {ACT_IDLE}
	end
	self.Behavior = VJ_BEHAVIOR_AGGRESSIVE
	self:VJ_ACT_PLAYACTIVITY(ACT_IDLE)
	if self.IncapSong then
		self.IncapSong:Stop()
		self.IncapSong = nil
	end
	if !IsValid(self.pIncapacitatedEnemy) then return end
	local enemy = self.pIncapacitatedEnemy
	--enemy:SetMoveType(self.EnemyMoveType)
	enemy:SetParent(nil)
	enemy:SetPos(self:GetPos())
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
	enemy:SetMoveType(self.EnemyMoveType)
	timer.Simple(0, function()
		local ene = enemy
		timer.Simple(0.1, function()
			if !IsValid(ene) then return end
			--if not ene:IsInWorld() then
				local pos = ene:GetPos()
				local pX = Vector(pos.x + ene:OBBMaxs().x, pos.y , pos.z)
				local nX = Vector(pos.x - ene:OBBMaxs().x, pos.y, pos.z)
				local pY = Vector(pos.x, pos.y + ene:OBBMaxs().y, pos.z)
				local nY = Vector(pos.x, pos.y - ene:OBBMaxs().y, pos.z)

				local tr1 = util.TraceLine({start = pos, endpos = pX, filter = {ents.FindInSphere(pos, ene:OBBMaxs().x * 4)}})
				local tr2 = util.TraceLine({start = pos, endpos = nX, filter = {ents.FindInSphere(pos, ene:OBBMaxs().x * 4)}})
				local tr3 = util.TraceLine({start = pos, endpos = pY, filter = {ents.FindInSphere(pos, ene:OBBMaxs().x * 4)}})
				local tr4 = util.TraceLine({start = pos, endpos = nY, filter = {ents.FindInSphere(pos, ene:OBBMaxs().x * 4)}})

				if tr1.HitWorld == true then
					if tr3.HitWorld == true then
						ene:SetPos(Vector(nX.x, nX.y - ene:OBBMaxs().y, nX.z))
					elseif tr4.HitWorld == true then
						ene:SetPos(Vector(nX.x, nX.y + ene:OBBMaxs().y, nX.z))
					else
						ene:SetPos(nX)
					end
				elseif tr2.HitWorld == true then
					if tr3.HitWorld == true then
						ene:SetPos(Vector(pX.x, pX.y - ene:OBBMaxs().y, pX.z))
					elseif tr4.HitWorld == true then
						ene:SetPos(Vector(pX.x, pX.y + ene:OBBMaxs().y, pX.z))
					else
						ene:SetPos(pX)
					end
				elseif tr3.HitWorld == true then
					if tr1.HitWorld == true then
						ene:SetPos(Vector(nY.x - ene:OBBMaxs().x, nY.y, nY.z))
					elseif tr2.HitWorld == true then
						ene:SetPos(Vector(nY.x + ene:OBBMaxs().x, nY.y, nY.z))
					else
						ene:SetPos(nY)
					end
				elseif tr4.HitWorld == true then
					if tr1.HitWorld == true then
						ene:SetPos(Vector(pY.x - ene:OBBMaxs().x, pY.y, pY.z))
					elseif tr2.HitWorld == true then
						ene:SetPos(Vector(pY.x + ene:OBBMaxs().x, pY.y, pY.z))
					else
						ene:SetPos(pY)
					end
				end
			--end
		end)
	end)
	if enemy:IsPlayer() then
		self:Incap_Lighting(enemy, true)
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
	if IsValid(self.pEnemyRagdoll) then
		self.pEnemyRagdoll:Remove()
		self.pEnemyRagdoll = nil
	end
	self.pIncapacitatedEnemy = nil
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_AfterStartTimer()
	--timer.Stop("timer_act_playingattack"..self:EntIndex())
	self:SetNW2Int("ChargeT",CurTime() +self.NextLeapAttackTime)
	if timer.Exists("Charger_HitWall") then timer.Stop("Charger_HitWall") end 
	--[[timer.Create("Charger_HitWall", 0.1, 11, function()
		if !IsValid(self) then return end
		local anims = VJ_PICK{"Shoved_Backward","Shoved_Leftward","Shoved_Rightward"}
		local tr = util.TraceLine( {
			start = self:GetPos() +self:OBBCenter() +self:OBBMaxs() +self:OBBMins(),
			endpos = self:GetPos() + self:GetForward() *80 +self:GetUp() *20,
			filter = {self, self:GetEnemy()},
			mask = MASK_SOLID_BRUSHONLY,
		} )
		if tr.HitWorld then
			self:VJ_ACT_PLAYACTIVITY(anims,true,VJ_GetSequenceDuration(self,anims),false)
			VJ_EmitSound(self,self.SoundTbl_Pain,75,self:VJ_DecideSoundPitch(100,95)) 
			VJ_EmitSound(self,self.SoundTbl_Charger_ImpactHard,75,self:VJ_DecideSoundPitch(100,95))				 
			ParticleEffectAttach("charger_wall_impact",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("lhand"))
			timer.Stop("Charger_HitWall")
		end
	end)]]
	timer.Simple(8, function()
		if self.IsCharging == true then
			self:ResetSequenceInfo()
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
			if self.IsCarryingEnemy == false then
				self:VJ_PlaySequence(self.IncapAnimation) 
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Charger_Think()
	if IsValid(self.pEnemyRagdoll) then
		if self:GetSequence() == self:LookupSequence("Charger_Pound") then
			if self.pIncapacitatedEnemy:Health() < self.pIncapacitatedEnemy:GetMaxHealth() / 3 then
				self.pEnemyRagdoll:ResetSequence("Charger_pounded_incap")
				self.pEnemyRagdoll:ResetSequenceInfo()
				self.pEnemyRagdoll:SetCycle(self:GetCycle())
			else
				self.pEnemyRagdoll:ResetSequence("Charger_pounded")
				self.pEnemyRagdoll:ResetSequenceInfo()
				self.pEnemyRagdoll:SetCycle(self:GetCycle())
			end
		elseif self:GetSequence() == self:LookupSequence("Charger_Pound_Up")  then
			self.pEnemyRagdoll:ResetSequence("Charger_pounded_up")
			self.pEnemyRagdoll:ResetSequenceInfo()
			self.pEnemyRagdoll:SetCycle(self:GetCycle())
		elseif self:GetSequence() == self:LookupSequence("Charger_Pound_North")  then
			self.pEnemyRagdoll:ResetSequence("Charger_pounded_north")
			self.pEnemyRagdoll:ResetSequenceInfo()
			self.pEnemyRagdoll:SetCycle(self:GetCycle())
		elseif self:GetSequence() == self:LookupSequence("Charger_charge") then
			self.pEnemyRagdoll:ResetSequence("Charger_carried")
			self.pEnemyRagdoll:ResetSequenceInfo()
			self.pEnemyRagdoll:SetCycle(self:GetCycle())
		end
		self.pEnemyRagdoll:SetPlaybackRate(1)
		self.pEnemyRagdoll:SetLocalPos(Vector(0, 0, 0))
	end
end

ENT.ChargeAngles = Angle(0, 0, 0)
ENT.pChargeTarget = nil
ENT.pChargeEnt = nil
ENT.bCharged = false
ENT.IsCarryingEnemy = false
ENT.pCarryTarget = nil
ENT.NextChargeAttackTime = 5
ENT.bCanCharge = true
ENT.vecChargePos = Vector(0, 0, 0)
ENT.bCanContinueCharge = true

function ENT:ChargeAttack()
	local function GetYawToTarget(ent, tgt)
		local spos = ent:GetPos()
		local ang = ent:GetAngles()
		local tpos = tgt:GetPos()
		local quadrants = {
			[1] = Vector(spos.x + 45, spos.y - 45, spos.z),
			[2] = Vector(spos.x + 45, spos.y + 45, spos.z),
			[3] = Vector(spos.x - 45, spos.y + 45, spos.z),
			[4] = Vector(spos.x - 45, spos.y - 45, spos.z)
		}
		local distX = math.max(spos.x, tpos.x) - math.min(spos.x, tpos.x)
		local distY = math.max(spos.y, tpos.y) - math.min(spos.y, tpos.y)
		local deg = math.deg(math.atan(distY / distX))
		local quad = math.min(tpos:Distance(quadrants[1]), tpos:Distance(quadrants[2]), tpos:Distance(quadrants[3]), tpos:Distance(quadrants[4]))
		if math.floor(tpos:Distance(quadrants[1])) == math.floor(quad) then
			deg = -deg
		elseif math.floor(tpos:Distance(quadrants[2])) == math.floor(quad) then
			deg = deg
		elseif math.floor(tpos:Distance(quadrants[3])) == math.floor(quad) then
			deg = 180 - deg
		elseif math.floor(tpos:Distance(quadrants[4])) == math.floor(quad) then
			deg = -180 + deg
		end
		return deg
	end

	if self.bCanCharge == true then
		self.bCanCharge = false
		self.bCanContinueCharge = true
		self.HasMeleeAttack = false
		local ang = self:GetAngles()
		self:VJ_TASK_FACE_X(TASK_FACE_ENEMY)
		self.pChargeEnt = self:GetEnemy()
		self.vecChargePos = self:GetEnemy():GetPos()
		self:BuildPath(self.pChargeEnt)
		self:CapabilitiesRemove(CAP_MOVE_JUMP)
		self.ChargeAngles = Angle(ang.x, GetYawToTarget(self, self.pChargeEnt), ang.z)
		self.AnimTbl_Run = {ACT_RUN_AIM_RELAXED}
		self:ResetSequenceInfo()
		timer.Simple(self.NextChargeAttackTime, function()
			if !IsValid(self) then return end
			self.bCanCharge = true
			self.bCanContinueCharge = true
			if self.HasEnemyIncapacitated then
				if self.IsIncapacitating == false then
					self:ResetCharger()
					self:VJ_ACT_PLAYACTIVITY("vjseq_"..self.IncapAnimation)
				end
			end
		end)
	end
end

function ENT:IsPathValid(tgt)
	local function FacePos(ent, ePos, tPos, deg)
		local pos = ePos
		local ang = ent:GetAngles()
		local deg = deg or 0
		local tblPos = {
			[1] = Vector(pos.x, pos.y, pos.z + 1),
			[2] = Vector(pos.x, pos.y, pos.z - 1)
		}
		local quadrants = {
			[1] = Vector(pos.x + 45, pos.y, pos.z),
			[2] = Vector(pos.x - 45, pos.y, pos.z),
			[3] = Vector(pos.x, pos.y + 45, pos.z),
			[4] = Vector(pos.x, pos.y - 45, pos.z)
		}
		local distX = math.max(pos.x, tPos.x) - math.min(pos.x, tPos.x)
		local distY = math.max(pos.y, tPos.y) - math.min(pos.y, tPos.y)
		local distZ = math.max(pos.z, tPos.z) - math.min(pos.z, tPos.z)
		local degX = math.deg(math.atan(distZ / distX))
		local degY = math.deg(math.atan(distZ / distY))
		local pos = math.min(tPos:Distance(tblPos[1]), tPos:Distance(tblPos[2]))
		local quad = math.min(tPos:Distance(quadrants[1]), tPos:Distance(quadrants[2]), tPos:Distance(quadrants[3]), tPos:Distance(quadrants[4]))
		if quad == tPos:Distance(quadrants[1]) || quad == tPos:Distance(quadrants[2]) then
			if pos == tPos:Distance(tblPos[1]) then
				ent:SetAngles(Angle(-degX + deg, ang.y, ang.z))
			elseif pos == tPos:Distance(tblPos[2]) then
				ent:SetAngles(Angle(degX + deg, ang.y, ang.z))
			end
		elseif quad == tPos:Distance(quadrants[3]) || quad == tPos:Distance(quadrants[4]) then
			if pos == tPos:Distance(tblPos[1]) then
				ent:SetAngles(Angle(-degY + deg, ang.y, ang.z))
			elseif pos == tPos:Distance(tblPos[2]) then
				ent:SetAngles(Angle(degY + deg, ang.y, ang.z))
			end
		end
	end

	local enemy = tgt
	local flDistance = self:GetPos():Distance((enemy:GetPos() + enemy:GetForward() * 25))
	local instances = 0
	local pos = self:GetPos()
	local ang = self:GetAngles()
	local dSeg = 40
	if flDistance >= dSeg then
		math.Round(flDistance, 1)
		instances = flDistance / dSeg
	end
	local iteration = dSeg
	local lastNode
	local lastUp  = 20
	local lastPos = self:GetPos()
	instances = math.Round(instances)
	if instances > 0 then
		for i = 1, instances do
			if !IsValid(self) then return end
			local seg = ents.Create("prop_dynamic")
			seg:SetModel("models/dav0r/hoverball.mdl")
			seg:SetAngles(ang)
			FacePos(seg, seg:GetPos(), enemy:GetPos())
			local _ents = ents.FindInSphere(self:GetPos(), 650)
			local tr = util.TraceLine({start = lastPos, endpos = lastPos + seg:GetForward() * dSeg, filter = {_ents}})
			if tr.HitWorld == true then
				seg:SetPos(lastPos + self:GetForward() * dSeg + seg:GetUp() * 20)
				lastUp = lastUp + 20
			else
				seg:SetPos(lastPos + self:GetForward() * dSeg + seg:GetUp() * 5)
			end
			seg:SetCollisionGroup(1)
			seg:SetNoDraw(true)
			seg:Spawn()
			seg:SetOwner(self)
			self:DeleteOnRemove(seg)
			timer.Simple(0.1, function()
				if !IsValid(seg) then return end
				seg:Remove()
			end)
			if i == instances then
				lastNode = seg
			else
				lastPos = seg:GetPos()
			end
			iteration = iteration + dSeg
		end
	end
	if lastNode then
		if lastNode:GetPos():Distance(tgt:GetPos()) <= 100 then
			return true
		else
			return false
		end
	end
end

function ENT:BuildPath(tgt)
	--PrintMessage(HUD_PRINTTALK, "BUILD PATH")
	local function FacePos(ent, ePos, tPos, deg)
		local pos = ePos
		local ang = ent:GetAngles()
		local deg = deg or 0
		local tblPos = {
			[1] = Vector(pos.x, pos.y, pos.z + 1),
			[2] = Vector(pos.x, pos.y, pos.z - 1)
		}
		local quadrants = {
			[1] = Vector(pos.x + 45, pos.y, pos.z),
			[2] = Vector(pos.x - 45, pos.y, pos.z),
			[3] = Vector(pos.x, pos.y + 45, pos.z),
			[4] = Vector(pos.x, pos.y - 45, pos.z)
		}
		local distX = math.max(pos.x, tPos.x) - math.min(pos.x, tPos.x)
		local distY = math.max(pos.y, tPos.y) - math.min(pos.y, tPos.y)
		local distZ = math.max(pos.z, tPos.z) - math.min(pos.z, tPos.z)
		local degX = math.deg(math.atan(distZ / distX))
		local degY = math.deg(math.atan(distZ / distY))
		local pos = math.min(tPos:Distance(tblPos[1]), tPos:Distance(tblPos[2]))
		local quad = math.min(tPos:Distance(quadrants[1]), tPos:Distance(quadrants[2]), tPos:Distance(quadrants[3]), tPos:Distance(quadrants[4]))
		if quad == tPos:Distance(quadrants[1]) || quad == tPos:Distance(quadrants[2]) then
			if pos == tPos:Distance(tblPos[1]) then
				ent:SetAngles(Angle(-degX + deg, ang.y, ang.z))
			elseif pos == tPos:Distance(tblPos[2]) then
				ent:SetAngles(Angle(degX + deg, ang.y, ang.z))
			end
		elseif quad == tPos:Distance(quadrants[3]) || quad == tPos:Distance(quadrants[4]) then
			if pos == tPos:Distance(tblPos[1]) then
				ent:SetAngles(Angle(-degY + deg, ang.y, ang.z))
			elseif pos == tPos:Distance(tblPos[2]) then
				ent:SetAngles(Angle(degY + deg, ang.y, ang.z))
			end
		end
	end

	local enemy = tgt
	local flDistance = self:GetPos():Distance((enemy:GetPos() + enemy:GetForward() * 25))
	local instances = 0
	local pos = self:GetPos()
	local ang = self:GetAngles()
	local dSeg = 40
	if flDistance >= dSeg then
		math.Round(flDistance, 1)
		instances = flDistance / dSeg
	end
	local iteration = dSeg
	instances = math.Round(instances)
	if instances > 0 then
		for i = 1, instances do
			if !IsValid(self) then return end
			local seg = ents.Create("obj_vj_bullseye")
			seg:SetModel("models/dav0r/hoverball.mdl")
			seg:SetAngles(ang)
			FacePos(seg, seg:GetPos(), enemy:GetPos())
			local _ents = ents.FindInSphere(self:GetPos(), 650)
			local tr = util.TraceLine({start = pos, endpos = pos + self:GetForward() * iteration, filter = {_ents}})
			if tr.HitWorld == true then
				local pos1 = pos + self:GetForward() * iteration + self:GetUp() * iteration
				local tr1 = util.TraceLine({start = pos + self:EyePos(), endpos = pos1, filter = _ents})
				if tr1.HitWorld == false && util.IsInWorld(pos1) == true then
					seg:SetPos(pos1)
				else
					break
				end
			else
				seg:SetPos(pos + seg:GetForward() * iteration + seg:GetUp() * 10)
			end
			seg:SetCollisionGroup(1)
			seg:SetNoDraw(true)
			seg:Spawn()
			seg:SetOwner(self)
			self:DeleteOnRemove(seg)
			self:SetTarget(seg)
			timer.Simple(0.1, function()
				if !IsValid(seg) then return end
				seg:Remove()
			end)
			if not seg:IsInWorld() then
				break
			end
			iteration = iteration + dSeg
		end
	end
	local fPos = self:GetPos() + self:GetForward() * 500
	local speed = self:GetPos():Distance(fPos)
	local tm = (instances * dSeg) / (self:GetSequenceGroundSpeed(self:LookupSequence("Charger_charge")))
	timer.Simple(tm + 0.2, function()
		if !IsValid(self) then return end
		if self.HasEnemyIncapacitated == false then
			self:ResetCharger()
			self:ContinueCharging()
		end
	end)
end

function ENT:SetCarryTarget()
	local flDistance = 650
	local instances = 0
	local pos = self:GetPos()
	local ang = self:GetAngles()
	local dSeg = 40
	if flDistance >= dSeg then
		math.Round(flDistance, 1)
		instances = flDistance / dSeg
	end
	local iteration = dSeg
	local tgt
	if instances > 0 then
		for i = 1, instances do
			if !IsValid(self) then return end
			local seg = ents.Create("obj_vj_bullseye")
			seg:SetModel("models/dav0r/hoverball.mdl")
			local _ents = ents.FindInSphere(self:GetPos(), 650)
			local tr = util.TraceLine({start = pos + self:EyePos(), endpos = pos + self:EyePos() + self:GetForward() * iteration, filter = _ents})
			if tr.HitWorld == true --[[tgt:GetPos().z > self:GetPos().z + 40]] then
				local pos1 = pos + self:GetForward() * iteration + self:GetUp() * iteration
				local tr1 = util.TraceLine({start = pos + self:EyePos(), endpos = pos1, filter = _ents})
				if tr1.HitWorld == false && util.IsInWorld(pos1) == true then
					seg:SetPos(pos1)
				else
					self.pCarryTarget = seg
					break
				end
			else
				seg:SetPos(pos + self:GetForward() * iteration + self:GetUp() * 10)
			end
			seg:SetAngles(ang)
			seg:SetCollisionGroup(1)
			seg:SetNoDraw(false)
			seg:Spawn()
			seg:SetOwner(self)
			self:DeleteOnRemove(seg)
			self:SetTarget(seg)
			if i == instances then
				self.pChargeTarget = seg
			else
				timer.Simple(0.1, function()
					if !IsValid(seg) then return end
					seg:Remove()
				end)
			end
			iteration = iteration + dSeg
		end
	end
end

function ENT:CarryEnemy()
	if self.IsCarryingEnemy == true then return end
	self.IsCarryingEnemy = true
	self:SetAngles(self.ChargeAngles)
	if self.HasEnemyIncapacitated then
		self.Behavior = VJ_BEHAVIOR_NEUTRAL
		local tgt = ents.Create("obj_vj_bullseye")
		tgt.EnemyToIndividual = true
		tgt.EnemyToIndividualEnt = self
		tgt:SetModel("models/dav0r/hoverball.mdl")
		local tr = util.TraceLine({start = self:GetPos() + self:OBBCenter(), endpos = self:GetPos() + self:OBBCenter() + self:GetForward() * 650, filter = ents.FindInSphere(self:GetPos(), 650) --[[{self, self.pIncapacitatedEnemy, self.pEnemyRagdoll}]]})
		if tr.HitWorld == true then
			tgt:SetPos(tr.HitPos - self:GetForward() * 20)
		else
			tgt:SetPos(self:GetPos() + self:GetForward() * 650 + self:GetUp() * 10)
		end
		tgt:SetCollisionGroup(1)
		tgt:SetNoDraw(false)
		tgt:Spawn()
		self.pCarryTarget = tgt
		self:BuildPath(tgt)
		self:ClearEnemyMemory(self:GetEnemy())
		self:VJ_DoSetEnemy(tgt, false, true)
		self:SetTarget(tgt)
		self:DeleteOnRemove(tgt)
	end
end

function ENT:ContinueCharging()
	if self.bCanContinueCharge == false then return end
	self.bCanContinueCharge = false
	self:SetAngles(self.ChargeAngles)
	self.AnimTbl_Run = {ACT_RUN_AIM_RELAXED}
	self:ResetSequenceInfo()
	self:SetLocalVelocity(self:GetForward() * 1000)

	local function FacePos(ent, ePos, tPos, deg)
		local pos = ePos
		local ang = ent:GetAngles()
		local deg = deg or 0
		local tblPos = {
			[1] = Vector(pos.x, pos.y, pos.z + 1),
			[2] = Vector(pos.x, pos.y, pos.z - 1)
		}
		local quadrants = {
			[1] = Vector(pos.x + 45, pos.y, pos.z),
			[2] = Vector(pos.x - 45, pos.y, pos.z),
			[3] = Vector(pos.x, pos.y + 45, pos.z),
			[4] = Vector(pos.x, pos.y - 45, pos.z)
		}
		local distX = math.max(pos.x, tPos.x) - math.min(pos.x, tPos.x)
		local distY = math.max(pos.y, tPos.y) - math.min(pos.y, tPos.y)
		local distZ = math.max(pos.z, tPos.z) - math.min(pos.z, tPos.z)
		local degX = math.deg(math.atan(distZ / distX))
		local degY = math.deg(math.atan(distZ / distY))
		local pos = math.min(tPos:Distance(tblPos[1]), tPos:Distance(tblPos[2]))
		local quad = math.min(tPos:Distance(quadrants[1]), tPos:Distance(quadrants[2]), tPos:Distance(quadrants[3]), tPos:Distance(quadrants[4]))
		if quad == tPos:Distance(quadrants[1]) || quad == tPos:Distance(quadrants[2]) then
			if pos == tPos:Distance(tblPos[1]) then
				ent:SetAngles(Angle(-degX + deg, ang.y, ang.z))
			elseif pos == tPos:Distance(tblPos[2]) then
				ent:SetAngles(Angle(degX + deg, ang.y, ang.z))
			end
		elseif quad == tPos:Distance(quadrants[3]) || quad == tPos:Distance(quadrants[4]) then
			if pos == tPos:Distance(tblPos[1]) then
				ent:SetAngles(Angle(-degY + deg, ang.y, ang.z))
			elseif pos == tPos:Distance(tblPos[2]) then
				ent:SetAngles(Angle(degY + deg, ang.y, ang.z))
			end
		end
	end

	local tpos = self:GetPos() + self:GetForward() * 650 + self:GetUp() * 10
	local flDistance = self:GetPos():Distance((tpos))
	local instances = 0
	local pos = self:GetPos()
	local ang = self:GetAngles()
	local dSeg = 40
	if flDistance >= dSeg then
		math.Round(flDistance, 1)
		instances = flDistance / dSeg
	end
	local iteration = dSeg
	local lastNode
	local lastUp  = 20
	local lastPos = self:GetPos()
	instances = math.Round(instances)
	local class = "prop_dynamic"
	if instances > 0 then
		for i = 1, instances do
			if !IsValid(self) then return end
			local seg = ents.Create(class)
			seg:SetModel("models/dav0r/hoverball.mdl")
			seg:SetAngles(ang)
			FacePos(seg, lastPos + self:GetForward() * dSeg, lastPos + self:GetForward() * dSeg * 2)
			local _ents = ents.FindInSphere(self:GetPos(), 650)
			local tr = util.TraceLine({start = lastPos, endpos = lastPos + seg:GetForward() * dSeg, filter = {_ents}})
			local gr = util.TraceLine({start = lastPos, endpos = lastPos + seg:GetForward() * dSeg - seg:GetUp() * 10000, filter = _ents})
			local tr2 = util.TraceLine({start = lastPos, endpos = lastPos + seg:GetForward() * dSeg - seg:GetUp() * 50, filter = _ents})
			if tr.HitWorld == true then
				seg:SetPos(lastPos + self:GetForward() * dSeg + seg:GetUp() * 20)
				lastUp = lastUp + 20
			else
				if tr2.HitWorld == false then
					seg:SetPos(gr.HitPos)
					if self:IsOnGround() then
						self:SetVelocity(self:GetForward() * 10000)
					end
				else
					seg:SetPos(lastPos + self:GetForward() * dSeg + seg:GetUp() * 5)
				end
			end
			seg:SetCollisionGroup(1)
			seg:SetNoDraw(true)
			FacePos(seg, lastPos + self:GetForward() * dSeg, lastPos + self:GetForward() * dSeg * 2)
			seg:Spawn()
			seg:SetOwner(self)
			self:DeleteOnRemove(seg)
			timer.Simple(0.1, function()
				if !IsValid(seg) then return end
				seg:Remove()
			end)
			if seg:IsInWorld() == true then
				lastNode = seg
				lastPos = seg:GetPos()
			else
				break
			end
			iteration = iteration + dSeg
		end
	end

	if self.HasEnemyIncapacitated == false then
		self.Behavior = VJ_BEHAVIOR_NEUTRAL
		local tgt = ents.Create("obj_vj_bullseye")
		tgt.EnemyToIndividual = true
		tgt.EnemyToIndividualEnt = self
		tgt:SetModel("models/dav0r/hoverball.mdl")
		tgt:SetPos(lastPos)
		tgt:SetCollisionGroup(1)
		tgt:SetNoDraw(false)
		tgt:Spawn()
		self.pCarryTarget = tgt
		self:BuildPath(tgt)
		self:ClearEnemyMemory(self:GetEnemy())
		self:VJ_DoSetEnemy(tgt, false, true)
		self:SetTarget(tgt)
		self:DeleteOnRemove(tgt)
	end
end

function ENT:ResetCharger()
	self.AnimTbl_Run = {ACT_RUN}
	self:ScheduleFinished()
	self:ResetSequenceInfo()
	self:SetMoveType(MOVETYPE_STEP)
	self.IsCarryingEnemy = false
	if IsValid(self.pCarryTarget) then
		self.pCarryTarget:Remove()
	end
	if IsValid(self.pChargeTarget) then
		self.pChargeTarget:Remove()
	end
end

function ENT:SetUpCharger()
	self.MovementType = VJ_MOVETYPE_STATIONARY
	self:VJ_ACT_PLAYACTIVITY("vjseq_"..self.IncapAnimation)
end

ENT.tblChargeWhitelist = {}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	self:Charger_Think()
	self:GetGroundType(self:GetPos())
	self:IgnoreIncappedEnemies()

	if self.IsCarryingEnemy || (self.IsCharging && self.HasEnemyIncapacitated == false) then
		self.HasMeleeAttack = false

		self.tblChargeWhitelist = ents.FindInCone(self:GetPos(), self:GetForward() * 650, 650, math.cos(45))
		for k, v in ipairs(self.tblChargeWhitelist) do
			if v ~= self then
				if v:IsEFlagSet(EFL_DONTBLOCKLOS) == false then

				end
			end
		end

		local leftPos  = self:GetPos() - self:GetRight() * 45
		local rightPos = self:GetPos() + self:GetRight() * 45
		for k, v in ipairs(ents.FindInCone(self:GetPos(), self:GetForward(), 200, 0.707)) do
			if self.pChargeEnt == v then return end
			if self:IsEntityAlly(v) == false then
				local function GetSidePos()
					local dst = math.min(v:GetPos():Distance(leftPos), v:GetPos():Distance(rightPos))
					if dst == v:GetPos():Distance(leftPos) then
						return leftPos
					else
						return rightPos
					end
				end
				local dir
				if GetSidePos() == leftPos then
					dir = -self:GetRight()
				else
					dir = self:GetRight()
				end
				if v:IsNPC() || v:IsNextBot() || v:IsPlayer() then
					v:SetVelocity(v:GetUp() * 150 + self:GetForward() * 500 + dir * 400)
				elseif v:GetClass() == "prop_physics" then
					if not util.IsValidPhysicsObject(v, 0) then return end
					local force
					if v:GetPhysicsObject():GetMass() < 150 then
						force = v:GetPhysicsObject():GetMass() * 500
					else
						force = v:GetPhysicsObject():GetMass() * 200
					end
					v:GetPhysicsObject():ApplyForceCenter(v:GetUp() * 15 + self:GetForward() * force + dir * force)
				end
			end
		end

		if self.IsCarryingEnemy == false then
			local tr = util.TraceLine({start = self:GetPos() + self:OBBCenter(), endpos = self:GetPos() + self:OBBMaxs() + self:GetForward() * 70, filter = {self, ents.FindByClass("npc_*"), ents.FindByClass("player"), self.pChargeEnt, self.pIncapacitatedEnemy, self.pEnemyRagdoll}})
			if tr.Hit == true then
				print("HIT SOMETHING")
				self:ResetCharger()
				self:VJ_ACT_PLAYACTIVITY("vjseq_".."Shoved_Backward")
			end
		else
			local tr = util.TraceLine({start = self:GetPos() + self:OBBCenter(), endpos = self:GetPos() + self:OBBCenter() + self:GetForward() * 75, filter = ents.FindInSphere(self:GetPos(), 200)})
			if tr.HitWorld == true then
				self:ResetCharger()
			end
		end

		if IsValid(self:GetTarget()) then
			self:FaceCertainPosition(self:GetTarget():GetPos(), 0.1)
			self.ChargeAngles = self:GetAngles()
		end


		if self:IsOnGround() then
			self:SetVelocity(self:GetForward() * 1000)
		end

		self:VJ_TASK_GOTO_TARGET("TASK_RUN_PATH")
		if self.HasEnemyIncapacitated == false then
			--if IsValid(self.pChargeEnt) then
				local dist = self:GetPos():Distance(self.pChargeEnt:GetPos())
				if dist <= 70 then
					self:ResetCharger()
					self:PummelEnemy(self.pChargeEnt)
				end
			--end
		else
			self.AnimTbl_Run = {ACT_RUN_AIM_RELAXED}
			if IsValid(self.pCarryTarget) then
				self.pIncapacitatedEnemy:SetLocalPos(Vector(0, 0, 200))
				local pos = self.pCarryTarget:GetPos()
				if self:GetPos():Distance(Vector(pos.x, pos.y, self:GetPos().z)) <= 35 then
					self:ResetCharger()
					self.pIncapacitatedEnemy:SetLocalPos(Vector(0, 0, 100))
					self:SetUpCharger()
				end
			end
			if IsValid(self.pChargeTarget) then
				if self:GetPos():Distance(self.pChargeTarget:GetPos()) < 40 then
					self:ResetCharger()
				end
			end
		end
	else
		if self.HasEnemyIncapacitated == false then
			self.HasMeleeAttack = true
		end 
	end

	if self:GetEnemy() then
		if self.HasEnemyIncapacitated == false then
			local dist = self:GetPos():Distance(self:GetEnemy():GetPos())
			if self.IsCharging == false then
				if self:IsLineOfSightClear(self:GetEnemy():GetPos() + self:GetEnemy():OBBCenter()) then
					if self.bCanCharge == true && dist > 200 && dist <= 650 then
						--self:VJ_DoSetEnemy(self:GetEnemy(), false, false)
						if self:IsPathValid(self:GetEnemy()) --[[math.abs(self:GetPos().z - self:GetEnemy():GetPos().z) < 700]] then
							self:ChargeAttack()
							PrintMessage(HUD_PRINTTALK, "CHARGE!!")
						end
					end
				end
			end
		end
	end

	if self.IsGhosted then
		self:Ghost()
	end

	self.vecLastPos = self:GetPos()

	if string.find(self:GetSequenceName(self:GetSequence()), "Charger_pound") then
		self.IsIncapacitating = true
	else
		self.IsIncapacitating = false
	end

	if self:GetSequence() == self:LookupSequence("Charger_charge") then
		self.IsCharging = true
	else
		self.IsCharging = false
	end

	--[[if self.IsIncapacitating == true && self.HasEnemyIncapacitated == false then
		self:VJ_ACT_PLAYACTIVITY("Jump", true)   
	end]]

	if self.HasEnemyIncapacitated == true then 
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
				self.pEnemyRagdoll:SetPos(self:GetAttachment(3).Pos)
			end
		end
		if IsValid(self.pIncapacitatedEnemy) then
			local enemy = self.pIncapacitatedEnemy
			--[[local md = ents.Create("prop_dynamic")
			md:SetModel("models/dav0r/hoverball.mdl")
			md:SetPos(enemy:GetPos())
			md:SetNoDraw(true)
			md:Spawn()
			timer.Simple(0.1, function()
				md:Remove()
			end)]]
			if enemy:Health() <= 0 then
				self:DismountCharger()
			else
				if self.IsCarryingEnemy == true then
					enemy:SetLocalPos(Vector(0, 0, 100))
				else
					enemy:SetLocalPos(Vector(0, 0, 0))
				end
				if not enemy:GetNoDraw() then
					enemy:SetNoDraw(true)
				end
			end
			if not enemy:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
				enemy:AddEFlags(EFL_NO_THINK_FUNCTION)
			end	
			local dist = self:GetPos():Distance(enemy:GetPos())
			if dist > self.IncapacitationRange then
				--self:DismountCharger()
			end
			--[[local Tr_PummelCeiling = util.TraceLine({
				start = self:GetPos() +self:OBBCenter(),
				endpos = self:GetPos() +self:OBBCenter() +self:GetUp() *150,
				filter = {self,self.pIncapacitatedEnemy}
			})
			local Tr_PummelWall = util.TraceLine({
				start = self:GetPos() +self:OBBCenter(),
				endpos = self:GetPos() +self:OBBCenter() +self:GetForward() *150,
				filter = {self,self.pIncapacitatedEnemy}
			})
			if Tr_PummelWall.HitWorld then
				self.PummelType = "North"
				self.IncapAnimation = "Charger_Pound_North"
			elseif Tr_PummelCeiling.HitWorld then
				self.PummelType = "Up"
				self.IncapAnimation = "Charger_Pound_Up"
			end]]
		end
	else
		--self.HasMeleeAttack = true
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
	local attacker = dmginfo:GetAttacker()
	if IsValid(attacker) then
		if attacker:IsNPC() then
			PrintMessage(HUD_PRINTTALK, attacker:GetName().." killed ".. self:GetName())
		elseif attacker:IsPlayer() then
			PrintMessage(HUD_PRINTTALK, attacker:Nick().." killed ".. self:GetName())
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
