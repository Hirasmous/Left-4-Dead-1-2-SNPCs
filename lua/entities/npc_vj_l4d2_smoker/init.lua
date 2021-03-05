AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/smoker.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_s_h")
ENT.HullType = HULL_HUMAN
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
ENT.VJC_Data = {
	CameraMode = 1, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(40, 10, -50), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "ValveBiped.Bip01_Head1", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(0, 0, 5), -- The offset for the controller when the camera is in first person
}
ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_Postures = "Moving" -- "Both" = Moving or standing | "Moving" = Only when moving | "Standing" = Only when standing
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasBloodPool = false -- Does it have a blood pool?
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.CustomBlood_Particle = {"blood_impact_smoker_01"} -- Particle that the SNPC spawns when it's damaged
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 65 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_s_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.AnimTbl_RangeAttack = {"vjseq_Tongue_Attack_Grab_Survivor"} -- Range Attack Animations
ENT.RangeAttackPos_Up = 47
ENT.RangeDistance = 780 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 250 -- How close does it have to be until it uses melee? -- This is how far away it can shoot
ENT.RangeUseAttachmentForPos = true -- Should the projectile spawn on a attachment?
ENT.RangeUseAttachmentForPosID = "smoker_mouth" -- The attachment used on the range attack if RangeUseAttachmentForPos is set to true
ENT.RangeAttackEntityToSpawn = "obj_vj_l4d2_tongue" -- The entity that is spawned when range attacking
ENT.TimeUntilRangeAttackProjectileRelease = 2 -- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = 13 -- How much time until it can use a range attack?
ENT.NextAnyAttackTime_Range = 1.8 -- How much time until it can use a attack again? | Counted in Seconds
ENT.RangeAttackAnimationDelay = 2 -- It will wait certain amount of time before playing the animation
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
ENT.FootStepTimeRun = 0.3 -- Next foot step sound when it is running
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
ENT.SoundTbl_FootStep = {}
ENT.SoundTbl_Idle = {"SmokerZombie.Breathe"}
ENT.SoundTbl_Alert = {"SmokerZombie.Recognize","SmokerZombie.Alert"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.mp3","vj_l4d2/pz/hit/claw_hit_flesh_2.mp3","vj_l4d2/pz/hit/claw_hit_flesh_3.mp3","vj_l4d2/pz/hit/claw_hit_flesh_4.mp3"}
ENT.SoundTbl_BeforeMeleeAttack = {"SmokerZombie.Attack"}
ENT.SoundTbl_RangeAttack= {"SmokerZombie.TongueAttack"}
ENT.SoundTbl_BeforeRangeAttack = {"SmokerZombie.Warn","SmokerZombie.Recognize"}
ENT.SoundTbl_Pain = {"SmokerZombie.Pain","SmokerZombie.PainShort"}
ENT.SoundTbl_Death = {"SmokerZombie.Death"}
ENT.SoundTbl_Explode = {"SmokerZombie.Explode"}

ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.BeforeMeleeAttackSoundChance = 2
ENT.AlertSoundLevel = 95
ENT.IdleSoundLevel = 95
ENT.DeathSoundLevel = 100
ENT.BeforeRangeAttackSoundLevel = 105
ENT.NextSoundTime_Idle1 = 1
ENT.NextSoundTime_Idle2 = 1
ENT.IdleSoundChance = 2
ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105
ENT.DeathSoundPitch1 = 100
ENT.DeathSoundPitch2 = 100
ENT.UseTheSameGeneralSoundPitch = false

-- Custom --
ENT.IsGhosted = false
ENT.BacteriaSound = nil
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/smokerbacteria.mp3","vj_l4d2/music/bacteria/smokerbacterias.mp3"}
ENT.nEntityIndex = -1 --this is for identifying timers unique to each smoker in the world
ENT.IncapacitationRange = 60 --how close can he be to incapacitate his enemies?
ENT.HasEnemyIncapacitated = false --is he in range of being incapacitated?
ENT.pIncapacitatedEnemy = nil --the enemy that is incapacitated 
ENT.pEnemyRagdoll = nil --the incapacitated enemy's ragdoll
ENT.pEnemyTongueAttach = nil --the incapacitated enemy's tongue attach
ENT.pTongueController = nil
ENT.IncapAnimation = "Tongue_Attack_Incap_Survivor_Idle"
ENT.vecLastPos = Vector(0, 0, 0)
ENT.tblEnemyWeapons = {}
ENT.tblEnemyAmmo = {}
ENT.TongueBreakDist = 1000
ENT.iStrangleDamage = 12
ENT.IsEnemyStuck = false
ENT.IsEnemyFloating = false
ENT.pEnemyCamera = nil
ENT.NextTongueSpawn = CurTime()
ENT.SoundTbl_Incapacitation_Tied = {"vj_l4d2/music/terror/tonguetied.mp3"}
ENT.SoundTbl_Incapacitation = {"vj_l4d2/music/special_attacks/asphyxiation.mp3"} 
ENT.BacteriaSound = nil
ENT.IncapSong = nil
ENT.IncapSong2 = nil
ENT.IsChokingEnemy = false 
ENT.Camera = nil
ENT.IsTakingCover = false
ENT.RunAwayT = CurTime()
ENT.GhostRunAwayT = CurTime()
ENT.CanSpawnWhileGhosted = false
ENT.HasSpawned = false
ENT.IsGhosted = false
ENT.FootStepType = "Common"

util.AddNetworkString("L4D2SmokerHUD")
util.AddNetworkString("L4D2SmokerHUDGhost")

util.AddNetworkString("Smoker_CreateTongue")
util.AddNetworkString("Smoker_DestroyTongue")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:L4D2_InitializeHooks()

	hook.Add("KeyPress", "smoker_Dismount", function(ply, key)
		if GetConVar("vj_l4d2_dismount"):GetInt() == 1 then
			if self.HasEnemyIncapacitated then
				if self.VJ_TheController == ply then
					if key == IN_JUMP then
						self.HasEnemyIncapacitated = false
						self:VJ_ACT_PLAYACTIVITY("Jump", true, 0, false)
						self:SetVelocity(self:GetUp() * 200 - self:GetForward() * 400)
						timer.Simple(2, function()
							if !IsValid(self) then return end
							self:DismountSmoker()
						end)
					end
				end
			end
		end
	end)

	self:SetHullType(self.HullType)
	self.nextBacteria = 0
	if GetConVarNumber("vj_l4d2_ghosted") == 0 then
		ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
		ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
		ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine")) 
		ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine"))
		ParticleEffectAttach("smoker_spore_trail",PATTACH_POINT_FOLLOW,self,0)
	end
	self:SetGhost(tobool(GetConVarNumber("vj_l4d2_ghosted")))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnUnGhost()
	VJ_CreateSound(self,self.SoundTbl_Alert,90,self:VJ_DecideSoundPitch(95,105))
	ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
	ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
	ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine")) 
	ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine"))
	ParticleEffectAttach("smoker_spore_trail",PATTACH_POINT_FOLLOW,self,0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "event_emit FootStep" then
		self:FootStepSoundCode()
	end
	if key == "event_incap_hit" then
		if self.IsEnemyStuck == true || self:GetSequence() == self:LookupSequence(self.IncapAnimation) then
			local incapent = self.pIncapacitatedEnemy
			if IsValid(incapent) then
				incapent:TakeDamage(5, self, incapent)
				VJ_CreateSound(incapent,VJ_PICKRANDOMTABLE{"player/pz/hit/zombie_slice_1.mp3","player/pz/hit/zombie_slice_2.mp3","player/pz/hit/zombie_slice_3.mp3","player/pz/hit/zombie_slice_4.mp3","player/pz/hit/zombie_slice_5.mp3","player/pz/hit/zombie_slice_6.mp3"},65,self:VJ_DecideSoundPitch(100,100))
			end
		end
	end
	if key == "event_incap_voice" then
		VJ_CreateSound(self,self.SoundTbl_BeforeMeleeAttack,75,self:VJ_DecideSoundPitch(100,100))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
	if self.HasEnemyIncapacitated == false then
		self:SetGhost(true)
	end
	function self.VJ_TheControllerEntity:CustomOnStopControlling()
		net.Start("L4D2SmokerHUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
		net.Start("L4D2SmokerHUDGhost")
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
			net.Start("L4D2SmokerHUDGhost")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2SmokerHUD")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		elseif self.IsGhosted == false then
			net.Start("L4D2SmokerHUD")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2SmokerHUDGhost")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Smoker_PlayIncapSong_Choke(bOverwrite,fadeout)
	if self.IncapSong2 && self.IncapSong2:IsPlaying() then return end
	for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
		if IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == self.pIncapacitatedEnemy then
			if v ~= self && v.IncapSong2 && v.IncapSong2:IsPlaying() then
				if bOverwrite == true then
					v.IncapSong2:Stop()
				else
					return
				end
			end
		end
	end
	local sndIncap = table.Random(self.SoundTbl_Incapacitation_Tied)
	local filter = RecipientFilter()
	filter:AddPlayer(self.pIncapacitatedEnemy)
	local sound = CreateSound(self, sndIncap, filter)
	self.IncapSong2 = sound
	sound:SetSoundLevel(0)
	sound:Play()
	timer.Simple(22, function()
		if self.IncapSong2 == nil then return end
		self.IncapSong2:Stop()
		self.IncapSong2 = nil
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SmokerIncapacitate(ent)
	if self.HasEnemyIncapacitated == true then
		if self.pIncapacitatedEnemy ~= ent then return end
		self:StripEnemyWeapons(ent)
		if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= ent then
			ent:SetObserverMode(OBS_MODE_CHASE)
			ent:SpectateEntity(self.Camera)
			ent:DrawViewModel(false)
			ent:DrawWorldModel(false)
			ent:SetFOV(85)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DismountSmoker()
	if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy:Health() > 0 then
		util.ParticleTracerEx("smoker_tongue_new_fall", self:GetPos(), self.pIncapacitatedEnemy:GetPos(), false, self:EntIndex(), 3)
	else
		VJ_CreateSound(self, "player/smoker/miss/smoker_reeltonguein_05.mp3", 75, self:VJ_DecideSoundPitch(100,95))
	end
	net.Start("Smoker_DestroyTongue")
		net.WriteString(tostring(self:EntIndex()))
	net.Broadcast()
	self.HasRangeAttack = true
	if string.find(self:GetClass(), "l4d_") then
		self:SetBodygroup(1, 0)
	else
		self:SetBodygroup(2, 0)
	end
	self.HasEnemyIncapacitated = false
	self.IsChokingEnemy = false
	if self.IncapSong then
		self.IncapSong:Stop()
		self.IncapSong = nil
	end
	if self.IncapSong2 then
		self.IncapSong2:Stop()
		self.IncapSong2 = nil
	end
	if self.VJ_IsBeingControlled then
		self.AnimTbl_IdleStand = {ACT_IDLE}
	end
	self.IsEnemyStuck = false
	if IsValid(self.pEnemyObj) then
		self.pEnemyObj:Remove()
		self.pEnemyObj = nil
	end
	if IsValid(self.pTongueController) then
		self.pTongueController:Remove()
		self.pTongueController = nil
	end
	self.MovementType = VJ_MOVETYPE_GROUND
	self:SetParent(nil)
	if !IsValid(self.pIncapacitatedEnemy) then return end
	local enemy = self.pIncapacitatedEnemy
	if enemy.IsVJBaseSNPC == true then
		if self.EnemyVJMoveType ~= nil then
			enemy.MovementType = self.EnemyVJMoveType
		end
	end
	enemy:SetMoveType(self.EnemyMoveType)
	if enemy:GetNoDraw() == true then
		enemy:SetNoDraw(false)
	end
	if enemy:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
		enemy:RemoveEFlags(EFL_NO_THINK_FUNCTION)
	end
	if enemy:IsNPC() && GetConVar("vj_l4d2_npcs_dropweapons"):GetInt() == 0 then
		if IsValid(enemy:GetActiveWeapon()) then
			enemy:GetActiveWeapon():SetNoDraw(false)
		end
	end
	if enemy:IsPlayer() then
		self:Incap_Lighting(enemy, true)
		enemy:SetParent(nil)
		--if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= enemy then
			enemy:SetObserverMode(0)
			enemy:DrawViewModel(true)
			enemy:DrawWorldModel(true)
		--end
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
function ENT:CustomOnRangeAttack_BeforeStartTimer(seed) 
	if self:IsShoved() then return end
	if self.VJ_IsBeingControlled == false then
		self:VJ_ACT_PLAYACTIVITY("vjseq_Tongue_Attack_Antic",false,VJ_GetSequenceDuration(self,"vjseq_Tongue_Attack_Antic"),false)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode_AfterProjectileSpawn(projectile)
	if self:IsShoved() then return end
	self:SetNW2Int("TongueT",CurTime() +self.NextRangeAttackTime)
	timer.Simple(0.5,function() if IsValid(self) then VJ_EmitSound(self,VJ_PICKRANDOMTABLE({"player/smoker/miss/smoker_reeltonguein_01.mp3","player/smoker/miss/smoker_reeltonguein_02.mp3","player/smoker/miss/smoker_reeltonguein_03.mp3","player/smoker/miss/smoker_reeltonguein_04.mp3","player/smoker/miss/smoker_reeltonguein_05.mp3"}),self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,100)) end end)
	timer.Simple(1,function() 
		if IsValid(self) && !IsValid(self.pIncapacitatedEnemy) then 
		   if self:GetClass() == "npc_vj_l4d2_smoker" then
				self:SetBodygroup(2,0) 
			end
		elseif IsValid(self) && !IsValid(self.pIncapacitatedEnemy) then 
			if self:GetClass() == "npc_vj_l4d_smoker" then
				self:SetBodygroup(1,0) 
			end
		end
	end) 
	if self:GetClass() == "npc_vj_l4d2_smoker" then
		self:SetBodygroup(2,1)  
	elseif self:GetClass() == "npc_vj_l4d_smoker" then
		self:SetBodygroup(1,1)  
	end
	projectile:SetGravity(0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)
	return (self:GetEnemy():GetPos() +self:GetEnemy():OBBCenter() -(self:GetAttachment(self:LookupAttachment(self.RangeUseAttachmentForPosID)).Pos)) *1000 +self:GetForward()* 1000
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	local randattack = math.random(1,2)
	if randattack == 1 then
		self.AnimTbl_MeleeAttack = {"vjges_Melee_02","vjges_Melee_03"}
		self.TimeUntilMeleeAttackDamage = 0.4
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_s_d")
	elseif randattack == 2 then
		self.AnimTbl_MeleeAttack = {"vjges_Melee_02","vjges_Melee_03"}
		self.TimeUntilMeleeAttackDamage = 0.4
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_s_d")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSchedule()
	local ent = self.pIncapacitatedEnemy
	if IsValid(ent) then
		if ent:Health() <= 0 then return end
		local dist = self:GetPos():Distance(ent:GetPos())
		if dist <= self.IncapacitationRange then
			self:VJ_PlaySequence(self.IncapAnimation)
			self.IsChokingEnemy = true 
		else
			self:VJ_PlaySequence("Tongue_Attack_Drag_Survivor_Idle")
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	self:GetGroundType(self:GetPos())
	self:IgnoreIncappedEnemies()
	self.vecLastPos = self:GetPos()
	if self.IsGhosted then
		self:Ghost()
	end
	if self.IsGhosted then
		self.HasRangeAttack = false
		self:StopParticles()
	else
		self.HasRangeAttack = true
	end

	local function FaceTarget(ent, tgt, bBack)
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
		if bBack == true then
			deg = deg + 180
		end
		if ent:IsPlayer() then
			ent:SetEyeAngles(Angle(ang.x, deg, ang.z))
		else
			ent:SetAngles(Angle(ang.x, deg, ang.z))
		end
	end

	local function SetPitch(ent, poseName, tgtPos)
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
		--tgt = tgt or self
		local tpos = tgtPos
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
			ent:SetPoseParameter(poseName, math.Remap(degX, 0, 90, 0, 1))
		elseif quad == tpos:Distance(quadrants[3]) || quad == tpos:Distance(quadrants[4]) then
			degY = math.Round(degY)
			if tpos.z < spos.z then
				degY = -degY
			end
			ent:SetPoseParameter(poseName, math.Remap(degY, 0, 90, 0, 1))
		end
	end
	
	--Run away from enemy if can't range attack
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
		end
	end

	--Incapacitating check
	if self:GetSequence() == self:LookupSequence(self.IncapAnimation) || self:GetSequence() == self:LookupSequence("Tongue_Attack_Drag_Survivor_Idle") then
		self.IsIncapacitating = true
	else
		self.IsIncapacitating = false
	end

	if self.IsIncapacitating == true && self.HasEnemyIncapacitated == false then
		self:VJ_ACT_PLAYACTIVITY("Jump", true)   
	end

	if self.HasEnemyIncapacitated == true then 
		self.HasIdleSounds = false
		self.HasMeleeAttack = false
		self.HasRangeAttack = false
		if self.IncapSong == nil or self.IncapSong:IsPlaying() == false then
			self:Smoker_PlayIncapSong_Choke()
		end
		if IsValid(self.pIncapacitatedEnemy) then
			local enemy = self.pIncapacitatedEnemy

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

			if IsValid(self.pTongueController) then
				local tCtrl = self.pTongueController
				tCtrl:SetPos(self:GetAttachment(3).Pos)
				FacePos(tCtrl, tCtrl:GetPos(), enemy:GetPos())
				FaceTarget(tCtrl, enemy)
			end

			--Create collision entities for tongue
			if CurTime() >= self.nextSegmentCreation then
				if IsValid(self.pEnemyTongueAttach) then
					local bonePos = enemy:GetPos()
					local flDistance = self:GetAttachment(3).Pos:Distance(bonePos)
					local instances = 0
					local pos = self:GetAttachment(3).Pos
					local ang = self:GetAngles()
					local dSeg = 15
					if flDistance >= dSeg then
						math.Round(flDistance, 1)
						instances = flDistance / dSeg
					end
					local iteration = dSeg
					local lastSeg = self.pTongueController
					if instances > 0 then
						for i = 1, instances do
							if !IsValid(self) then return end
							local seg = ents.Create("obj_vj_l4d2_tongue_collision")
							seg:SetAngles(lastSeg:GetAngles())
							FacePos(seg, seg:GetPos(), bonePos)
							seg:SetPos(pos + self.pTongueController:GetForward() * iteration)
							seg:Spawn()
							seg:SetOwner(self)
							timer.Simple(0.1, function()
								if !IsValid(seg) then return end
								seg:Remove()
							end)
							lastSeg = seg
							iteration = iteration + dSeg
						end
					end
				end
				self.nextSegmentCreation = CurTime() + 0.1
			end

			if enemy:Health() <= 0 then self:DismountSmoker() return end
			if self.HasEnemyIncapacitated == false then return end

			local ene = self.pIncapacitatedEnemy

			--check enemy type		   
			if enemy:IsPlayer() then
				enemy = self.pEnemyObj
				ene:SetLocalPos(enemy:GetPos() + enemy:GetForward() * 20)
			else
				if IsValid(self.pEnemyObj) then
					self.pEnemyObj:Remove()
				end
			end

			local dist = self:GetPos():Distance(ene:GetPos())  

			local posZ = Vector(self:GetPos().x, self:GetPos().y, enemy:GetPos().z)
			--make enemy face same direction
			if enemy:GetPos():Distance(posZ) > 50 then
				FaceTarget(enemy, self, true)
			end

			--call if enemy is stuck
			local function FreezeEnemy()
				if ene:IsPlayer() then
					enemy:GetPhysicsObject():Sleep()
					enemy:GetPhysicsObject():EnableMotion(false)
				end
				enemy:SetPos(enemy:GetPos())
				enemy:SetLocalVelocity(Vector(0, 0, 0))
				self.IsEnemyStuck = true
				self.nextDamageTime = CurTime()
			end

			local function ResetEnemyEFlags()
				if not ene:IsPlayer() then
					enemy:RemoveEFlags(EFL_NO_THINK_FUNCTION)
					timer.Simple(0.2, function()
						if !IsValid(enemy) then return end
						if ene ~= enemy then return end
						enemy:StopMoving()
						enemy:AddEFlags(EFL_NO_THINK_FUNCTION)
					end)
					self.lastEFlagsReset = CurTime() + 2
				end
			end

			--check if path to us is blocked
			local tr1 = util.TraceLine({start = enemy:GetPos(), endpos = enemy:GetPos() - enemy:GetForward() * 20, filter = {self, enemy, ene, self.pEnemyRagdoll}})
			--check if enemy is on ground
			local tr2 = util.TraceLine({start = enemy:GetPos(), endpos = enemy:GetPos() - enemy:GetUp() * 20, filter = {self, enemy, ene, self.pEnemyRagdoll}})
			--check if enemy is 
			local tr3 = util.TraceLine({start = enemy:GetPos(), endpos = enemy:GetPos() - enemy:GetUp() * 10 - enemy:GetForward() * 10, filter = {self, enemy, ene, self.pEnemyRagdoll}})
			--check if enemy is hitting ceiling
			local tr4 = util.TraceLine({start = enemy:GetPos(), endpos = enemy:GetPos() + enemy:GetUp() * 65, filter = {self, enemy, ene, self.pEnemyRagdoll}})

			if tr1.Hit == true then
				self.lastTr1Hit = CurTime()
			else
				self.lastTr1Hit = -1
			end

			local function CheckPath()
				if enemy:GetPos().z > self:GetPos().z + 10 then
					if tr2.Hit == true then
						--on ledge?
						self.IsEnemyFloating = false
						enemy:SetMoveType(MOVETYPE_FLY)
						if tr1.Hit == false then
							enemy:SetLocalVelocity(-enemy:GetForward() * 100 - enemy:GetUp() * 25)
						else
							enemy:SetLocalVelocity(-enemy:GetForward() * 100 + enemy:GetUp() * 25)
						end
					else
						--floating
						self.IsEnemyFloating = true
						enemy:SetMoveType(MOVETYPE_FLY)
						if tr3.Hit == false then
							enemy:SetLocalVelocity(-enemy:GetForward() * 50 - enemy:GetUp() * 100)
						else
							enemy:SetLocalVelocity(-enemy:GetForward() * 100 + enemy:GetUp() * 25)
						end
					end
				else
					enemy:SetMoveType(MOVETYPE_FLY)
					if tr2.Hit == true then
						self.IsEnemyFloating = false
					else
						self.IsEnemyFloating = true
					end
					if tr1.Hit == true then
						enemy:SetLocalVelocity(-enemy:GetForward() * 100 + enemy:GetUp() * 75)
					else
						if tr3.Hit == false then
						   	if enemy:GetPos():Distance(posZ) <= 150 then
						   		enemy:SetLocalVelocity(-enemy:GetForward() * 100 + enemy:GetUp() * 50)
						   	else
								enemy:SetLocalVelocity(-enemy:GetForward() * 100 - enemy:GetUp() * 25)
							end
						else
							enemy:SetLocalVelocity(-enemy:GetForward() * 100 + enemy:GetUp() * 25)
						end
					end
				end
			end

			if self.IsChokingEnemy == false || self.IsEnemyStuck == false then
				if self.IsEnemyFloating == true then
					self.pEnemyRagdoll:ResetSequence(self.pEnemyRagdoll:LookupSequence("Idle_Incap_Hanging_SmokerChoke_Germany"))
				else
					self.pEnemyRagdoll:ResetSequence(self.pEnemyRagdoll:LookupSequence("Idle_Tongued_Dragging_Ground"))
				end
			else
				if self.pEnemyRagdoll:GetPoseParameter("tongue_angle") >= 0.8 then
					self.pEnemyRagdoll:SetPoseParameter("tongue_angle", 1)
				end
			end

			--tracks terrestrial status
			if self.IsEnemyFloating == true then
				self.lastEnemyFloat = CurTime()
			else
				self.lastEnemyGround = CurTime()
			end

			--reset if t status changes
			local timeDiff = math.abs(self.lastEnemyFloat - self.lastEnemyGround)
			if timeDiff > 0.45 && timeDiff < 0.55 then
				ResetEnemyEFlags()
			end

			local tngTr = util.TraceLine({start = self:GetPos() + self:OBBMaxs() + self:GetForward() * 10, endpos = enemy:GetPos() + ene:OBBCenter(), filter = {self, enemy, ene, self.pEnemyRagdoll}})
			if tngTr.Hit == true then
				timer.Simple(0.5, function()
					if !IsValid(self) || !IsValid(enemy) then return end
					if self.IsEnemyStuck == false then
						FreezeEnemy()
					end
				end)
			end

			if self.IsEnemyStuck == false then
				--check if enemy is stuck
				if CurTime() >= self.nextEnemyPosCheck then
					if self.vecEnemyPos:Distance(enemy:GetPos()) < 10 then
						FreezeEnemy()
					end
					self.vecEnemyPos = enemy:GetPos()
					self.nextEnemyPosCheck = CurTime() + 2
				end
				--if enemy is too far to be clawed
				if dist > self.IncapacitationRange then
					CheckPath()
					if enemy:IsPlayer() then
						enemy:GetPhysicsObject():EnableMotion(true)
					end
				else
					self:VJ_ACT_PLAYACTIVITY("vjseq_"..self.IncapAnimation)
					FreezeEnemy()
				end
			else
				enemy:SetLocalVelocity(Vector(0, 0, 0))
			end

			--Set enemy pose param to 1 if it's stuck
			if self.IsChokingEnemy || self.IsEnemyStuck then
				if self.pEnemyRagdoll:GetPoseParameter("tongue_angle") > 0.8 then
					self.pEnemyRagdoll:SetPoseParameter("tongue_angle", 1)
				end
			else
				--If dragging, set enemy pose params accordingly 
				SetPitch(self.pEnemyTongueAttach, "tongue_angle", self:GetAttachment(3).Pos)
				SetPitch(self.pEnemyRagdoll, "tongue_angle", self:GetAttachment(3).Pos)
			end

			--add anim support for player control	
			if self.VJ_IsBeingControlled then
				if dist <= self.IncapacitationRange then
					self.CombatFaceEnemy = true
					FreezeEnemy()
					self.AnimTbl_IdleStand = {self:GetSequenceActivity(self:LookupSequence(self.IncapAnimation))}
				else
					self.CombatFaceEnemy = false
					self:SetAngles(self.incapAngles)
					self.AnimTbl_IdleStand = {self:GetSequenceActivity(self:LookupSequence("Tongue_Attack_Drag_Survivor_Idle"))}
				end
			end 

			if self:GetSequence() == self:LookupSequence("Tongue_Attack_Drag_Survivor_Idle") then
				if dist <= self.IncapacitationRange && self.IsChokingEnemy == false then
					self.IsChokingEnemy = true
					if not self.IsEnemyFloating then
						self.pEnemyRagdoll:ResetSequence(self.pEnemyRagdoll:LookupSequence("Idle_Tongued_Choking_Ground"))
						self.pEnemyTongueAttach:ResetSequence(self.pEnemyTongueAttach:LookupSequence("NamVet_Idle_Ground_Smokerchoke"))
					else
						self.pEnemyRagdoll:ResetSequence(self.pEnemyRagdoll:LookupSequence("Idle_Incap_Hanging_SmokerChoke_Germany"))
						self.pEnemyTongueAttach:ResetSequence(self.pEnemyTongueAttach:LookupSequence("NamVet_Idle_Hanging_Waist_SmokerChoke"))
						self:Incap_Lighting(ene,false,self.pEnemyRagdoll)
						for k, v in ipairs(ents.FindByClass("player")) do
							if enemy:IsNPC() then
								VJ_CreateSound(v,"vj_l4d2/music/tags/asphyxiationhit.mp3",95,self:VJ_DecideSoundPitch(100,100))
							end
						end
					end
					for k, v in ipairs(ents.FindByClass("player")) do
						if enemy:IsNPC() then
							VJ_CreateSound(v,"vj_l4d2/music/tags/asphyxiationhit.mp3",95,self:VJ_DecideSoundPitch(100,100))
						end
					end
					if ene:IsPlayer() then
						self:Incap_Lighting(ene, false)
						ene:SpectateEntity(self.Camera)
						ene:SetFOV(80)
					end
				end
				if self.IsEnemyStuck then
					if self.IncapSong2 then
						self.IncapSong2:Stop()
					end
					self:PlayIncapSong()
					for k, v in ipairs(ents.FindByClass("player")) do
						if enemy:IsNPC() then
							VJ_CreateSound(v,"vj_l4d2/music/tags/asphyxiationhit.mp3",95,self:VJ_DecideSoundPitch(100,100))
						end
					end
				end
			elseif self:GetSequence() == self:LookupSequence(self.IncapAnimation) then
				if self.IncapSong2 then
					self.IncapSong2:Stop()
				end
				self:PlayIncapSong()
				if dist > self.IncapacitationRange then
					self:VJ_ACT_PLAYACTIVITY("Tongue_Attack_Drag_Survivor_Idle", true)   
				end
			end
		else
			self:DismountSmoker()
		end
	else
		--fail-safe
		if self.IsIncapacitating == true then
			self:DismountSmoker()
			self:SetPos(self:GetPos())
		end
		if self.IncapSound ~= nil then
			self.IncapSound:Stop()
		end
		if !self.IsGhosted then
			self.HasIdleSounds = true
			self.HasMeleeAttack = true
			self.HasRangeAttack = true
			self.CombatFaceEnemy = true
		end
	end

	--Sounds
	if CurTime() >= self.nextBacteria then
		self:PlayBacteria()
	end

	if self.VJ_IsBeingControlled then
		self.ConstantlyFaceEnemy = false
	else
		self.ConstantlyFaceEnemy = true
	end

	self:ManageHUD(self.VJ_TheController)

	if self.VJ_IsBeingControlled == false then
		self.TimeUntilRangeAttackProjectileRelease = 2
		self.RangeAttackAnimationDelay = 2
		self.HasBeforeRangeAttackSound = true
	elseif self.VJ_IsBeingControlled == true then
		self.TimeUntilRangeAttackProjectileRelease = 0
		self.RangeAttackAnimationDelay = 0
		self.HasBeforeRangeAttackSound = false
	end
end 
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if self.pIncapacitatedEnemy && dmginfo:GetAttacker() == self.pIncapacitatedEnemy then return end
	if self:IsShoved() then return end
	if dmginfo:GetDamageType() == DMG_CLUB || dmginfo:GetDamageType() == DMG_GENERIC then
		self.NextRangeAttackTime = 1
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
			self:DismountSmoker()
		end
		timer.Simple(VJ_GetSequenceDuration(self,GetDirection()),function()
			if IsValid(self) then
				self.NextRangeAttackTime = 13
			end
		end)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo,hitgroup)
	self:StopParticles()
	self:SetBodygroup(2,1)
	self:SetBodygroup(1,1)
	VJ_CreateSound(self,self.SoundTbl_Explode,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,95))
	self:VJ_ACT_PLAYACTIVITY(ACT_DIERAGDOLL,true,false,false) 
	local smoke = ents.Create("obj_vj_l4d2_cloudsmoke")
	smoke:SetPos(self:GetPos())
	smoke:Spawn()
	smoke:SetOwner(self)
	timer.Simple(10, function()
		if IsValid(smoke) then
			smoke:Remove()   
		end							
	end) 
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo, hitgroup, corpseEnt)
	corpseEnt:GetPhysicsObject():SetVelocity(corpseEnt:GetPhysicsObject():GetVelocity() +self:GetUp() *15000 +VectorRand() *15000)
	self:L4D2_DeathMessage(dmginfo:GetAttacker())
	self:DismountSmoker()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	self:DismountSmoker()
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
