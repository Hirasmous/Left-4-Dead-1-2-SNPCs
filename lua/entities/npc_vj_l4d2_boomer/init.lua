AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/boomer.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_b_h")
ENT.HullType = HULL_HUMAN
ENT.DisableWandering = true -- Disables wandering when the SNPC is idle
ENT.FindEnemy_CanSeeThroughWalls = true -- Should it be able to see through walls and objects? | Can be useful if you want to make it know where the enemy is at all times
ENT.HasPoseParameterLooking = true -- Does it look at its enemy using poseparameters?
ENT.PoseParameterLooking_InvertPitch = false -- Inverts the pitch poseparameters (X)
ENT.PoseParameterLooking_InvertYaw = false -- Inverts the yaw poseparameters (Y)
ENT.PoseParameterLooking_InvertRoll = false -- Inverts the roll poseparameters (Z)
ENT.PoseParameterLooking_TurningSpeed = 10 -- How fast does the parameter turn?
ENT.DeathCorpseAlwaysCollide = false -- Should the corpse always collide?
ENT.PoseParameterLooking_Names = {pitch={"body_pitch","head_pitch","aim_pitch","mouth"},yaw={"body_yaw","head_yaw","aim_yaw","mouth"},roll={"mouth"}} -- Custom pose parameters to use, can put as many as needed
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
ENT.CallForHelp = false -- Does the SNPC call for help?
ENT.InvestigateSoundDistance = 0 -- How far away can the SNPC hear sounds? | This number is timed by the calculated volume of the detectable sound.
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
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 65 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_b_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.DisableDefaultRangeAttackCode = true -- When true, it won't spawn the range attack entity, allowing you to make your own
ENT.RangeAttackAnimationDelay = 1.5 -- It will wait certain amount of time before playing the animation
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.FallingHeight = 32
-- ====== Animation Variables ====== --
ENT.AnimTbl_RangeAttack = {"vjges_Vomit_Attack"} -- Range Attack Animations
-- ====== Distance Variables ====== --
ENT.TimeUntilRangeAttackProjectileRelease = 1.5 -- How much time until the projectile code is ran?
ENT.RangeAttackPos_Up = 47
ENT.RangeDistance = 250 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
ENT.NextRangeAttackTime = 20 -- How much time until it can use a range attack?
ENT.DeathCorpseModel = {"models/vj_l4d2/limbs/exploded_boomer.mdl"}
ENT.RangeAttackAnimationFaceEnemy = false -- Should it face the enemy while playing the range attack animation?
	-- ====== Flinching Code ====== --
