AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/witch.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_w_h")
ENT.HasBloodPool = false -- Does it have a blood pool?
ENT.HullType = HULL_HUMAN
ENT.FindEnemy_CanSeeThroughWalls = true -- Should it be able to see through walls and objects? | Can be useful if you want to make it know where the enemy is at all times
ENT.HasPoseParameterLooking = true -- Does it look at its enemy using poseparameters?
ENT.PoseParameterLooking_InvertPitch = false -- Inverts the pitch poseparameters (X)
ENT.PoseParameterLooking_InvertYaw = false -- Inverts the yaw poseparameters (Y)
ENT.PoseParameterLooking_InvertRoll = false -- Inverts the roll poseparameters (Z)
ENT.PoseParameterLooking_TurningSpeed = 10 -- How fast does the parameter turn?
ENT.DeathCorpseAlwaysCollide = false -- Should the corpse always collide?
ENT.CallForHelp = false -- Does the SNPC call for help?
ENT.PoseParameterLooking_Names = {pitch={"body_pitch"},yaw={"body_yaw"},roll={"PoseParams_Rage"}} -- Custom pose parameters to use, can put as many as needed
ENT.Behavior = VJ_BEHAVIOR_NEUTRAL -- The behavior of the SNPC
ENT.BecomeEnemyToPlayer = false -- Should the friendly SNPC become enemy towards the player if it's damaged by a player?
ENT.BecomeEnemyToPlayerLevel = 1 -- How many times does the player have to hit the SNPC for it to become enemy?
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.AllowPrintingInChat = false -- Should this SNPC be allowed to post in player's chat? Example: "Blank no longer likes you."
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDistance = 45 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 75 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_w_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.HasDeathAnimation = true
ENT.DisableWandering = false
ENT.AnimTbl_Death = {ACT_DIE_GUTSHOT}
ENT.VJC_Data = {
	CameraMode = 1, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(40, 10, -50), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "ValveBiped.Bip01_Head1", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(3, 0, 5), -- The offset for the controller when the camera is in first person
}
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 1 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.AnimTbl_Flinch = {"vjges_flinch_01","vjges_flinch_02"} -- If it uses normal based animation, use this
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = false -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward_02"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward_02"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward_01"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"Boomer.Concrete.WalkLeft","Boomer.Concrete.WalkRight"}
ENT.SoundTbl_Idle = {"WanderWitchZombie.Despair"}
ENT.SoundTbl_CombatIdle = {"WitchZombie.Rage"}
ENT.SoundTbl_Alert = {
	"npc/witch/voice/attack/female_distantscream1.mp3",
	"npc/witch/voice/attack/female_distantscream2.mp3",
}
ENT.SoundTbl_Surprised = {"WitchZombie.Surprised"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.mp3","vj_l4d2/pz/hit/claw_hit_flesh_2.mp3","vj_l4d2/pz/hit/claw_hit_flesh_3.mp3","vj_l4d2/pz/hit/claw_hit_flesh_4.mp3"}
ENT.SoundTbl_BeforeMeleeAttack = {"WitchZombie.Rage"}
ENT.SoundTbl_Pain = {"WitchZombie.Pain"}
ENT.SoundTbl_KilledEnemy = {"WitchZombie.RetreatHorror"}
ENT.SoundTbl_LostEnemy = {"WitchZombie.RetreatHorror"}
ENT.SoundTbl_Death = {"WitchZombie.Die"}
ENT.SoundTbl_Witch_GrowlLow = {"WitchZombie.GrowlLow"}
ENT.SoundTbl_Witch_GrowlMedium = {"WitchZombie.GrowlMedium"}
ENT.SoundTbl_Witch_GrowlHigh = {"WitchZombie.GrowlHigh"}
ENT.SoundTbl_Investigate = {"WitchZombie.Surprised"}
ENT.NextSoundTime_Idle1 = 2
ENT.NextSoundTime_Idle2 = 2
ENT.IdleSoundChance = 2
ENT.BreathSoundChance = 2
ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.FootStepSoundLevel = 80
ENT.AlertSoundLevel = 95
ENT.IdleSoundLevel = 85
ENT.BreathSoundLevel = 75
ENT.DeathSoundLevel = 85
ENT.LeapAttackJumpSoundLevel = 100
ENT.BeforeLeapAttackSoundLevel = 105
ENT.NextSoundTime_Breath1 = 2
ENT.NextSoundTime_Breath2 = 2

ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105

ENT.UseTheSameGeneralSoundPitch = false

ENT.MeleeAttackAnimationAllowOtherTasks = true

--- Custom ---
ENT.SoundTbl_CalmIdle = {"vj_l4d2/music/witch/lost_little_witch_01a.mp3", "vj_l4d2/music/witch/lost_little_witch_02a.mp3", "vj_l4d2/music/witch/lost_little_witch_03a.mp3", "vj_l4d2/music/witch/lost_little_witch_04a.mp3"}
ENT.SoundTbl_IdleSoundtrack = {"vj_l4d2/music/witch/witchencroacher.mp3"}
ENT.SoundTbl_AlertedSoundtrack = {"vj_l4d2/music/witch/psychowitch.mp3"}
ENT.SoundTbl_OnFireSoundtrack = {"vj_l4d2/music/witch/witchroast.mp3"}
ENT.AggressionSound = nil
ENT.m_idleSound = nil
ENT.IncapSong = nil
ENT.bSwitchedMode = false
ENT.bCanChangePPs = true
ENT.EnemyInRange = false
ENT.bTriggered = false
ENT.nextPoseReset = -1
ENT.nextPoseChange = -1
ENT.PoseParams_Rage = 0
ENT.pTargetEntity = nil
ENT.WitchState = "Stand"
ENT.FootStepType = "CommonLight"
ENT.IsSitting = false

util.AddNetworkString("L4D2WitchHUD")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetHullType(self.HullType)

	for _, x in ipairs(player.GetAll()) do
		self.soundtrack_chase = CreateSound(x, "vj_l4d2/music/witch/psychowitch.mp3") 
		self.soundtrack_chase:SetSoundLevel(100)
		self.soundtrack_burning = CreateSound(x, "vj_l4d2/music/witch/witchroast.mp3") 
		self.soundtrack_burning:SetSoundLevel(100)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
	ply:EmitSound("ui/menu_horror01.mp3")
	ply:EmitSound("ui/pickup_guitarriff10.mp3")
	net.Start("L4D2WitchHUD")
		net.WriteBool(false)
		net.WriteEntity(self)
		net.WriteEntity(ply)
	net.Send(ply)
	function self.VJ_TheControllerEntity:CustomOnStopControlling()
		net.Start("L4D2WitchHUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTouch(ent)
	if self.bTriggered == false then
		if ent ~= self && (ent:IsNPC() || (ent:IsPlayer() && ent:Alive() && GetConVar("ai_ignoreplayers"):GetInt() == 0)) && not self:IsEntityAlly(ent) then
			self:EnableAggression(ent)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "event_land" then
		VJ_CreateSound(self,"vj_l4d2/pz/fall/bodyfall_largecreature.mp3",85,self:VJ_DecideSoundPitch(100,100))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	self.AnimTbl_MeleeAttack = {"vjges_MovingMelee_01","vjges_MovingMelee_02"}
	self.TimeUntilMeleeAttackDamage = 0.8
	self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_w_d")
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:EnableAggression(enemy)
	if self.bTriggered == true then return end
	self.HasIdleSounds = true
	self.pTargetEntity = enemy
	if self.AggressionSound && self.AggressionSound:IsPlaying() then self.AggressionSound:Stop() end
	self.HasPoseParameterLooking = true
	self.Behavior = VJ_BEHAVIOR_AGGRESSIVE
	self:VJ_ACT_PLAYACTIVITY("Wander_Acquire")
    if GetConVar("vj_l4d2_print"):GetInt() == 1 then
    	if self.pTargetEntity:IsNPC() then
    		PrintMessage(HUD_PRINTTALK, self.pTargetEntity:GetClass().." startled the ".. self:GetName())
    	elseif self.pTargetEntity:IsPlayer() then
    		PrintMessage(HUD_PRINTTALK, self.pTargetEntity:GetName().." startled the ".. self:GetName())
    	end
    end
	self.bTriggered = true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DisableAggression()
	self.HasIdleSounds = true
	self.witch_rage = 0
	self.bTriggered = false
	self.pTargetEntity = nil
	if self.IsSitting == true then
		self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
	else
		self.AnimTbl_IdleStand = {ACT_IDLE}
	end
	self:ResetEnemy()
	self:ClearPoseParameters()
	self.HasPoseParameterLooking = false
	self.Behavior = VJ_BEHAVIOR_PASSIVE
	self.VJ_DoSetEnemy(nil)
	self:VJ_PlaySequence("Idle_Pre_Retreat")
	timer.Simple(self:SequenceDuration(self:LookupSequence("Idle_Pre_Retreat")), function()
		if !IsValid(self) then return end
		if self.IsSitting == true then
			self:VJ_ACT_PLAYACTIVITY(ACT_IDLE_RELAXED)
		else
			self:VJ_ACT_PLAYACTIVITY(ACT_IDLE)
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	self:GetGroundType(self:GetPos())
	if self:IsOnFire() then
		self:PlayWitchMusic(3, true)
		self.AnimTbl_Run = {self:GetSequenceActivity(self:LookupSequence("Run_OnFire"))}
	else
		self.AnimTbl_Run = {ACT_RUN}
	end
	if self.bTriggered == false then
		if not self:IsOnFire() then
			self:PlayWitchMusic(1, true)
		end
		if self.PoseParams_Rage <= 0 then
			self:PlayCalmIdleSound() 
		end
		if self.PoseParams_Rage > 0 && self.PoseParams_Rage <= 0.25 then
			self:CreateAggressionSound(1)
			self:PlayIrritatedSound(1)
		elseif self.PoseParams_Rage > 0.25 && self.PoseParams_Rage <= 0.5 then
			self:CreateAggressionSound(1)
			self:PlayIrritatedSound(2)
		elseif self.PoseParams_Rage > 0.5 && self.PoseParams_Rage <= 0.75 then
			self:CreateAggressionSound(2)
			self:PlayIrritatedSound(3)
			if self.IsSitting == true then
				self:VJ_ACT_PLAYACTIVITY("vjseq_Agitated_02")
			end
		elseif self.PoseParams_Rage > 0.75 && self.PoseParams_Rage <= 1 then
			self:CreateAggressionSound(3)
			self:PlayIrritatedSound(4)
		end
		if self:GetEnemiesInRange() then
			self.HasIdleSounds = false
			self.bCanChangePPs = true
			if self.bSwitchedMode == false then
				self.nextPoseChange = CurTime() + 1
				self.bSwitchedMode = true
			end
		else
			if self.IsSitting == true then
				if self:GetSequenceActivity(self:GetSequence()) == ACT_IDLE_AGITATED then 
					self:VJ_ACT_PLAYACTIVITY(ACT_IDLE_RELAXED)
					self:ResetSequenceInfo()
				end
				self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
			end
			self.bCanChangePPs = false
			if self.bSwitchedMode == false then
				self.nextPoseReset = CurTime() + 1
				self.bSwitchedMode = true
			end
		end
	else
		self.AnimTbl_IdleStand = {ACT_IDLE}
		if not self:IsOnFire() then
			self:PlayWitchMusic(2, true)
		end
		local ent = self.pTargetEntity
		if not IsValid(self.pTargetEntity) || self.pTargetEntity:Health() <= 0 || ( self.pTargetEntity:IsPlayer() && (GetConVar("ai_ignoreplayers"):GetInt() == 1 || ent:Alive() == false) ) then
			self:DisableAggression()
		else
			self:VJ_DoSetEnemy(self.pTargetEntity)
		end
	end
	if self.PoseParams_Rage > 1 then
		self.PoseParams_Rage = 1
	end
	if self.PoseParams_Rage < 0 then
		self.PoseParams_Rage = 0
	end
	if self.PoseParams_Rage == 1 then
		if IsValid(self.pTargetEntity) && self.pTargetEntity:Health() > 0 then
			self:EnableAggression(self.pTargetEntity)
		else
			self.PoseParams_Rage = 0 
		end
	end
	if self.bTriggered == false then
		self.HasPoseParameterLooking = false
	end
	if self.IsSitting == true then
		if self.nextPoseChange >= CurTime() then
			if self.bCanChangePPs == true then
				self.PoseParams_Rage = self.PoseParams_Rage + 0.01
				self:SetPoseParameter("rage", self.PoseParams_Rage)
				self.bSwitchedMode = false
			end
		end
		if self.nextPoseReset >= CurTime() then
			if self.bCanChangePPs == false then
				self.PoseParams_Rage = self.PoseParams_Rage - 0.1
				self:SetPoseParameter("rage", self.PoseParams_Rage)
				self.bSwitchedMode = false
			end
		end
	else
		if self.nextPoseChange >= CurTime() then
			if self.bCanChangePPs == true then
				self.PoseParams_Rage = self.PoseParams_Rage + 0.01
				self:SetPoseParameter("wander_rage", self.PoseParams_Rage)
				self.bSwitchedMode = false
			end
		end
		if self.nextPoseReset >= CurTime() then
			if self.bCanChangePPs == false then
				self.PoseParams_Rage = self.PoseParams_Rage - 0.1
				self:SetPoseParameter("wander_rage", self.PoseParams_Rage)
				self.bSwitchedMode = false
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo, hitgroup)
	if self:IsOnFire() && dmginfo:IsDamageType(DMG_DIRECT) then
		dmginfo:AddDamage(15)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo, hitgroup)
	if self.bTriggered == false then
		local attacker = dmginfo:GetAttacker()
		if attacker:IsNPC() || attacker:IsNextBot() || (attacker:IsPlayer() && attacker:Alive() == true) then
			self:EnableAggression(dmginfo:GetAttacker())
		end
	end
	if self:IsShoved() then return end
	if dmginfo:IsDamageType(DMG_BLAST) or self.bTriggered == false && dmginfo:IsDamageType(DMG_GENERIC) || dmginfo:IsDamageType(DMG_CLUB) then
		local dpos = dmginfo:GetAttacker():GetPos()
		if dmginfo:IsDamageType(DMG_BLAST) then
			dpos = dmginfo:GetDamagePosition()
		end
		local function GetDirection()
			local directions = {
				{"Shoved_Backward_03", dpos:Distance(self:GetPos() + self:GetForward() * 25)},   --North; move back
				{"Shoved_Leftward_01", dpos:Distance(self:GetPos() + self:GetRight() * 25)},	 --East; move left
				{"Shoved_Forward_01", dpos:Distance(self:GetPos() - self:GetForward() * 25)},   --South; move forward
				{"Shoved_Rightward_01", dpos:Distance(self:GetPos() - self:GetRight() * 25)}	  --West; move right
			}
			table.sort(directions, function(a, b) return a[2] < b[2] end)
			return directions[1][1]
		end
		self:VJ_ACT_PLAYACTIVITY(GetDirection(),true,VJ_GetSequenceDuration(self,GetDirection()),false)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo, hitgroup)
	if self:IsMoving() && self:GetActivity() == ACT_RUN then
		self.AnimTbl_Death = {ACT_DIESIMPLE}
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	if self.IncapSong ~= nil then self.IncapSong:Stop() end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
