AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/spitter.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_sp_h")
ENT.HullType = HULL_HUMAN
ENT.FindEnemy_CanSeeThroughWalls = true -- Should it be able to see through walls and objects? | Can be useful if you want to make it know where the enemy is at all times
ENT.HasPoseParameterLooking = true -- Does it look at its enemy using poseparameters?
ENT.PoseParameterLooking_InvertPitch = false -- Inverts the pitch poseparameters (X)
ENT.PoseParameterLooking_InvertYaw = false -- Inverts the yaw poseparameters (Y)
ENT.PoseParameterLooking_InvertRoll = false -- Inverts the roll poseparameters (Z)
ENT.PoseParameterLooking_TurningSpeed = 10 -- How fast does the parameter turn?
ENT.DeathCorpseAlwaysCollide = false -- Should the corpse always collide?
ENT.CallForHelp = false -- Does the SNPC call for help?
ENT.PoseParameterLooking_Names = {pitch={"body_pitch","head_pitch","aim_pitch"},yaw={"body_yaw","head_yaw","aim_yaw"},roll={}} -- Custom pose parameters to use, can put as many as needed
ENT.VJC_Data = {
	CameraMode = 1, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(40, 10, -50), -- The offset for the controller when the camera is in third person
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
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_sp_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.TimeUntilRangeAttackProjectileRelease = 0.8 -- How much time until the projectile code is ran?
ENT.RangeAttackEntityToSpawn = "obj_vj_l4d2_spit" -- The entity that is spawned when range attacking
ENT.AnimTbl_RangeAttack = {"spitter_spitting"} -- Range Attack Animations
ENT.RangeAttackAnimationFaceEnemy = false -- Should it face the enemy while playing the range attack animation?
ENT.RangeUseAttachmentForPos = true -- Should the projectile spawn on a attachment?
ENT.RangeUseAttachmentForPosID = "mouth" -- The attachment used on the range attack if RangeUseAttachmentForPos is set to true
ENT.RangeDistance = 650 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 50 -- How close does it have to be until it uses melee? -- This is how far away it can shoot
ENT.NextRangeAttackTime = 25 -- How much time until it can use a range attack?
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
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
ENT.SoundTbl_Idle = {"SpitterZombie.Voice"}
ENT.SoundTbl_Alert = {"SpitterZombie.Alert","SpitterZombie.Recognize"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.mp3","vj_l4d2/pz/hit/claw_hit_flesh_2.mp3","vj_l4d2/pz/hit/claw_hit_flesh_3.mp3","vj_l4d2/pz/hit/claw_hit_flesh_4.mp3"}
ENT.SoundTbl_BeforeRangeAttack= {"SpitterZombie.Spit"}
ENT.SoundTbl_Pain = {"SpitterZombie.Pain","SpitterZombie.PainShort"}
ENT.SoundTbl_Death = {"SpitterZombie.Death"}
ENT.SoundTbl_SpitterAcid = {"player/spitter/swarm/spitter_acid_loop_01.mp3","player/spitter/swarm/spitter_acid_loop_02.mp3"}
ENT.SoundTbl_SpitterAcidTheme = {"vj_l4d2/music/terror/pileobile.mp3"}

ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.NextSoundTime_Idle1 = 1
ENT.NextSoundTime_Idle2 = 2
ENT.FootStepSoundLevel = 80
ENT.AlertSoundLevel = 95
ENT.IdleSoundLevel = 95
ENT.DeathSoundLevel = 85
ENT.BeforeRangeAttackSoundLevel = 100
ENT.NextSoundTime_Idle = VJ_Set(2,2)

ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105
ENT.DeathSoundPitch1 = 100
ENT.DeathSoundPitch2 = 100

ENT.UseTheSameGeneralSoundPitch = false

-- Custom --
ENT.IsGhosted = false
ENT.BacteriaSound = nil
ENT.ThemeLoop = nil
ENT.AcidLoop = nil
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/spitterbacteria.mp3","vj_l4d2/music/bacteria/spitterbacterias.mp3"}
ENT.IsTakingCover = false
ENT.RunAwayT = CurTime()
ENT.GhostRunAwayT = CurTime()
ENT.CanSpawnWhileGhosted = false
ENT.HasSpawned = false
ENT.IsGhosted = false
ENT.FootStepType = "Common"
ENT.NextAlertSound = CurTime()
ENT.GlowLight = nil

util.AddNetworkString("L4D2SpitterHUD")
util.AddNetworkString("L4D2SpitterHUDGhost")

util.AddNetworkString("Spitter_InitializeParticles")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:L4D2_InitializeHooks()
	self:SetHullType(self.HullType)
	self.nextBacteria = 0
	if GetConVarNumber("vj_l4d2_ghosted") == 0 then
		local light = ents.Create("light_dynamic")
		light:SetKeyValue("_light","110 230 0 255")
		light:SetKeyValue("brightness","0.1")
		light:SetKeyValue("distance","150")
		light:SetKeyValue("style","0")
		light:SetPos(self:GetPos())
		light:SetParent(self)
		light:Spawn()
		light:Activate()
		light:Fire("SetParentAttachment","mouth")
		light:Fire("TurnOn","",0)
		self:DeleteOnRemove(light)
		self.GlowLight = light
	end
	self:SetGhost(tobool(GetConVarNumber("vj_l4d2_ghosted")))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnUnGhost()
	net.Start("Spitter_InitializeParticles")
		net.WriteEntity(self)
	net.Broadcast()
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
	self:SetGhost(true)
	function self.VJ_TheControllerEntity:CustomOnStopControlling()
		net.Start("L4D2SpitterHUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
		net.Start("L4D2SpitterHUDGhost")
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
			net.Start("L4D2SpitterHUDGhost")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2SpitterHUD")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		elseif self.IsGhosted == false then
			net.Start("L4D2SpitterHUD")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2SpitterHUDGhost")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode_AfterProjectileSpawn(projectile)
	self:SetNW2Int("SpitT",CurTime() +self.NextRangeAttackTime)
	self.IsTakingCover = true
	timer.Simple(self.NextRangeAttackTime,function()
		if IsValid(self) then
			self.IsTakingCover = false
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	local randattack = math.random(1,2)
	if randattack == 1 then
		self.AnimTbl_MeleeAttack = {"vjges_spitter_melee_01","vjges_spitter_melee_02"}
		self.TimeUntilMeleeAttackDamage = 0.5
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_sp_d")
	elseif randattack == 2 then
		self.AnimTbl_MeleeAttack = {"vjges_spitter_melee_01","vjges_spitter_melee_02"}
		self.TimeUntilMeleeAttackDamage = 0.5
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_sp_d")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	self:GetGroundType(self:GetPos())
	if self.VJ_IsBeingControlled == false && self.IsGhosted == false then
		self:Special_Think()
	end
	
	if GetConVarNumber("vj_l4d2_enemy_finding") == 1 then
		self.FindEnemy_UseSphere = true 
		self.FindEnemy_CanSeeThroughWalls = true 
	elseif GetConVarNumber("vj_l4d2_enemy_finding") == 0 then
		self.FindEnemy_UseSphere = false 
		self.FindEnemy_CanSeeThroughWalls = false
	end
	if self.IsGhosted then
		self:Ghost()
	end
	if self.IsGhosted then
		self.HasRangeAttack = false
	else
		self.HasRangeAttack = true
	end

	if self.VJ_IsBeingControlled == false then
		if IsValid(self:GetEnemy()) then
			if self.IsTakingCover == true && CurTime() > self.RunAwayT then 
				self:VJ_TASK_COVER_FROM_ENEMY("TASK_RUN_PATH")
				self.RunAwayT = CurTime() +1
				self.DisableChasingEnemy = true
			end
		else
			self.DisableChasingEnemy = false
			self.IsTakingCover = false
			self.RunAwayT = CurTime() 
		end
	end
	self:ManageHUD(self.VJ_TheController)

	self:SetBodygroup(1,1)
	if CurTime() >= self.nextBacteria then
		self:PlayBacteria()
	end

	if self.VJ_IsBeingControlled then
		self.ConstantlyFaceEnemy = false
	else
		self.ConstantlyFaceEnemy = true
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
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
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,corpseEnt) 
	self:L4D2_DeathMessage(dmginfo:GetAttacker())
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo,hitgroup)
	local acid = ents.Create("obj_vj_l4d2_spit")
	acid:SetPos(self:GetPos() +Vector(0,0,13))
	acid:SetAngles(self:GetAngles())
	acid.AcidCount = 8
	acid.HasMusic = false
	acid:Activate()
	acid:Spawn()  
	acid:SetNoDraw(true)  
	acid.Dead = true
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
