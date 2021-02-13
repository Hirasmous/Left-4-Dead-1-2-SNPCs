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
ENT.DisableWandering = true -- Disables wandering when the SNPC is idle
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
ENT.RangeToMeleeDistance = 250 -- How close does it have to be until it uses melee? -- This is how far away it can shoot
ENT.NextRangeAttackTime = 25 -- How much time until it can use a range attack?
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 12 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = true -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"player/footsteps/infected/run/concrete1.wav","player/footsteps/infected/run/concrete2.wav","player/footsteps/infected/run/concrete3.wav","player/footsteps/infected/run/concrete4.wav"}
ENT.SoundTbl_Idle = {"SpitterZombie.Voice"}
ENT.SoundTbl_Alert = {"SpitterZombie.Alert","SpitterZombie.Recognize"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.wav","vj_l4d2/pz/miss/claw_miss_2.wav"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.wav","vj_l4d2/pz/hit/claw_hit_flesh_2.wav","vj_l4d2/pz/hit/claw_hit_flesh_3.wav","vj_l4d2/pz/hit/claw_hit_flesh_4.wav"}
ENT.SoundTbl_BeforeRangeAttack= {"SpitterZombie.Spit"}
ENT.SoundTbl_Pain = {"SpitterZombie.Pain","SpitterZombie.PainShort"}
ENT.SoundTbl_Death = {"SpitterZombie.Death"}
ENT.SoundTbl_SpitterAcid = {"player/spitter/swarm/spitter_acid_loop_01.wav","player/spitter/swarm/spitter_acid_loop_02.wav"}
ENT.SoundTbl_SpitterAcidTheme = {"vj_l4d2/music/terror/pileobile.wav"}

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
ENT.NextSoundTime_Idle1 = 1
ENT.NextSoundTime_Idle2 = 2
ENT.IdleSoundChance = 1

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
ENT.SoundTbl_Bacteria = {"vj_l4d2/music/bacteria/spitterbacteria.wav","vj_l4d2/music/bacteria/spitterbacterias.wav"}
ENT.IsTakingCover = false
ENT.NextRunAway = CurTime()
util.AddNetworkString("L4D2SpitterHUD")
util.AddNetworkString("L4D2SpitterHUDGhost")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
    self:SetHullType(self.HullType)
    self.nextBacteria = 0
    ParticleEffectAttach("spitter_drool",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
    ParticleEffectAttach("spitter_slime_trail",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("eye"))
    local glowlight = ents.Create("light_dynamic")
	glowlight:SetKeyValue("_light","110 230 0 255")
	glowlight:SetKeyValue("brightness","0.1")
	glowlight:SetKeyValue("distance","150")
	glowlight:SetKeyValue("style","0")
	glowlight:SetPos(self:GetPos())
	glowlight:SetParent(self)
	glowlight:Spawn()
	glowlight:Activate()
	glowlight:Fire("SetParentAttachment","mouth")
	glowlight:Fire("TurnOn","",0)
	glowlight:DeleteOnRemove(self)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	//print(key)
	if key == "event_emit FootStep" then
		self:FootStepSoundCode()
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
function ENT:UnSetGhost(bool)
    ParticleEffectAttach("spitter_drool",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("mouth"))
    ParticleEffectAttach("spitter_slime_trail",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("eye"))
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
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
    local anims = VJ_PICK{"Shoved_BackWard","Shoved_Leftward","Shoved_Rightward"}
    if dmginfo:GetDamageType() == DMG_CLUB || dmginfo:GetDamageType() == DMG_GENERIC then
        self:VJ_ACT_PLAYACTIVITY(anims,true,VJ_GetSequenceDuration(self,anims),false)
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Controller_Initialize(ply)
    self:SetGhost()
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
function ENT:CustomOnThink()
    self.IsTakingCover = true
    timer.Simple(self.NextRangeAttackTime,function()
        if IsValid(self) then
            self.IsTakingCover = false
        end
    end)
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
    self:SetBodygroup(1,1)
    if CurTime() >= self.nextBacteria then
        self:PlayBacteria()
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode_AfterProjectileSpawn(projectile)
    self.IsTakingCover = true
    timer.Simple(self.NextRangeAttackTime,function()
        if IsValid(self) then
            self.IsTakingCover = false
        end
    end)
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
function ENT:SpitterAcid(fadeout)
	if fadeout == false then
		local table_acidloop = table.Random(self.SoundTbl_SpitterAcid)
	    local table_acidtheme = table.Random(self.SoundTbl_SpitterAcidTheme)
	    self.cspIdleThemeLoop = CreateSound(self, table_acidtheme)
	    self.cspIdleThemeLoop:SetSoundLevel(70)
	    self.cspIdleThemeLoop:Play(70)
	end
	if fadeout == true then
		if self.Dead == true then
			if self.AcidLoop && self.AcidLoop:IsPlaying() then
				self.AcidLoop:FadeOut(1)
			end
	    end
	end
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
function ENT:CustomOnPriorToKilled(dmginfo,hitgroup)
	self:SpitterAcid(false)
    for i = 1, 5 do
        local acid = ents.Create( "obj_vj_l4d2_acidpuddle" )
        acid:SetPos( self:GetPos() + Vector( math.Rand( -40, 40 ), math.Rand( -40, 40 ), 0 ) )
        acid:SetKeyValue( "firesize", "64" )
        acid:SetKeyValue( "damagescale", "20" )
        acid:SetOwner( self )
        acid:Spawn()
        timer.Simple( 7, function()
            if IsValid( acid ) then
                acid:Remove()   
            end                            
        end) 
    end    
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
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
