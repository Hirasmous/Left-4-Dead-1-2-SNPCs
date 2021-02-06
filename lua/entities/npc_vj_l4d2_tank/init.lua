AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/hulk.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_t_h")
ENT.HullType = HULL_HUMAN
ENT.DisableWandering = true -- Disables wandering when the SNPC is idle
ENT.HasWorldShakeOnMove = true -- Should the world shake when it's moving?
ENT.NextWorldShakeOnRun = 0.24 -- How much time until the world shakes while it's running
ENT.NextWorldShakeOnWalk = 0.4 -- How much time until the world shakes while it's walking
ENT.FindEnemy_CanSeeThroughWalls = true -- Should it be able to see through walls and objects? | Can be useful if you want to make it know where the enemy is at all times
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
	ThirdP_Offset = Vector(0, 0, 0), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "ValveBiped.Bip01_Head", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(5, 0, 5), -- The offset for the controller when the camera is in first person
}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.CustomBlood_Pool = {"blood_bleedout"}-- Blood pool types after it dies
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 65 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_t_d")
ENT.HasMeleeAttackKnockBack = true -- If true, it will cause a knockback to its enemy
ENT.MeleeAttackKnockBack_Forward1 = 450 -- How far it will push you forward | First in math.random
ENT.MeleeAttackKnockBack_Forward2 = 550 -- How far it will push you forward | Second in math.random
ENT.MeleeAttackKnockBack_Up1 = 240 -- How far it will push you up | First in math.random
ENT.MeleeAttackKnockBack_Up2 = 260 -- How far it will push you up | Second in math.random
ENT.MeleeAttackKnockBack_Right1 = 0 -- How far it will push you right | First in math.random
ENT.MeleeAttackKnockBack_Right2 = 0 -- How far it will push you right | Second in math.random
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
ENT.SoundTbl_FootStep = {"Tank.Default.RunRight","Tank.Default.RunLeft"}
ENT.SoundTbl_Idle = {"HulkZombie.Voice","HulkZombie.Breathe","HulkZombie.Growl"}
ENT.SoundTbl_CombatIdle = {"HulkZombie.Yell","HulkZombie.Voice","HulkZombie.Breathe","HulkZombie.Growl"}
ENT.SoundTbl_MeleeAttack = {"HulkZombie.Punch"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.wav","vj_l4d2/pz/miss/claw_miss_2.wav"}
ENT.SoundTbl_BeforeMeleeAttack = {"HulkZombie.Attack"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/miss/claw_miss_1.wav","vj_l4d2/miss/claw_miss_2.wav"}
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
ENT.FootStepSoundLevel = 80
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
ENT.SoundTracks = nil
ENT.SoundTrack = {"vj_l4d2/music/taank.wav","vj_l4d2/music/tank.wav"}
util.AddNetworkString("L4D2TankHUD")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
    self:SetHullType(self.HullType)
    if GetConVarNumber("vj_l4d2_musictype") == 1 then self.SoundTrack = {"vj_l4d2/music/tank_metal.wav","vj_l4d2/music/taank_metal.wav"} end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_OverrideProjectilePos(TheProjectile)
    TheProjectile:SetPos(self:GetAttachment(self:LookupAttachment("debris")).Pos) 
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDoKilledEnemy(argent,attacker,inflictor)
    self:VJ_ACT_PLAYACTIVITY(ACT_ARM,true,1.74,true)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
    ply:EmitSound("ui/menu_horror01.wav")
    ply:EmitSound("ui/pickup_guitarriff10.wav")
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
function ENT:CustomOnThink_AIEnabled()  
    self:Tank_Soundtrack(false)  
    if self:IsOnFire() && self.Immune_Fire == false && math.random (1,15) == 15 then  
		VJ_CreateSound(self,self.SoundTbl_HulkPainFire,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,92))  
        self:SetMaterial("models/infected/hulk/ci_burning")              
	end

	-------------------------------------------------------------------------------------------------  THIS CODE IS FROM DRVREJ I DO NOT OWN IT ---------------------------------------------------------------------------------------------------------------------------          
	//print(self:GetBlockingEntity())
	// IsValid(self:GetBlockingEntity()) && !self:GetBlockingEntity():IsNPC() && !self:GetBlockingEntity():IsPlayer()
	if self.AllowClimbing == true && self.Dead == false && self.Climbing == false && CurTime() > self.NextClimb then
		//print("-------------------------------------------------------------------------------------")
		local anim = false
		local finalpos = self:GetPos()
		local tr5 = util.TraceLine({start = self:GetPos() + self:GetUp()*144, endpos = self:GetPos() + self:GetUp()*144 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 144
		local tr4 = util.TraceLine({start = self:GetPos() + self:GetUp()*120, endpos = self:GetPos() + self:GetUp()*120 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 120
		local tr3 = util.TraceLine({start = self:GetPos() + self:GetUp()*96, endpos = self:GetPos() + self:GetUp()*96 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 96
		local tr2 = util.TraceLine({start = self:GetPos() + self:GetUp()*72, endpos = self:GetPos() + self:GetUp()*72 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 72
		local tr1 = util.TraceLine({start = self:GetPos() + self:GetUp()*48, endpos = self:GetPos() + self:GetUp()*48 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 48
		local tru = util.TraceLine({start = self:GetPos(), endpos = self:GetPos() + self:GetUp()*200, filter = self})
		
		//VJ_CreateTestObject(tru.StartPos,self:GetAngles(),Color(0,0,255))
		//VJ_CreateTestObject(tru.HitPos,self:GetAngles(),Color(0,255,0))
		//PrintTable(tr2)
		if !IsValid(tru.Entity) then
			if IsValid(tr5.Entity) then
				local tr5b = util.TraceLine({start = self:GetPos() + self:GetUp()*160, endpos = self:GetPos() + self:GetUp()*160 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end})
				if !IsValid(tr5b.Entity) then
					anim = VJ_PICKRANDOMTABLE({"Jump_Climb150"})
					finalpos = tr5.HitPos
                                        VJ_CreateSound(self,self.SoundTbl_HulkClimb,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,92))
				end
			elseif IsValid(tr4.Entity) then
				anim = VJ_PICKRANDOMTABLE({"Jump_Climb115"})
				finalpos = tr4.HitPos
                                VJ_CreateSound(self,self.SoundTbl_HulkClimb,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,92))
			elseif IsValid(tr3.Entity) then
				anim = VJ_PICKRANDOMTABLE({"Jump_Climb70"})
				finalpos = tr3.HitPos
                                VJ_CreateSound(self,self.SoundTbl_HulkClimb,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,92))
			elseif IsValid(tr2.Entity) then
				anim = VJ_PICKRANDOMTABLE({"Jump_Climb50"})
				finalpos = tr2.HitPos
                                VJ_CreateSound(self,self.SoundTbl_HulkClimb,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,92))
			elseif IsValid(tr1.Entity) then
				anim = VJ_PICKRANDOMTABLE({"Jump_Climb38"})
				finalpos = tr1.HitPos 
                                VJ_CreateSound(self,self.SoundTbl_HulkClimb,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,92))
			end
		
			if anim != false then
				//print(anim)
				self:SetGroundEntity(NULL)
				self.Climbing = true
				timer.Simple(0.4,function()
					if IsValid(self) then
						self:SetPos(finalpos)
					end
				end)
				self:VJ_ACT_PLAYACTIVITY(anim,true,false/*self:DecideAnimationLength(anim,false,0.4)*/,true,0,{},function(vsched)
					vsched.RunCode_OnFinish = function()
						//self:SetGroundEntity(NULL)
						//self:SetPos(finalpos)
						self.Climbing = false
					end
				end)
			end
			self.NextClimb = CurTime() + 0.1 //5
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Tank_Soundtrack(fadeout) 
	if fadeout == false then
		for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_tank")) do
	        if v.SoundTracks && v.SoundTracks:IsPlaying() then
	            return
	        end
	    end 
	    for k, v in ipairs(ents.FindByClass("npc_vj_l4d_tank")) do
	        if v.SoundTracks && v.SoundTracks:IsPlaying() then
	            return
	        end
	    end
	    local soundtracks = table.Random(self.SoundTrack)
		local filter = RecipientFilter()
		filter:AddAllPlayers()
        self.soundtrack = CreateSound(game.GetWorld(),soundtracks, filter)
		self.SoundTracks = self.soundtrack
		self.soundtrack:ChangeVolume(100)
		self.soundtrack:PlayEx(1,100)
	end
	if fadeout == true then
		if self.SoundTracks && self.SoundTracks:IsPlaying() then
		    self.SoundTracks:FadeOut(1.5)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRangeAttack_BeforeStartTimer() 
	timer.Simple(0.7,function()
		if IsValid(self) then
		    ParticleEffectAttach("tank_rock_throw_ground_generic_cracks_2",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("forward"))              
		    self.Concrete = ents.Create("prop_vj_animatable")
			self.Concrete:SetLocalPos(self:GetPos())
		    self.Concrete:SetModel("models/props_debris/concrete_chunk01a.mdl")
			self.Concrete:SetOwner(self)
		    self.Concrete:SetParent(self)
		    self.Concrete:Spawn()
		    self.Concrete:Activate()
		    self.Concrete:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)	
		    self.Concrete:SetSolid(SOLID_NONE)
			self.Concrete:AddEffects(EF_BONEMERGE) 
		end
    end)        
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RemoveConcrete() 
    self.Concrete:Remove()
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
function ENT:CustomRangeAttackCode()
    local ent = ents.Create("obj_vj_l4d2_debris")
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
        self:RemoveConcrete()
    end         
    if randattackr == 3 then                              
        self.AnimTbl_RangeAttack = {"throw_03"}
        self.TimeUntilRangeAttackProjectileRelease = 1.97
        self:RemoveConcrete()
    end    
    if randattackr == 2 then                              
        self.AnimTbl_RangeAttack = {"throw_04"} 
        self.TimeUntilRangeAttackProjectileRelease = 2.8
        self:RemoveConcrete()              
    end
end                      
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled(dmginfo,hitgroup)    
    self:VJ_ACT_PLAYACTIVITY("ACT_DIERAGDOLL",true,1.74,false)
    self:Tank_Soundtrack(true)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()     
	self:Tank_Soundtrack(true)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)      
    if self:IsMoving() && self:GetActivity() == ACT_RUN then
        self.AnimTbl_Death = {"Death_2"}
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	//print(key)
	if key == "event_emit FootStep" then
		self:FootStepSoundCode()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_AfterChecks(hitEnt)
    if math.random(1,2) == 1 then
        self:VJ_ACT_PLAYACTIVITY(ACT_IDLE_ANGRY,true,1.74,true)
        VJ_CreateSound(self,self.SoundTbl_Alert,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,92))
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
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/