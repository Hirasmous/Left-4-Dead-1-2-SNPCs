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
ENT.Behavior = VJ_BEHAVIOR_NEUTRAL -- The behavior of the SNPC
ENT.BecomeEnemyToPlayer = false -- Should the friendly SNPC become enemy towards the player if it's damaged by a player?
ENT.BecomeEnemyToPlayerLevel = 1 -- How many times does the player have to hit the SNPC for it to become enemy?
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.AllowPrintingInChat = false -- Should this SNPC be allowed to post in player's chat? Example: "Blank no longer likes you."
ENT.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
ENT.VJC_Data = {
	CameraMode = 1, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(0, 0, 0), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "ValveBiped.Bip01_Head1", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(3, 0, 5), -- The offset for the controller when the camera is in first person
}
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 65 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_w_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.HasDeathAnimation = true
ENT.AnimTbl_Death = {ACT_DIE_GUTSHOT}
ENT.Behavior = VJ_BEHAVIOR_NEUTRAL
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
ENT.SoundTbl_Idle = {"WitchZombie.Despair"}
-- ENT.SoundTbl_Breath = {
    -- "music/witch/lost_little_witch_01a.wav",
    -- "music/witch/lost_little_witch_01b.wav",
    -- "music/witch/lost_little_witch_02a.wav",
    -- "music/witch/lost_little_witch_02b.wav",
    -- "music/witch/lost_little_witch_03a.wav",
    -- "music/witch/lost_little_witch_03b.wav",
    -- "music/witch/lost_little_witch_04a.wav",
    -- "music/witch/lost_little_witch_04b.wav",
-- }
ENT.SoundTbl_CombatIdle = {"WitchZombie.Rage"}
ENT.SoundTbl_Alert = {
	"npc/witch/voice/attack/female_distantscream1.wav",
	"npc/witch/voice/attack/female_distantscream2.wav",
}
ENT.SoundTbl_Surprised = {"WitchZombie.Surprised"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.wav","vj_l4d2/pz/miss/claw_miss_2.wav"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.wav","vj_l4d2/pz/hit/claw_hit_flesh_2.wav","vj_l4d2/pz/hit/claw_hit_flesh_3.wav","vj_l4d2/pz/hit/claw_hit_flesh_4.wav"}
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
ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.FootStepSoundLevel = 80
ENT.AlertSoundLevel = 95
ENT.IdleSoundLevel = 85
ENT.DeathSoundLevel = 85
ENT.LeapAttackJumpSoundLevel = 100
ENT.BeforeLeapAttackSoundLevel = 105
ENT.NextSoundTime_Breath1 = 3
ENT.NextSoundTime_Breath2 = 3

ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105

ENT.UseTheSameGeneralSoundPitch = false

--- Custom ---
ENT.Witch_CanGroan = true
ENT.Witch_State = 2 --- (1 - Wander) (2 - Sitting)
ENT.SoundTrack = {"music/witch/witchencroacher.wav"}
ENT.SoundTrack_Chase = {"music/witch/psychowitch.wav"}
ENT.SoundTrack_Burning = {"music/witch/witchroast.wav"}

