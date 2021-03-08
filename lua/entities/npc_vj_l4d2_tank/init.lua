AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_t_h")
ENT.HullType = HULL_HUMAN
ENT.HasWorldShakeOnMove = true -- Should the world shake when it's moving?
ENT.NextWorldShakeOnRun = 0.24 -- How much time until the world shakes while it's running
ENT.NextWorldShakeOnWalk = 0.4 -- How much time until the world shakes while it's walking
ENT.HasPoseParameterLooking = true -- Does it look at its enemy using poseparameters?
ENT.PoseParameterLooking_InvertPitch = false -- Inverts the pitch poseparameters (X)
ENT.PoseParameterLooking_InvertYaw = false -- Inverts the yaw poseparameters (Y)
ENT.PoseParameterLooking_InvertRoll = false -- Inverts the roll poseparameters (Z)
ENT.PoseParameterLooking_TurningSpeed = 10 -- How fast does the parameter turn?
ENT.DeathCorpseAlwaysCollide = false -- Should the corpse always collide?
ENT.PoseParameterLooking_Names = {pitch={"body_pitch"},yaw={"body_yaw"},roll={}} -- Custom pose parameters to use, can put as many as needed
ENT.CallForHelp = false -- Does the SNPC call for help?
ENT.VJC_Data = {
	CameraMode = 1, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(40, 10, -50), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "ValveBiped.Bip01_Head", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(5, 0, 5), -- The offset for the controller when the camera is in first person
}
ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_Postures = "Moving" -- "Both" = Moving or standing | "Moving" = Only when moving | "Standing" = Only when standing
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.CustomBlood_Pool = {"blood_bleedout"}-- Blood pool types after it dies
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 80 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_t_d")
ENT.MeleeAttackDamageType = DMG_CRUSH -- Type of Damage
ENT.HasMeleeAttackKnockBack = true -- If true, it will cause a knockback to its enemy
ENT.MeleeAttackKnockBack_Forward1 = 450 -- How far it will push you forward | First in math.random
ENT.MeleeAttackKnockBack_Forward2 = 550 -- How far it will push you forward | Second in math.random
ENT.MeleeAttackKnockBack_Up1 = 240 -- How far it will push you up | First in math.random
ENT.MeleeAttackKnockBack_Up2 = 260 -- How far it will push you up | Second in math.random
ENT.MeleeAttackKnockBack_Right1 = 0 -- How far it will push you right | First in math.random
ENT.MeleeAttackKnockBack_Right2 = 0 -- How far it will push you right | Second in math.random
ENT.MeleeAttackAnimationAllowOtherTasks = true
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.RangeUseAttachmentForPos = true -- Should the projectile spawn on a attachment?
ENT.RangeUseAttachmentForPosID = "debris" -- The attachment used on the range attack if RangeUseAttachmentForPos is set to true
ENT.RangeAttackEntityToSpawn = "obj_vj_l4d2_debris" -- The entity that is spawned when range attacking
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.DisableDefaultRangeAttackCode = true -- When true, it won't spawn the range attack entity, allowing you to make your own
ENT.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.DisableFootStepSoundTimer = false -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
ENT.FootStepTimeRun = 0.2 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.5 -- Next foot step sound when it is walking
ENT.TimeUntilRangeAttackProjectileRelease = 2.5 -- How much time until the projectile code is ran?
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.DeathAnimationChance = 1
ENT.AnimTbl_Death = {"death"} 
-- ====== Animation Variables ====== --
ENT.AnimTbl_RangeAttack = {"throw_02","throw_03","throw_04"} -- Range Attack Animations
-- ====== Distance Variables ====== --
ENT.RangeAttackPos_Up = 47
ENT.RangeDistance = 900 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 175 -- How close does it have to be until it uses melee?
ENT.NextRangeAttackTime = 6 -- How much time until it can use a range attack?
ENT.NextMeleeAttackTime = 1 -- How much time until it can use a melee attack?
ENT.FallingHeight = 32
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 0 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 12 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = false -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Alert = {"HulkZombie.Yell"}
ENT.SoundTbl_FootStep = {
	"Tank.Default.RunRight",
	"Tank.Default.RunLeft",
}
ENT.SoundTbl_Idle = {"HulkZombie.Voice","HulkZombie.Breathe","HulkZombie.Growl"}
ENT.SoundTbl_CombatIdle = {"HulkZombie.Yell","HulkZombie.Voice","HulkZombie.Breathe","HulkZombie.Growl"}
ENT.SoundTbl_MeleeAttack = {"HulkZombie.Punch"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_BeforeMeleeAttack = {"HulkZombie.Attack"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/miss/claw_miss_1.mp3","vj_l4d2/miss/claw_miss_2.mp3"}
ENT.SoundTbl_Pain = {"HulkZombie.Pain"}
ENT.SoundTbl_BeforeRangeAttack = {"HulkZombie.Throw.Pickup"}
ENT.SoundTbl_RangeAttack = {"HulkZombie.Throw"}
ENT.SoundTbl_Death = {"HulkZombie.Die"}
ENT.SoundTbl_HulkPainFire = {"HulkZombie.PainFire"}
ENT.SoundTbl_HulkClimb = {"HulkZombie.StartLedgeClimb"}
ENT.SoundTbl_HulkThrowFail = {"HulkZombie.Throw.Fail"} 

ENT.AlertSoundChance = 4
ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.AlertSoundLevel = 100
ENT.IdleSoundLevel = 85
ENT.DeathSoundLevel = 85
ENT.BeforeRangeAttackSoundLevel = 100
ENT.RangeAttackSoundLevel = 90
ENT.FootStepSoundPitch1 = 100
ENT.FootStepSoundPitch2 = 100
ENT.GeneralSoundPitch1 = 92
ENT.GeneralSoundPitch2 = 100
ENT.UseTheSameGeneralSoundPitch = false

-- Custom --
ENT.Climbing = false
ENT.NextClimb = 0
ENT.AllowClimbing = true
ENT.DebrisType = "Rock"
ENT.SoundTracks = nil
ENT.SoundTrack = {"vj_l4d2/music/tank/taank.mp3","vj_l4d2/music/tank/tank.mp3"}
ENT.TankSongDuration = 0
ENT.TankSong = nil
ENT.Debris = nil

util.AddNetworkString("L4D2TankHUD")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPreInitialize()
	self:Tank_Initialize()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:L4D2_InitializeHooks()
	self:SetHullType(self.HullType)
	if GetConVarNumber("vj_l4d2_tanktype") == 3 then
		self:SetBodygroup(0,1)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Tank_Initialize()
	if GetConVarNumber("vj_l4d2_musictype") == 1 then 
		self.SoundTrack = {"vj_l4d2/music/tank/taank.mp3","vj_l4d2/music/tank/tank.mp3"}
		self.TankSongDuration = 52
	elseif GetConVarNumber("vj_l4d2_musictype") == 2 then 
		self.SoundTrack = {"vj_l4d2/music/tank/onebadtank.mp3"}
		self.TankSongDuration = 52
	elseif GetConVarNumber("vj_l4d2_musictype") == 3 then 
		self.SoundTrack = {"vj_l4d2/music/tank/midnighttank.mp3"}
		self.TankSongDuration = 74
	end

	if self:GetClass() == "npc_vj_l4d2_tank" then
		if GetConVarNumber("vj_l4d2_tanktype") == 1 then 
			self.Model = {"models/vj_l4d2/hulk.mdl"}
		elseif GetConVarNumber("vj_l4d2_tanktype") == 2 then 
			self.Model = {"models/vj_l4d2/hulk_sacrifice.mdl"}
		end
	end

	if self:GetClass() == "npc_vj_l4d_tank" then
		if GetConVarNumber("vj_l4d2_tanktype") == 1 then 
			self.Model = {"models/vj_l4d/hulk.mdl"}
		elseif GetConVarNumber("vj_l4d2_tanktype") == 2 then 
			self.Model = {"models/vj_l4d2/hulk_sacrifice.mdl"}
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CheckRangeAttack(pos)
	 local tr = util.TraceLine({
		start = pos,
		endpos = pos -Vector(0,0,40),
		filter = self,
		mask = MASK_NPCWORLDSTATIC
	})
	local mat = tr.MatType
	if tr.HitWorld then
		if self.HasRangeAttack then
			if mat == MAT_GRASS or mat == MAT_DIRT or mat == MAT_SNOW or mat == MAT_SAND then
				self.DebrisType = "Log"
				self.HasRangeAttack = true
			elseif mat == MAT_CONCRETE then
				self.DebrisType = "Rock"
				self.HasRangeAttack = true
			else 
				self.DebrisType = "Rock"
				self.HasRangeAttack = false
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "event_emit FootStep" then
		self:FootStepSoundCode()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
	ply:EmitSound("ui/menu_horror01.mp3")
	ply:EmitSound("ui/pickup_guitarriff10.mp3")
	net.Start("L4D2TankHUD")
		net.WriteBool(false)
		net.WriteEntity(self)
		net.WriteEntity(ply)
	net.Send(ply)
	function self.VJ_TheControllerEntity:CustomOnStopControlling()
		net.Start("L4D2TankHUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
	end
end  
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_OverrideProjectilePos(TheProjectile)
	TheProjectile:SetPos(self:GetAttachment(self:LookupAttachment("debris")).Pos) 
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RemoveDebris() 
	if IsValid(self.Debris) then
		self.Debris:Remove()
	end
	if IsValid(self.Log) then
		self.Log:Remove()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode()
	local ent = ents.Create(self.RangeAttackEntityToSpawn)
	ent:SetPos(self:GetAttachment(self:LookupAttachment("debris")).Pos)
	-- ent:SetAngles(self:GetAttachment(self:LookupAttachment("debris")).Ang)
	ent:SetOwner(self)
	ent:Spawn()
	ent:Activate()
	local phys = ent:GetPhysicsObject()
	if IsValid(phys) then
		phys:SetVelocity(self:RangeAttackCode_GetShootPos() *0.7 +self:GetUp()*175) 
	end
	local randattackr = math.random(1,3)
	if randattackr == 1 then							  
		self.AnimTbl_RangeAttack = {"throw_02"}
		self.TimeUntilRangeAttackProjectileRelease = 2.5	 
		self:RemoveDebris()	  
	elseif randattackr == 3 then							  
		self.AnimTbl_RangeAttack = {"throw_03"}
		self.TimeUntilRangeAttackProjectileRelease = 1.97  
		self:RemoveDebris() 
	elseif randattackr == 2 then							  
		self.AnimTbl_RangeAttack = {"throw_04"} 
		self.TimeUntilRangeAttackProjectileRelease = 2.8
		self:RemoveDebris() 
	elseif randattackr == 1 then							  
		self.AnimTbl_RangeAttack = {"throw_01"} 
		self.TimeUntilRangeAttackProjectileRelease = 1	
		self:RemoveDebris()	
		timer.Simple(1,function()
			if IsValid(self) then
				self:RemoveDebris()
			end
		end) 
	end
end   
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRangeAttack_AfterStartTimer() 
	self:SetNW2Float("RockT",CurTime() +self.NextRangeAttackTime)
	timer.Simple(0.7,function()
		if IsValid(self) then
			if IsValid(self.Debris) then self.Debris:Remove() end
			ParticleEffectAttach("tank_rock_throw_ground_generic_cracks_2",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("forward")) 
			if self.DebrisType == "Rock" then
				self.Debris = ents.Create("prop_vj_animatable")
				self.Debris:SetPos(self:GetPos())
				self.Debris:SetModel("models/vj_l4d2/concrete_chunk01a.mdl")
				self.Debris:SetOwner(self)
				self.Debris:SetParent(self)
				self.Debris:Spawn()
				self.Debris:Activate()
				self.Debris:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)	
				self.Debris:SetSolid(SOLID_NONE)
				self.Debris:AddEffects(EF_BONEMERGE) 
				self.RangeAttackEntityToSpawn = "obj_vj_l4d2_debris"
			elseif self.DebrisType == "Log" then
				self.Debris = ents.Create("prop_vj_animatable")
				self.Debris:SetPos(self:GetPos())
				self.Debris:SetModel("models/vj_l4d2/tree_trunk.mdl")
				self.Debris:SetOwner(self)
				self.Debris:SetParent(self)
				self.Debris:Spawn()
				self.Debris:Activate()
				self.Debris:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)	
				self.Debris:SetSolid(SOLID_NONE)
				self.Debris:AddEffects(EF_BONEMERGE)
				self.Debris:SetModelScale(1.2)
				self.RangeAttackEntityToSpawn = "obj_vj_l4d2_log"
			end
		end
	end)		
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "event_land" then
		VJ_CreateSound(self,"player/tank/fall/tank_death_bodyfall_01.mp3",85,self:VJ_DecideSoundPitch(100,100))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	local randattack = math.random(1,5)
	if randattack == 1 then
		self.AnimTbl_MeleeAttack = {"vjges_Hulk_RunAttack1_layer","vjges_Hulk_RunAttack2_layer","vjges_Attack_Moving"}
		self.TimeUntilMeleeAttackDamage = 0.6
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_t_d")
	elseif randattack == 2 then
		self.AnimTbl_MeleeAttack = {"vjges_Hulk_RunAttack1_layer","vjges_Hulk_RunAttack2_layer","vjges_Attack_Moving"}
		self.TimeUntilMeleeAttackDamage = 0.6
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_t_d")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_AfterChecks(hitEnt)
	if self.VJ_IsBeingControlled == false then
		if hitEnt:IsPlayer() or hitEnt:IsNPC() then
			if math.random(1,2) == 1 then
				self:VJ_ACT_PLAYACTIVITY(ACT_IDLE_ANGRY,true,1.74,true)
				VJ_CreateSound(self,self.SoundTbl_Alert,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,92))
			end
		end
	end
	--[[if hitEnt:IsPlayer() then
		hitEnt:Freeze(true)
		hitEnt:DrawViewModel(false)
		timer.Simple(1,function()
			if !IsValid(self) then hitEnt:Freeze(false) hitEnt:DrawViewModel(true) end
			if IsValid(self) then
				hitEnt:Freeze(false)
				hitEnt:DrawViewModel(true)
			end
		end)
	end]]
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlayTankSong(bOverwrite)
	if GetConVar("vj_l4d2_music"):GetInt() ~= 1 then return end
	if self.TankSong && self.TankSong:IsPlaying() then return end
	for k, v in ipairs(ents.FindByClass("npc_vj_l4d*")) do
		if string.find(v:GetClass(), "tank") then 
			if v ~= self && v.TankSong && v.TankSong:IsPlaying() then
				if bOverwrite == true then
					v.TankSong:Stop()
				else
					return
				end
			end
		end
	end
	local sndIncap = self.SoundTrack[1]
	local filter = RecipientFilter()
	filter:AddAllPlayers()
	--[[for k, v in ipairs(ents.FindByClass("player")) do 
		for l, w in ipairs(ents.FindByClass("npc_vj_l4d*")) do
			if w.VJ_IsBeingControlled == true && w.VJ_TheController == v then
				filter:RemovePlayer(v)
			end
		end
	end]]
	local sound = CreateSound(self, sndIncap, filter)
	self.TankSong = sound
	sound:SetSoundLevel(0)
	sound:Play()
	timer.Simple(self.TankSongDuration, function()
		if self.TankSong == nil then return end
		self.TankSong:Stop()
		self.TankSong = nil
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()  
	self:CheckRangeAttack(self:GetPos())
	self:PlayTankSong()
	if self:IsOnFire() && self.Immune_Fire == false && math.random (1,15) == 15 then  
		self.SoundTbl_Pain = {"HulkZombie.PainFire"} 
	else
		self.SoundTbl_Pain = {"HulkZombie.Pain"} 
	end

	if self:GetSequence() == self:SelectWeightedSequence(ACT_CLIMB_UP) or self:GetSequence() == self:SelectWeightedSequence(ACT_CLIMB_DOWN) or self:GetSequence() == self:SelectWeightedSequence(ACT_CLIMB_DISMOUNT) then 
		self.HasRangeAttack = false
		self.ConstantlyFaceEnemy = false
	else
		self.HasRangeAttack = true
		self.ConstantlyFaceEnemy = true
	end

	if GetConVarNumber("vj_l4d2_enemy_finding") == 1 then
    	self.FindEnemy_UseSphere = true 
    	self.FindEnemy_CanSeeThroughWalls = true 
    elseif GetConVarNumber("vj_l4d2_enemy_finding") == 0 then
    	self.FindEnemy_UseSphere = false 
    	self.FindEnemy_CanSeeThroughWalls = false
    end

    if self.VJ_IsBeingControlled == false then
		if IsValid(self:GetEnemy()) then
			self.AnimTbl_IdleStand = {ACT_IDLE_AGITATED}
		else
			self.AnimTbl_IdleStand = {ACT_IDLE}
		end
    end
	for _, v in ipairs(ents.FindInSphere(self:GetPos(), 1000000)) do
		if IsValid(v) then
			if (v:IsNPC() or v:IsPlayer()) && self:Disposition(v) == D_HT then
				if self:Visible(v) then
					self.SoundTbl_CombatIdle = {"HulkZombie.Yell"}
				else
					self.SoundTbl_CombatIdle = {"HulkZombie.Voice","HulkZombie.Breathe","HulkZombie.Growl"}
				end
			end
		end
	end

	if self:Infected_IsCrouching() == true then
		self.FootStepTimeRun = 0.5
	else
		self.FootStepTimeRun = 0.2
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if self:IsShoved() then return end
	if IsValid(self.Debris) then self.Debris:Remove() end
	if dmginfo:GetDamageType() == DMG_BLAST || dmginfo:GetDamageType() == DMG_CRUSH then
		local function GetDirection()
			local directions = {
				{"Shoved_Backward", dmginfo:GetDamagePosition():Distance(self:GetPos() + self:GetForward() * 25)},   --North; move back
				{"Shoved_Leftward", dmginfo:GetDamagePosition():Distance(self:GetPos() + self:GetRight() * 25)},	 --East; move left
				{"Shoved_Forward", dmginfo:GetDamagePosition():Distance(self:GetPos() - self:GetForward() * 25)},   --South; move forward
				{"Shoved_Rightward", dmginfo:GetDamagePosition():Distance(self:GetPos() - self:GetRight() * 25)}	  --West; move right
			}
			table.sort(directions, function(a, b) return a[2] < b[2] end)
			return directions[1][1]
		end
		self:VJ_ACT_PLAYACTIVITY(GetDirection(),true,VJ_GetSequenceDuration(self,GetDirection()),false)
		timer.Simple(0.1,function()
			if IsValid(self) then
				self:RemoveDebris()
			end
		end)
	end
end			
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDoKilledEnemy(ent, attacker, inflictor)
	self:VJ_ACT_PLAYACTIVITY(ACT_ARM,true,VJ_GetSequenceDuration(self,ACT_ARM),true)
	self:L4D2_DeathMessage("SKE",ent)
end  
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)	  
	self:L4D2_DeathMessage("EKS",dmginfo:GetAttacker())
	if self:IsMoving() && self:GetActivity() == ACT_RUN then
		self.AnimTbl_Death = {"Death_2"}
	end
	timer.Simple(0.1,function()
		if IsValid(self) then
			self:RemoveDebris()
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled(dmginfo,hitgroup)	
	self:VJ_ACT_PLAYACTIVITY("ACT_DIERAGDOLL",true,1.74,false)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()	 
	if self.TankSong && self.TankSong:IsPlaying() then
		self.TankSong:Stop()
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
