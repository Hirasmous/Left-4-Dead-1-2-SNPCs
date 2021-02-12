AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/jockey.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_j_h")
ENT.HullType = HULL_WIDE_SHORT
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
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
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
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_j_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.HasLeapAttack = true -- Should the SNPC have a leap attack?
ENT.LeapAttackDamage = GetConVarNumber("vj_l4d2_j_d")
ENT.LeapAttackDamageType = DMG_SLASH -- Type of Damage
ENT.AnimTbl_LeapAttack = {ACT_JUMP} -- Melee Attack Animations
ENT.TimeUntilLeapAttackDamage = 0.5 -- How much time until it runs the leap damage code?
ENT.TimeUntilLeapAttackVelocity = 0.2 -- How much time until it runs the velocity code?
ENT.LeapAttackVelocityForward = 0 -- How much forward force should it apply?
ENT.LeapAttackVelocityUp = 270 -- How much upward force should it apply?
ENT.LeapAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.LeapAttackExtraTimers = {0.4,0.6,0.8,1} -- Extra leap attack timers | it will run the damage code after the given amount of seconds
ENT.StopLeapAttackAfterFirstHit = true
ENT.LeapAttackAnimationFaceEnemy = false -- Should it face the enemy while playing the leap attack animation?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.LeapDistance = 200 -- The distance of the leap, for example if it is set to 500, when the SNPC is 500 Unit away, it will jump
ENT.LeapToMeleeDistance = 100 -- How close does it have to be until it uses melee?
ENT.LeapAttackDamageDistance = 70 -- How far does the damage go?
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 12 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = true -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"Boomer.Concrete.WalkLeft","Boomer.Concrete.WalkRight"}
ENT.SoundTbl_Idle = {"JockeyZombie.Recognize"}
ENT.SoundTbl_Alert = {"JockeyZombie.Alert","JockeyZombie.Warn"}
ENT.SoundTbl_LeapAttackDamage = {"player/pz/hit/zombie_slice_1.wav","player/pz/hit/zombie_slice_2.wav","player/pz/hit/zombie_slice_3.wav","player/pz/hit/zombie_slice_4.wav","player/pz/hit/zombie_slice_5.wav","player/pz/hit/zombie_slice_6.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.wav","vj_l4d2/pz/miss/claw_miss_2.wav"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.wav","vj_l4d2/pz/hit/claw_hit_flesh_2.wav","vj_l4d2/pz/hit/claw_hit_flesh_3.wav","vj_l4d2/pz/hit/claw_hit_flesh_4.wav"}
ENT.SoundTbl_LeapAttackJump = {"JockeyZombie.Alert","JockeyZombie.Warn"}
ENT.SoundTbl_LeapAttackDamageMiss = {"vj_l4d2/pz/miss/claw_miss_1.wav","vj_l4d2/pz/miss/claw_miss_2.wav"}
ENT.SoundTbl_Pain = {"JockeyZombie.Pain"}
ENT.SoundTbl_Death = {"JockeyZombie.Death"}

ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.FootStepSoundLevel = 80
ENT.AlertSoundLevel = 95
ENT.IdleSoundLevel = 95
ENT.DeathSoundLevel = 85
ENT.NextSoundTime_Idle1 = 1
ENT.NextSoundTime_Idle2 = 2
ENT.IdleSoundChance = 2
ENT.IdleSoundPitch1 = 100
ENT.IdleSoundPitch2 = 100
ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105
ENT.UseTheSameGeneralSoundPitch = false

-- Custom --
ENT.IsGhosted = false
ENT.CanPounce = true
ENT.BacteriaSound = nil
ENT.pEnemyRagdoll = nil
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/jockeybacteria.wav","vj_l4d2/music/bacteria/jockeybacterias.wav"}
util.AddNetworkString("L4D2JockeyHUD")
util.AddNetworkString("L4D2JockeyHUDGhost")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
    self:SetHullType(self.HullType)
    self:SetCollisionBounds(Vector(25,25,25),Vector(-25,-25,0))
    self.nextBacteria = 0
    self.nextPounce = 0
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	//print(key)
	if key == "event_emit FootStep" then
		self:FootStepSoundCode()
	end
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
function ENT:PounceEnemy(v)
    --local mdl = ents.Create("prop_anim_survivor")
    --mdl:SetModel("models/survivors/L4D2_Human_base.mdl")
    --mdl:SetPos(v:GetPos())
    --mdl:SetAngles(ang)
    --mdl:Spawn()
    --mdl:SetRenderMode(1)
    --mdl:SetColor(Color(0, 0, 0, 0))
    --mdl:SetParent(v)
    --mdl:ResetSequence(1)
    --mdl:ResetSequenceInfo()
    --mdl:SetCycle(0)
    --self.pEnemyRagdoll = mdl
    --timer.Simple(0.1, function()
        --if !IsValid(self) then return end
        --net.Start("jockey_PounceEnemy")
            --net.WriteString(tostring(self:EntIndex()))
            --net.WriteEntity(mdl)
            --net.WriteString(v:GetModel())
        --net.Broadcast()
    --end)
    --self:SetParent(v)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_AfterChecks(TheHitEntity)
    if self.Dead == true then return false end
    self:PounceEnemy(TheHitEntity)
    --self.attacking = CreateSound(self, "JockeyZombie.Ride") 
    --self.attacking:SetSoundLevel(85)
    --self.attacking:Play()
    --if TheHitEntity:IsPlayer() then
        --self.soundtrack = CreateSound(TheHitEntity, "vj_l4d2/music/special_attacks/vassalation.wav") 
        --self.soundtrack:SetSoundLevel(100)
        --self.soundtrack:Play()
    --end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo,hitgroup)
    self:VJ_ACT_PLAYACTIVITY("ACT_DIERAGDOLL",true,1.74,false)
    VJ_STOPSOUND(self.soundtrack)
    VJ_STOPSOUND(self.attacking)