ENT.AnimTbl_Flinch = {"vjges_flinch_01","vjges_flinch_02","vjges_flinch_03"} -- If it uses normal based animation, use this
ENT.CanFlinch = 0 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 1 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = false -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = true -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward_01"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward_01"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward_01"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {}
ENT.SoundTbl_Idle = {"BoomerZombie.Groan","BoomerZombie.Voice"}
ENT.SoundTbl_Alert = {"BoomerZombie.Alert","BoomerZombie.Rage"}
ENT.SoundTbl_Breath = {"BoomerZombie.Gurgle"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.mp3","vj_l4d2/pz/hit/claw_hit_flesh_2.mp3","vj_l4d2/pz/hit/claw_hit_flesh_3.mp3","vj_l4d2/pz/hit/claw_hit_flesh_4.mp3"}
ENT.SoundTbl_RangeAttack= {"Vomit.Use","player/boomer/vomit/attack/bv1.mp3"}
ENT.SoundTbl_BeforeMeleeAttack = {"BoomerZombie.Attack"}
ENT.SoundTbl_BeforeRangeAttack= {"BoomerZombie.Warn"}
ENT.SoundTbl_Pain = {"BoomerZombie.Pain","BoomerZombie.PainShort"}
ENT.SoundTbl_Death = {"BoomerZombie.Detonate"}
ENT.SoundTbl_BoomerFall = {"BoomerZombie.Fall"}

ENT.NextSoundTime_Idle1 = 0.8
ENT.NextSoundTime_Idle2 = 1.8
ENT.IdleSoundChance = 1.8
ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.BeforeMeleeAttackSoundChance = 2
ENT.FootStepSoundLevel = 80
ENT.AlertSoundLevel = 75
ENT.IdleSoundLevel = 75
ENT.DeathSoundLevel = 100
ENT.BeforeRangeAttackSoundLevel = 105
ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105
ENT.UseTheSameGeneralSoundPitch = false

-- Custom --
ENT.Boomer_IsVomiting = false
ENT.Enemy_IsPuked = true
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/boomerbacteria.mp3","vj_l4d2/music/bacteria/boomerbacterias.mp3"}
ENT.BacteriaSound = nil
ENT.tblPukedVictims = {}
ENT.IsTakingCover = false
ENT.RunAwayT = CurTime()
ENT.GhostRunAwayT = CurTime()
ENT.CanSpawnWhileGhosted = false
ENT.HasSpawned = false
ENT.IsGhosted = false
ENT.FootStepType = "CommonLight"

util.AddNetworkString("L4D2BoomerHUD")
util.AddNetworkString("L4D2BoomerHUDGhost")
util.AddNetworkString("nBoomer_InitializeResidue")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:L4D2_InitializeHooks()
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
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
	self:SetGhost(true)
	function self.VJ_TheControllerEntity:CustomOnStopControlling()
		net.Start("L4D2BoomerHUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
		net.Start("L4D2BoomerHUDGhost")
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
			net.Start("L4D2BoomerHUDGhost")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2BoomerHUD")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		elseif self.IsGhosted == false then
			net.Start("L4D2BoomerHUD")
				net.WriteBool(false)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
			net.Start("L4D2BoomerHUDGhost")
				net.WriteBool(true)
				net.WriteEntity(self)
				net.WriteEntity(ply)
			net.Send(ply)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:VomitEffect(hPlayer,bool)
	if bool then 
		if IsValid(hPlayer) then
			util.AddNetworkString("nBoomer_InitializeOverlay")
			net.Start("nBoomer_InitializeOverlay")
			net.Send(hPlayer)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:VomitBile()	
	for i = 1, 5 do 
		local ent = ents.Create("obj_vj_l4d2_bile")
		ent:SetPos(self:GetPos())
		ent:SetOwner(self)
		ent:Spawn()
		ent:Activate()
		local phys = ent:GetPhysicsObject()
		if IsValid(phys) then
			phys:SetVelocity(self:RangeAttackCode_GetShootPos() *0.6)
		end
	end  
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:VomitEnemy(v,bDeath)
	if !IsValid(v) then return false end
	--if self.VJ_TheController == v then return end 
	if (v:IsPlayer() or v:IsNPC()) && self.Enemy_IsPuked == true && (self.VJ_IsBeingControlled && v:GetClass() ~= "obj_vj_bullseye" && self:IsEntityAlly(v) == false) || self:Disposition(v) == D_HT then
		--[[local numBones = v:GetBoneCount()
		self.Vomit = {}
		for i = 0, numBones -1 do
			local bonepos, boneang = v:GetBonePosition(i)
			local ent = ents.Create("info_particle_system")
			ent:SetParent(v)
			ent:SetPos(bonepos)
			ent:SetKeyValue("effect_name","boomer_vomit_survivor")
			ent:SetKeyValue("start_active","1")
			ent:Spawn()
			ent:Activate()
			self.Vomit[i] = ent
			if(i > 0) then
				local ent = ents.Create("info_particle_system")
				ent:SetParent(v)
				ent:SetPos(bonepos +(v:GetBonePosition(i -1) -bonepos):GetNormal() *bonepos:Distance(v:GetBonePosition(i -1)))
				ent:SetKeyValue("effect_name","boomer_vomit_survivor")
				ent:SetKeyValue("start_active","1")
				ent:Spawn()
				ent:Activate()
				self.Vomit[i +numBones] = ent
			end			
		end]]
		ParticleEffectAttach("boomer_vomit_survivor",PATTACH_ABSORIGIN_FOLLOW,v,0)
		if v:IsPlayer() then
			self:VomitEffect(v,true)
			VJ_CreateSound(v,"vj_l4d2/music/terror/pukricide.mp3",100,self:VJ_DecideSoundPitch(100,100))
		elseif v:IsNPC() then
			VJ_CreateSound(v,"vj_l4d2/music/tags/pukricidehit.mp3",90,self:VJ_DecideSoundPitch(100,100))  
		end	 
		net.Start("nBoomer_InitializeResidue")
			net.WriteBool(bDeath or false)
			net.WriteVector(self:GetPos())
			net.WriteString(tostring(self:EntIndex()))
		net.Broadcast()				  
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode()
	if self.VJ_IsBeingControlled == false then
		if self.NearestPointToEnemyDistance > self.RangeDistance then 
			self.NextRangeAttackTime = 1
			self.HasRangeAttackSound = false
			return 
		end
		if self.NearestPointToEnemyDistance < self.RangeDistance or self:Visible(self:GetEnemy()) then
			self:SetNW2Float("VomitT",CurTime() +self.NextRangeAttackTime)	
			ParticleEffectAttach("boomer_vomit",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))		 
			timer.Simple(0,function() if IsValid(self) then self:VomitBile(75) end end)		 
			timer.Simple(0.1,function() if IsValid(self) then self:VomitBile(75) end end) 
			timer.Simple(0.3,function() if IsValid(self) then self:VomitBile(75) end end)   
			timer.Simple(0.5,function() if IsValid(self) then self:VomitBile(75) end end)  
			timer.Simple(0.6,function() if IsValid(self) then self:VomitBile(75) end end) 
			timer.Simple(0.7,function() if IsValid(self) then self:VomitBile(75) end end)
			for _, x in ipairs(ents.FindInSphere(self:GetPos(),self.RangeDistance)) do
				if IsValid(x) && IsValid(self) then
					if (x:IsPlayer() or x:IsNPC()) && self.Enemy_IsPuked == true && (self.VJ_IsBeingControlled && x:GetClass() ~= "obj_vj_bullseye" && self:IsEntityAlly(x) == false) || self:Disposition(x) == D_HT then
						if self:IsLineOfSightClear(x) && self:Visible(x) then
							table.insert(self.tblPukedVictims,x)
							self:VomitEnemy(x)
							self.Enemy_IsPuked = true
							self.NextRangeAttackTime = 20
							timer.Simple(1,function()
								if IsValid(self) then
									self.IsTakingCover = true
								end
							end)
							timer.Simple(self.NextRangeAttackTime,function()
								if IsValid(self) then
									self.IsTakingCover = false
								end
							end)
						end
					end
				end
			end	 
		end
	elseif self.VJ_IsBeingControlled == true then
		for _, x in ipairs(ents.FindInSphere(self:GetPos(),self.RangeDistance)) do
			if IsValid(x) && IsValid(self) then
				if (x:IsPlayer() or x:IsNPC()) && self.Enemy_IsPuked == true && (self.VJ_IsBeingControlled && x:GetClass() ~= "obj_vj_bullseye" && self:IsEntityAlly(x) == false) || self:Disposition(x) == D_HT then
					if self:IsLineOfSightClear(x) && self:Visible(x) then
						table.insert(self.tblPukedVictims,x)
						self:VomitEnemy(x)
						self.Enemy_IsPuked = true
						self.NextRangeAttackTime = 20
						timer.Simple(1,function()
							if IsValid(self) then
								self.IsTakingCover = true
							end
						end)
						timer.Simple(self.NextRangeAttackTime,function()
							if IsValid(self) then
								self.IsTakingCover = false
							end
						end)
					end
				end
			end
		end	 
		self:SetNW2Float("VomitT",CurTime() +self.NextRangeAttackTime)	
		ParticleEffectAttach("boomer_vomit",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))		 
		timer.Create("Boomer"..self:EntIndex().."_VomitBile", 0.1, 7, function()
			if !IsValid(self) then return end
			self:VomitBile(75)
		end)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRangeAttack_AfterStartTimer()
	self:StopMoving()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	local randattack = math.random(1,2)
	if randattack == 1 then
		self.AnimTbl_MeleeAttack = {"vjges_Melee_01_Layer","vjges_Melee_02","vjges_Melee_03","vjges_Melee_02_Layer","vjges_Melee_03_Layer"}
		self.TimeUntilMeleeAttackDamage = 0.8
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_b_d")
	elseif randattack == 2 then
		self.AnimTbl_MeleeAttack = {"vjges_Melee_01_Layer","vjges_Melee_02","vjges_Melee_03","vjges_Melee_02_Layer","vjges_Melee_03_Layer"}
		self.TimeUntilMeleeAttackDamage = 0.8
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_b_d")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	self:GetGroundType(self:GetPos()) -- in the features.lua
	local ent = self:GetEnemy()
	if self.VJ_IsBeingControlled == false then
		if IsValid(ent) then
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
			if self.NearestPointToEnemyDistance > self.RangeDistance or !self:Visible(self:GetEnemy()) then 
				self.HasRangeAttackSound = false
			elseif self.NearestPointToEnemyDistance < self.RangeDistance or self:Visible(self:GetEnemy()) then 
				self.HasRangeAttackSound = true
			end
		end
	end

	self:ManageHUD(self.VJ_TheController)

	if self.VJ_IsBeingControlled then
		self.ConstantlyFaceEnemy = false
	else
		self.ConstantlyFaceEnemy = true
	end
		
	if self.VJ_IsBeingControlled == false then
		self.TimeUntilRangeAttackProjectileRelease = 1.5
		self.HasBeforeRangeAttackSound = true 
		self.RangeAttackAnimationDelay = 1.5
	elseif self.VJ_IsBeingControlled == true then
		self.TimeUntilRangeAttackProjectileRelease = 0
		self.HasBeforeRangeAttackSound = false
		self.RangeAttackAnimationDelay = 0
	end 

	if CurTime() >= self.nextBacteria then
		self:PlayBacteria()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if self:IsShoved() then return end
	if dmginfo:GetDamageType() == DMG_CLUB || dmginfo:GetDamageType() == DMG_GENERIC then
		self.NextRangeAttackTime = 1
		self:StopAttacks(true)
		self.vAct_StopAttacks = true
		self:StopParticles()
		local function GetDirection()
			local directions = {
				{"Shoved_Backward_01", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() + self:GetForward() * 25)},   --North; move back
				{"Shoved_Leftward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() + self:GetRight() * 25)},	 --East; move left
				{"Shoved_Forward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() - self:GetForward() * 25)},   --South; move forward
				{"Shoved_Rightward", dmginfo:GetAttacker():GetPos():Distance(self:GetPos() - self:GetRight() * 25)}	  --West; move right
			}
			table.sort(directions, function(a, b) return a[2] < b[2] end)
			return directions[1][1]
		end
		self:VJ_ACT_PLAYACTIVITY(GetDirection(),true,VJ_GetSequenceDuration(self,GetDirection()),false)
		timer.Simple(VJ_GetSequenceDuration(self,GetDirection()),function()
			if IsValid(self) then
				self.NextRangeAttackTime = 20
			end
		end)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled(dmginfo,hitgroup)
	for i = 1, 20 do 
		local ent = ents.Create("obj_vj_l4d2_bile")
		ent:SetPos(self:GetPos())
		ent:SetOwner(self)
		ent:Spawn()
		ent:Activate()
		local phys = ent:GetPhysicsObject()
		if IsValid(phys) then
			phys:SetVelocity(self:GetUp() *150 +VectorRand() *180)
		end
	end
	local iAtt = self:LookupAttachment(left && "lfoot" || "rfoot")
	local att = self:GetAttachment(iAtt)
	util.ScreenShake(att.Pos, 100, 100, 0.5, 1500)	   

	ParticleEffect("boomer_explode",self:GetPos() +self:GetUp()*40,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil) 
	self:CreateGibEntity("prop_ragdoll","models/vj_l4d2/limbs/exploded_boomer_head.mdl",{Pos=self:LocalToWorld(Vector(0,0,20)), Ang=self:GetAngles(), Vel=Vector(math.Rand(-100,100),math.Rand(-100,100),math.Rand(450,550))})
	self:CreateGibEntity("prop_ragdoll","models/vj_l4d2/limbs/exploded_boomer_rarm.mdl",{Pos=self:LocalToWorld(Vector(0,0,20)), Ang=self:GetAngles(), Vel=Vector(math.Rand(-100,100),math.Rand(-100,100),math.Rand(450,550))})
	self:CreateGibEntity("prop_ragdoll","models/vj_l4d2/limbs/exploded_boomer_steak1.mdl",{Pos=self:LocalToWorld(Vector(0,0,20)), Ang=self:GetAngles(), Vel=Vector(math.Rand(-100,100),math.Rand(-100,100),math.Rand(450,550))})
	self:CreateGibEntity("prop_ragdoll","models/vj_l4d2/limbs/exploded_boomer_steak2.mdl",{Pos=self:LocalToWorld(Vector(0,0,20)), Ang=self:GetAngles(), Vel=Vector(math.Rand(-100,100),math.Rand(-100,100),math.Rand(450,550))})
	self:CreateGibEntity("prop_ragdoll","models/vj_l4d2/limbs/exploded_boomer_steak3.mdl",{Pos=self:LocalToWorld(Vector(0,0,20)), Ang=self:GetAngles(), Vel=Vector(math.Rand(-100,100),math.Rand(-100,100),math.Rand(450,550))})
	
	for _, x in ipairs(ents.FindInSphere(self:GetPos(),135)) do
		if IsValid(x) && IsValid(self) then
			if (x:IsPlayer() or x:IsNPC()) && self.Enemy_IsPuked == true && (self.VJ_IsBeingControlled && x:GetClass() ~= "obj_vj_bullseye" && self:IsEntityAlly(x) == false) || self:Disposition(x) == D_HT then
				if self:IsLineOfSightClear(x) then
					if !IsValid(x) then return end
					table.insert(self.tblPukedVictims,x)
					self:VomitEnemy(x, true)
					self.Enemy_IsPuked = true
				end
			end
		end
	end 
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,corpseEnt)
	ParticleEffectAttach("boomer_leg_smoke",PATTACH_ABSORIGIN_FOLLOW,corpseEnt,corpseEnt:LookupAttachment("forward"))
	local attacker = dmginfo:GetAttacker()
	if IsValid(attacker) then
		if attacker:IsNPC() then
			PrintMessage(HUD_PRINTTALK, attacker:GetName().." killed ".. self:GetName())
		elseif attacker:IsPlayer() then
			PrintMessage(HUD_PRINTTALK, attacker:Nick().." killed ".. self:GetName())
		end
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
