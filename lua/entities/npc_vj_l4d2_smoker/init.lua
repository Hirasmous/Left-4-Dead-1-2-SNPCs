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
	ThirdP_Offset = Vector(0, 0, 0), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "ValveBiped.Bip01_Head1", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(0, 0, 5), -- The offset for the controller when the camera is in first person
}
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
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 12 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = true -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"vj_l4d2/footsteps/infected/run/concrete1.wav","vj_l4d2/footsteps/infected/run/concrete2.wav","vj_l4d2/footsteps/infected/run/concrete3.wav","vj_l4d2/footsteps/infected/run/concrete4.wav"}
ENT.SoundTbl_Idle = {"SmokerZombie.Breathe"}
ENT.SoundTbl_Alert = {"SmokerZombie.Recognize","SmokerZombie.Alert"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.wav","vj_l4d2/pz/miss/claw_miss_2.wav"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.wav","vj_l4d2/pz/hit/claw_hit_flesh_2.wav","vj_l4d2/pz/hit/claw_hit_flesh_3.wav","vj_l4d2/pz/hit/claw_hit_flesh_4.wav"}
ENT.SoundTbl_BeforeMeleeAttack = {"SmokerZombie.Attack"}
ENT.SoundTbl_RangeAttack= {"SmokerZombie.TongueAttack"}
ENT.SoundTbl_BeforeRangeAttack = {"SmokerZombie.Warn","SmokerZombie.Recognize"}
ENT.SoundTbl_Pain = {"SmokerZombie.Pain","SmokerZombie.PainShort"}
ENT.SoundTbl_Death = {"SmokerZombie.Death"}
ENT.SoundTbl_Explode = {"SmokerZombie.Explode"}

ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.BeforeMeleeAttackSoundChance = 3
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
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/smokerbacteria.wav","vj_l4d2/music/bacteria/smokerbacterias.wav"}
util.AddNetworkString("L4D2SmokerHUD")
util.AddNetworkString("L4D2SmokerHUDGhost")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
    self:SetHullType(self.HullType)
    self.nextBacteria = 0
    ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
    ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
    ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine")) 
    ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine"))
    ParticleEffectAttach("smoker_spore_trail",PATTACH_POINT_FOLLOW,self,0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	//print(key)
	if key == "event_emit FootStep" then
		self:FootStepSoundCode()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:UnSetGhost(bool)
    ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
    ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
    ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine")) 
    ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine"))
    ParticleEffectAttach("smoker_spore_trail",PATTACH_POINT_FOLLOW,self,0)
    self.IsGhosted = false
    self:DrawShadow(true)
    self.GodMode = false 
    self:SetCollisionGroup(COLLISION_GROUP_NONE)
    self.VJ_NoTarget = false
    self.DisableMakingSelfEnemyToNPCs = false
    self:SetRenderMode(RENDERMODE_NORMAL)
    self:EmitSound("ui/pickup_guitarriff10.wav")
    self.HasSounds = true
    self.HasMeleeAttack = true
    self.HasRangeAttack = true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetGhost(bool)
    self:StopParticles()
    self.IsGhosted = true
    self:DrawShadow(false)
    self.GodMode = true 
    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
    self.VJ_NoTarget = true
    self.DisableMakingSelfEnemyToNPCs = true
    self:SetRenderMode(RENDERMODE_NONE)
    self:EmitSound("ui/menu_horror01.wav")
    self.HasSounds = false
    self.HasMeleeAttack = false
    self.HasRangeAttack = false
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
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
    if dmginfo:GetDamageType() == DMG_CLUB then
        self:VJ_ACT_PLAYACTIVITY("Shoved_BackWard",false,3,false)
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
    self:SetGhost()
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
function ENT:CustomOnThink()
	self:ManageHUD(self.VJ_TheController)
    if self.VJ_IsBeingControlled == true && self.VJ_TheController:KeyDownLast(IN_USE) then
        if self.IsGhosted == true then
            self:UnSetGhost(self.VJ_TheController)
        elseif self.IsGhosted == false then
            self:SetGhost(self.VJ_TheController)  
        end
    end
    if self.VJ_IsBeingControlled == false then
        self:DrawShadow(true)
        self.GodMode = false 
        self:SetCollisionGroup(COLLISION_GROUP_NONE)
        self.VJ_NoTarget = false
        self.DisableMakingSelfEnemyToNPCs = false
        self:SetRenderMode(RENDERMODE_NORMAL)
        self.HasSounds = true
        self.HasMeleeAttack = true
        self.HasRangeAttack = true
    end
    if CurTime() >= self.nextBacteria then
        self:PlayBacteria()
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlayBacteria()
    for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
        if v.BacteriaSound && v.BacteriaSound:IsPlaying() then
            return
        end
    end
    for k, v in ipairs(ents.FindByClass("npc_vj_l4d_*")) do
        if v.BacteriaSound && v.BacteriaSound:IsPlaying() then
            return
        end
    end
    self.nextBacteria = CurTime() + math.random(14, 22)
    local bacteria = table.Random(self.SoundTbl_Bacteria)
    local filter = RecipientFilter()
    filter:AddAllPlayers()
    for k, v in ipairs(ents.FindByClass("player")) do 
        for l, w in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do --for every entity that is another infected
            if w.VJ_IsBeingControlled == true && w.VJ_TheController == v then --if the player, v, is controlling the infected then
                filter:RemovePlayer(v) --remove the player v from being able to hear the bacteria 
            end
        end
    end
    self.bacterianoise = CreateSound(self, bacteria, filter)
    self.BacteriaSound = self.bacterianoise
    print(self.BacteriaSound)
    self.bacterianoise:SetSoundLevel(0)
    self.bacterianoise:Play()
    timer.Simple(SoundDuration(bacteria), function()
    	if IsValid(self.BacteriaSound) then
    	    self.BacteriaSound:Stop()
    	end
	end)
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
    smoke:SetKeyValue("firesize","64")
    smoke:SetKeyValue("damagescale","20")
    smoke:SetOwner(self)
    smoke:Spawn()
    timer.Simple( 5,function()
        if IsValid(smoke) then
            smoke:Remove()   
        end                            
    end) 
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,corpseEnt)
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
function ENT:CustomOnRangeAttack_BeforeStartTimer(seed) 
    self:VJ_ACT_PLAYACTIVITY("vjseq_Tongue_Attack_Antic",false,VJ_GetSequenceDuration(self,"vjseq_Tongue_Attack_Antic"),false)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode_AfterProjectileSpawn(projectile)
    timer.Simple(0.5,function() if IsValid(self) then VJ_EmitSound(self,VJ_PICKRANDOMTABLE({"player/smoker/miss/smoker_reeltonguein_01.wav","player/smoker/miss/smoker_reeltonguein_02.wav","player/smoker/miss/smoker_reeltonguein_03.wav","player/smoker/miss/smoker_reeltonguein_04.wav","player/smoker/miss/smoker_reeltonguein_05.wav"}),self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,100)) end end)
    timer.Simple(1,function() if IsValid(self) then self:SetBodygroup(2,0) end end) 
    self:SetBodygroup(2,1)  
    local ent = self:GetEnemy()

	local Ent2 = self:GetEnemy()
	local Bone1, Bone2 = self:LookupBone("ValveBiped.Bip01_Head1")
	local WPos1, WPos2 = self:GetPos( 2 )
	local LPos1, LPos2 = self:GetLocalPos()
	local length = ( self:GetPos() - Ent2:GetPos() ):Length()

	constraint.Rope( self, Ent2, Bone1, Bone2, LPos1, LPos2, length, addlength, forcelimit, width, material, rigid )
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)
    return (self:GetEnemy():GetPos() +self:GetEnemy():OBBCenter() -(self:GetAttachment(self:LookupAttachment(self.RangeUseAttachmentForPosID)).Pos)) *10 +self:GetForward()* 1000
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
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/