end      
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
    VJ_STOPSOUND(self.soundtrack)
    VJ_STOPSOUND(self.attacking)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
    if self.IsPouncing == false then
        self.HasMeleeAttack = true
        self.HasLeapAttack = true
        VJ_STOPSOUND(self.soundtrack)
        VJ_STOPSOUND(self.attacking)
    end
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
        self.HasLeapAttack = true
    end
    if CurTime() >= self.nextBacteria then
        self:PlayBacteria()
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlayBacteria(bOverwrite)
    for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
        if v ~= self && v.BacteriaSound && v.BacteriaSound:IsPlaying() then
            if bOverwrite == true then
                v.BacteriaSound:Stop()
            else
                return
            end
        end
    end
    for k, v in ipairs(ents.FindByClass("npc_vj_l4d_*")) do
        if v ~= self && v.BacteriaSound && v.BacteriaSound:IsPlaying() then
            if bOverwrite == true then
                v.BacteriaSound:Stop()
            else
                return
            end
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
            if IsValid(w.pIncapacitatedEnemy) && w.pIncapacitatedEnemy == v then
                filter:RemovePlayer(v)
            end
        end
    end
    local bacterianoise = CreateSound(game.GetWorld(), bacteria, filter)
    self.BacteriaSound = bacterianoise
    bacterianoise:SetSoundLevel(0)
    bacterianoise:Play()
    timer.Simple(math.Round(SoundDuration(bacteria)), function()
        bacterianoise:Stop()
    end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
    self:SetGhost()
    function self.VJ_TheControllerEntity:CustomOnStopControlling()
        net.Start("L4D2JockeyHUD")
            net.WriteBool(true)
            net.WriteEntity(self)
            net.WriteEntity(ply)
        net.Send(ply)
        net.Start("L4D2JockeyHUDGhost")
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
            net.Start("L4D2JockeyHUDGhost")
                net.WriteBool(false)
                net.WriteEntity(self)
                net.WriteEntity(ply)
            net.Send(ply)
            net.Start("L4D2JockeyHUD")
                net.WriteBool(true)
                net.WriteEntity(self)
                net.WriteEntity(ply)
            net.Send(ply)
        elseif self.IsGhosted == false then
            net.Start("L4D2JockeyHUD")
                net.WriteBool(false)
                net.WriteEntity(self)
                net.WriteEntity(ply)
            net.Send(ply)
            net.Start("L4D2JockeyHUDGhost")
                net.WriteBool(true)
                net.WriteEntity(self)
                net.WriteEntity(ply)
            net.Send(ply)
        end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:UnSetGhost(bool)
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
    self.HasLeapAttack = true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetGhost(bool)
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
    self.HasLeapAttack = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
        local anims = VJ_PICK{"Shoved_Backward","Shoved_Leftward","Shoved_Rightward"}
    if dmginfo:GetDamageType() == DMG_CLUB || dmginfo:GetDamageType() == DMG_GENERIC then
        self:VJ_ACT_PLAYACTIVITY(anims,true,VJ_GetSequenceDuration(self,anims),false)
        if self.HasEnemyIncapacitated == true && IsValid(self.pIncapacitatedEnemy) then
            self:DismountJockey()
            self:VJ_ACT_PLAYACTIVITY(anims,true,VJ_GetSequenceDuration(self,anims),false)
        end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
	local randattack = math.random(1,2)
	if randattack == 1 then
		self.AnimTbl_MeleeAttack = {"vjges_Jockey_Melee"}
		self.TimeUntilMeleeAttackDamage = 0.25
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_j_d")
	elseif randattack == 2 then
		self.AnimTbl_MeleeAttack = {"vjges_Jockey_Melee"}
		self.TimeUntilMeleeAttackDamage = 0.25
		self.MeleeAttackDamage = GetConVarNumber("vj_l4d2_j_d")
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