util.AddNetworkString("L4D2WitchHUD")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
    self:SetHullType(self.HullType)
    self.IsSurprised = false
    self.IsGroaningLow = false
    self.IsGroaningMedium = false
    self.IsGroaningHigh = false
    self.soundtrack = CreateSound(self, "music/witch/witchencroacher.wav") 
    self.soundtrack:SetSoundLevel(75)
    self.soundtrack:Play()
    for _, x in ipairs(player.GetAll()) do
        self.soundtrack_chase = CreateSound(x, "music/witch/psychowitch.wav") 
        self.soundtrack_chase:SetSoundLevel(100)
        self.soundtrack_burning = CreateSound(x, "music/witch/witchroast.wav") 
        self.soundtrack_burning:SetSoundLevel(100)
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
    ply:EmitSound("ui/menu_horror01.wav")
    ply:EmitSound("ui/pickup_guitarriff10.wav")
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
function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo,hitgroup)
    self.Behavior = VJ_BEHAVIOR_AGGRESSIVE
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnResetEnemy() 
    self:VJ_ACT_PLAYACTIVITY(ACT_ARM,true,7,true) 
    self.Alerted = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDoKilledEnemy(argent,attacker,inflictor)
    self:VJ_ACT_PLAYACTIVITY(ACT_ARM,true,7,true) 
    self.Alerted = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert(argent) 
	if self.Alerted == true then
        self:VJ_ACT_PLAYACTIVITY(ACT_IDLE_ANGRY,true,1.5,false) 
        local ent = self:GetEnemy()
        if IsValid(ent) then
            if ent:IsNPC() then
                PrintMessage(HUD_PRINTTALK, ent:GetClass().." startled the ".. self:GetName())
            elseif ent:IsPlayer() then
                PrintMessage(HUD_PRINTTALK, ent:GetName().." startled the ".. self:GetName())
            end
        end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
    VJ_STOPSOUND(self.soundtrack)
    VJ_STOPSOUND(self.soundtrack_chase)
    VJ_STOPSOUND(self.soundtrack_burning)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInvestigate(argent)
    if self.Dead == true then return false end
    if self.Alerted == true then return false end
    if math.random(1,2) == 1 then
        timer.Simple(1,function()
            if IsValid(self) then
                self.IsGroaningLow = true
            end
        end)
        timer.Simple(3,function()
            if IsValid(self) then
                self.IsGroaningLow = false
            end
        end)
    elseif math.random(1,2) == 1 then
        timer.Simple(1,function()
            if IsValid(self) then
                self.IsGroaningMedium = true
            end
        end)
        timer.Simple(3,function()
            if IsValid(self) then
                self.IsGroaningMedium = false
            end
        end)
    elseif math.random(1,3) == 1 then
        timer.Simple(1,function()
            if IsValid(self) then
                self.IsGroaningHigh = true
            end
        end)
        timer.Simple(3,function()
            if IsValid(self) then
                self.IsGroaningHigh = false
            end
        end)
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,GetCorpse)
    VJ_STOPSOUND(self.soundtrack)
    VJ_STOPSOUND(self.soundtrack_chase)
    VJ_STOPSOUND(self.soundtrack_burning)
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
function ENT:Witch_GroanLow()
    self:VJ_ACT_PLAYACTIVITY("vjseq_Agitated",true,1.5,true) 
    VJ_CreateSound(self,self.SoundTbl_Witch_GrowlLow,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,100))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Witch_GroanMedium()
    self:VJ_ACT_PLAYACTIVITY("vjseq_Agitated",true,1.5,true) 
    VJ_CreateSound(self,self.SoundTbl_Witch_GrowlMedium,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,100))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Witch_GroanHigh()
    self:VJ_ACT_PLAYACTIVITY("vjseq_Agitated_02",true,1.5,true) 
    VJ_CreateSound(self,self.SoundTbl_Witch_GrowlHigh,self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,100))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
    local anims = VJ_PICK{"Shoved_BackWard_03","Shoved_Forward_01","Shoved_Leftward_01","Shoved_Rightward_01"}
    if IsValid(self:GetEnemy()) then
        if dmginfo:GetDamageType() == DMG_CLUB then
            self:VJ_ACT_PLAYACTIVITY(anims,true,VJ_GetSequenceDuration(self,anims),false)
        end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	if self.IsGroaningLow == true then
        if math.random(1,5) == 1 then
        	self:Witch_GroanLow()
        end
    end
    if self.IsGroaningMedium == true then
        if math.random(1,5) == 1 then
        	self:Witch_GroanMedium()
        end
    end
    if self.IsGroaningHigh == true then
        if math.random(1,5) == 1 then
        	self:Witch_GroanHigh()
        end
    end
    if IsValid(self:GetEnemy()) then
        VJ_STOPSOUND(self.soundtrack)
        self.soundtrack_chase:Play()
        self.Behavior = VJ_BEHAVIOR_AGGRESSIVE
        self.VJ_NoTarget = false
        self.AnimTbl_IdleStand = {ACT_IDLE}
    else
        VJ_STOPSOUND(self.soundtrack_chase)
        self.soundtrack:Play()
        self.Alerted = false
        self.Behavior = VJ_BEHAVIOR_NEUTRAL
        self.VJ_NoTarget = true
        self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
    end
    if self:IsOnFire() && self.Immune_Fire == false then
        self.AnimTbl_IdleStand = {ACT_IDLE_ON_FIRE}
        self.AnimTbl_Walk = {ACT_RUN_ON_FIRE}
        self.AnimTbl_Run = {ACT_RUN_ON_FIRE}
        VJ_STOPSOUND(self.soundtrack)
        VJ_STOPSOUND(self.soundtrack_chase)
        self.soundtrack_burning:Play()
        self.SoundTbl_Pain = {"WitchZombie.PainFire"}
    else
        self.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}
        self.AnimTbl_Walk = {ACT_WALK}
        self.AnimTbl_Run = {ACT_RUN}
        VJ_STOPSOUND(self.soundtrack_burning)
        self.SoundTbl_Pain = {"WitchZombie.Pain"}
        if IsValid(self:GetEnemy()) then
            self.soundtrack_chase:Play()
        else
            self.soundtrack:Play()
        end
    end
    for k, x in ipairs(ents.FindInSphere(self:GetPos(),150)) do
        if IsValid(x) then
            if x:IsPlayer() && self:Disposition(x) != D_LI then
                self.Behavior = VJ_BEHAVIOR_AGGRESSIVE
            end
        end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)
    if self:IsMoving() && self:GetActivity() == ACT_RUN then
        self.AnimTbl_Death = {ACT_DIESIMPLE}
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	local randattack = math.random(1,2)
	if randattack == 1 then
		self.AnimTbl_MeleeAttack = {"vjges_MovingMelee_01","vjges_MovingMelee_02"}
		self.TimeUntilMeleeAttackDamage = 0.7
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_w_d")
	elseif randattack == 2 then
		self.AnimTbl_MeleeAttack = {"vjges_MovingMelee_01","vjges_MovingMelee_02"}
		self.TimeUntilMeleeAttackDamage = 0.7
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_w_d")
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
