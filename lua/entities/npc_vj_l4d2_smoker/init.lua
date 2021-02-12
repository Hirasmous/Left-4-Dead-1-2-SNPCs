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
ENT.nEntityIndex = -1 --this is for identifying timers unique to each hunter in the world
ENT.IncapacitationRange = 50 --how close can he be to incapacitate his enemies?
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
ENT.SoundTbl_Incapacitation_Tied = {"vj_l4d2/music/terror/tonguetied.wav"}
ENT.SoundTbl_Incapacitation_Incap = {"vj_l4d2/music/special_attacks/asphyxiation.wav"} 
ENT.BacteriaSound = nil
ENT.IncapSong = nil
ENT.IncapSong2 = nil
ENT.IsChokingEnemy = false 
ENT.Light1 = nil
ENT.Light2 = nil
ENT.Light3 = nil
ENT.Camera = nil

util.AddNetworkString("smoker_RemoveCSEnt")
util.AddNetworkString("smoker_PounceEnemy")
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
function ENT:Incap_Effects(fadeout)
	if IsValid(self.IncapSong) then
	    self.IncapSong = nil
	    self.IncapSong:Stop()
    end
    if fadeout == false then
        self.spotlightpoint = ents.Create("env_projectedtexture")
        self.spotlightpoint:SetPos( self:GetPos() +self:GetUp()*90)
        self.spotlightpoint:SetKeyValue('lightcolor', "145 25 12")
        self.spotlightpoint:SetKeyValue('lightfov', '70')
        self.spotlightpoint:SetKeyValue('brightnessscale', '8')
        self.spotlightpoint:SetKeyValue('farz', '612')
        self.spotlightpoint:SetKeyValue('nearz', '0.1')
        self.spotlightpoint:SetKeyValue('shadowquality', '1')
        self.spotlightpoint:SetKeyValue('enableshadows', '1')
        self.spotlightpoint:SetKeyValue('target', '!player')
        self.spotlightpoint:SetKeyValue('texturename', 'effects/flashlight/hard')
        self.spotlightpoint:SetKeyValue('lightonlytarget', 'on')
        self.spotlightpoint:SetParent(self)
        self.spotlightpoint:Spawn()
        self.spotlightpoint:Activate()
        self:DeleteOnRemove(self.spotlightpoint)
        self.Light1 = self.spotlightpoint
        self.spotlightpoint1 = ents.Create("env_projectedtexture")
        self.spotlightpoint1:SetPos( self:GetPos() +self:GetUp()*90)
        self.spotlightpoint1:SetKeyValue('lightcolor', "145 25 12")
        self.spotlightpoint1:SetKeyValue('lightfov', '70')
        self.spotlightpoint1:SetKeyValue('brightnessscale', '8')
        self.spotlightpoint1:SetKeyValue('farz', '612')
        self.spotlightpoint1:SetKeyValue('nearz', '0.1')
        self.spotlightpoint1:SetKeyValue('shadowquality', '1')
        self.spotlightpoint1:SetKeyValue('enableshadows', '1')
        self.spotlightpoint1:SetKeyValue('target', '!player')
        self.spotlightpoint1:SetKeyValue('texturename', 'effects/flashlight/hard')
        self.spotlightpoint1:SetKeyValue('lightonlytarget', 'on')
        self.spotlightpoint1:SetParent(self)
        self.spotlightpoint1:Spawn()
        self.spotlightpoint1:Activate()
        self:DeleteOnRemove(self.spotlightpoint1)
        self.Light2 = self.spotlightpoint1
        local glowlight = ents.Create("light_dynamic")
        glowlight:SetKeyValue("_light","145 25 12")
        glowlight:SetKeyValue("brightness","5")
        glowlight:SetKeyValue("distance","107")
        glowlight:SetKeyValue("style","0")
        glowlight:SetPos(self:GetPos() +self:GetUp()*65)
        glowlight:SetParent(self)
        glowlight:Spawn()
        glowlight:Activate()
        --glowlight:Fire("SetParentAttachment","attach_blur")
        glowlight:Fire("TurnOn","",0)
        self:DeleteOnRemove(glowlight)
        self.Light3 = glowlight
    end
    if fadeout == true then
        if IsValid(self.Light1) && IsValid(self.Light2) && IsValid(self.Light3) then
            self.Light1:Remove()
            self.Light2:Remove()
            self.Light3:Remove()
        end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
    if key == "event_emit FootStep" then
        self:FootStepSoundCode()
    end
    if key == "event_incap_hit" then
    	if self.IsEnemyStuck == true || self:GetSequence() == self:LookupSequence(self.IncapAnimation) then
    		local incapent = self.pIncapacitatedEnemy
			if GetConVarNumber("vj_l4d2_incapdamage") == 1 then
				if IsValid(incapent) then
					local applyDmg = DamageInfo()
					applyDmg:SetDamage(15)
					applyDmg:SetDamageType(DMG_SLASH)
					applyDmg:SetInflictor(incapent)
					applyDmg:SetAttacker(self)
					incapent:TakeDamage(2,self,incapent)
					VJ_CreateSound(incapent,VJ_PICKRANDOMTABLE{"player/pz/hit/zombie_slice_1.wav","player/pz/hit/zombie_slice_2.wav","player/pz/hit/zombie_slice_3.wav","player/pz/hit/zombie_slice_4.wav","player/pz/hit/zombie_slice_5.wav","player/pz/hit/zombie_slice_6.wav"},65,self:VJ_DecideSoundPitch(100,100))
				end
			end
		end
	end
	if key == "event_incap_voice" then
		VJ_CreateSound(self,self.SoundTbl_BeforeMeleeAttack,75,self:VJ_DecideSoundPitch(100,100))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlayIncapSong(bOverwrite,fadeout)
	if fadeout == false then 
		if self.IncapSong ~= nil && self.IncapSong:IsPlaying() then return end
		if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy:IsPlayer() then
			for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
				if IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == self.pIncapacitatedEnemy && self.IsChokingEnemy == false then
					if v ~= self && v.IncapSong && v.IncapSong:IsPlaying() then
						if bOverwrite == true then
							v.IncapSong:Stop()
						else
							return
						end
					end
				end
			end
			local sndIncap = self.SoundTbl_Incapacitation_Tied[1]
			self.nextIncapSong = CurTime() + math.Round(SoundDuration(sndIncap))
			local filter = RecipientFilter()
			filter:AddPlayer(self.pIncapacitatedEnemy)
			local sound = CreateSound(game.GetWorld(), sndIncap, filter)
			self.IncapSong = sound
			sound:SetSoundLevel(0)
			sound:Play()
			--timer.Simple(math.Round(SoundDuration(sndIncap)), function()
				--sound:Stop()
				--self.IncapSong = nil
			--end)
			local id = self:EntIndex()
			timer.Create("smoker"..id.."_CheckIncapSong", 0.1, math.Round(SoundDuration(sndIncap)) * 10, function()
				if !IsValid(self) then timer.Stop("smoker"..id.."_CheckIncapSong") end
				if self.HasEnemyIncapacitated == false then
					if self.IncapSong ~= nil then
						self.IncapSong:Play()
					end
				end
			end)
			self:CallOnRemove("smoker_StopIncapSong", function(ent)
				if ent.IncapSong ~= nil then
					ent.IncapSong:Stop()
				end
			end)
		end
	end
	if fadeout == true then
		if self.IncapSong && self.IncapSong:IsPlaying() then
			self.IncapSong:Stop()
			self.IncapSong = nil
		end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlayIncapSong_Choke(bOverwrite,fadeout)
	if fadeout == false then 
		if self.IncapSong2 ~= nil && self.IncapSong2:IsPlaying() then return end
		if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy:IsPlayer() then
			for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
				if IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == self.pIncapacitatedEnemy && self.IsChokingEnemy == true then
					if v ~= self && v.IncapSong2 && v.IncapSong2:IsPlaying() then
						if bOverwrite == true then
							v.IncapSong2:Stop()
						else
							return
						end
					end
				end
			end
			for k, v in ipairs(ents.FindByClass("npc_vj_l4d_*")) do
				if IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == self.pIncapacitatedEnemy && self.IsChokingEnemy == true then
					if v ~= self && v.IncapSong2 && v.IncapSong2:IsPlaying() then
						if bOverwrite == true then
							v.IncapSong2:Stop()
						else
							return
						end
					end
				end
			end
			local sndIncap = self.SoundTbl_Incapacitation_Incap[1]
			self.nextIncapSong2 = CurTime() + math.Round(SoundDuration(sndIncap))
			local filter = RecipientFilter()
			filter:AddPlayer(self.pIncapacitatedEnemy)
			local sound2 = CreateSound(game.GetWorld(), sndIncap, filter)
			self.IncapSong2 = sound2
			sound2:SetSoundLevel(0)
			sound2:Play()
			local id = self:EntIndex()
			timer.Create("smoker"..id.."_CheckIncapSong", 0.1, math.Round(SoundDuration(sndIncap)) * 10, function()
				if !IsValid(self) then timer.Stop("smoker"..id.."_CheckIncapSong") end
				if self.HasEnemyIncapacitated == false then
					if self.IncapSong2 ~= nil then
						self.IncapSong2:Play()
					end
				end
			end)
			self:CallOnRemove("smoker_StopIncapSong", function(ent)
				if ent.IncapSong2 ~= nil then
					ent.IncapSong2:Stop()
				end
			end)
		end
	end
	if fadeout == true then
		if self.IncapSong2 && self.IncapSong2:IsPlaying() then
			self.IncapSong2:Stop()
			self.IncapSong2 = nil
		end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SmokerIncapacitate(ent)
	local ent = self.pIncapacitatedEnemy
	if ent then
		self.pIncapacitatedEnemy = ent 
		self.HasEnemyIncapacitated = true
		if not ent:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
			ent:AddEFlags(EFL_NO_THINK_FUNCTION)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CanIncapacitate(ent)
	for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
		if v.HasEnemyIncapacitated == true && IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == ent then
			return false
		end
	end
	for k, v in ipairs(ents.FindByClass("npc_vj_l4d_*")) do
		if v.HasEnemyIncapacitated == true && IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == ent then
			return false
		end
	end
	return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:IsEntityAlly(ent)
    if ent:GetClass() == "obj_vj_bullseye" then
        return true
    end
    if ent:IsNPC() then
        if ent.IsVJBaseSNPC == true then
            for i = 1, table.Count(ent.VJ_NPC_Class) do
                if table.HasValue(self.VJ_NPC_Class, ent.VJ_NPC_Class[i]) then
                    return true
                end
            end
        end
    elseif ent:IsPlayer() then
        if table.HasValue(self.VJ_NPC_Class, "CLASS_PLAYER_ALLY") then
            return true
        end
        if self.VJ_IsBeingControlled && self.VJ_TheController == ent then 
            return true
        end
    end
    return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:StripEnemyWeapons(ent)
    local weapons = ent:GetWeapons()
    self.tblEnemyWeapons = {}
    self.tblEnemyAmmo = {}
    self.tblEnemyAmmo = ent:GetAmmo()
    for l, w in ipairs(weapons) do
        if w.Base ~= "weapon_vj_base" then
            local index = table.Count(self.tblEnemyWeapons) + 1
            self.tblEnemyWeapons[index] = {}
            self.tblEnemyWeapons[index][1] = w:GetClass()
            self.tblEnemyWeapons[index][2] = {w:GetPrimaryAmmoType(), w:Clip1()}
            self.tblEnemyWeapons[index][3] = {w:GetSecondaryAmmoType(), w:Clip2()}
        end
    end
    ent:StripWeapons()
    ent:StripAmmo()
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
function ENT:DismountSmoker()
    if IsValid(self.pIncapacitatedEnemy) then
        util.ParticleTracerEx("smoker_tongue_new_fall", self:GetPos(), self.pIncapacitatedEnemy:GetPos(), false, self:EntIndex(), 3)
    end
    self.HasRangeAttack = true
	self:Incap_Effects(true)
	self.HasEnemyIncapacitated = false
	self.IsChokingEnemy = false
	if self.IncapSong && self.IncapSong:IsPlaying() then
		self.IncapSong:Stop()
		self.IncapSong = nil
	end
	if self.IncapSong2 && self.IncapSong2:IsPlaying() then
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
		enemy:SetParent(nil)
		if self.VJ_IsBeingControlled == false && self.VJ_TheController ~= enemy then
			enemy:SetObserverMode(0)
			enemy:DrawViewModel(true)
			enemy:DrawWorldModel(true)
		end
        if table.Count(self.tblEnemyWeapons) > 0 then
            for i = 1, table.Count(self.tblEnemyWeapons) do
                local tbl = self.tblEnemyWeapons
                enemy:Give(tbl[i][1], true)
                local wpn = enemy:GetWeapon(tbl[i][1])
                if tbl[i][2][1] ~= -1 then
                    wpn:SetClip1(tbl[i][2][2])
                end
                if tbl[i][3][1] ~= -1 then
                    wpn:SetClip2(tbl[i][3][2])
                end
            end
        end
        for a, c in ipairs(self.tblEnemyAmmo) do
            enemy:GiveAmmo(c, game.GetAmmoName(a), true)
        end
	end
	net.Start("smoker_RemoveCSEnt")
		net.WriteString(tostring(self:EntIndex()))
	net.Broadcast()
	if IsValid(self.pEnemyRagdoll) then
		self.pEnemyRagdoll:Remove()
		self.pEnemyRagdoll = nil
    end
	self.pIncapacitatedEnemy = nil
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	self.vecLastPos = self:GetPos()

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
				FacePos(tCtrl, tCtrl:GetPos(), enemy:GetPos() + enemy:OBBCenter())
				FaceTarget(tCtrl, enemy)
			end

			if CurTime() >= self.nextSegmentCreation then
				local flDistance = self:GetAttachment(3).Pos:Distance((enemy:GetPos() + enemy:OBBCenter()))
				local instances = 0
				local pos = self:GetAttachment(3).Pos
				local ang = self:GetAngles()
				local dSeg = 15
				if flDistance >= dSeg then
					math.Round(flDistance, 1)
					instances = flDistance / dSeg
				end
				local iteration = dSeg
				if instances > 0 then
					for i = 1, instances do
						if !IsValid(self) then return end
						local seg = ents.Create("obj_vj_l4d2_tongue_collision")
						seg:SetPos(pos + self.pTongueController:GetForward() * iteration)
						seg:SetAngles(ang)
						seg:Spawn()
						seg:SetOwner(self)
						FacePos(seg, seg:GetPos(), enemy:GetPos() + enemy:OBBCenter())
						timer.Simple(1, function()
							if !IsValid(seg) then return end
							seg:Remove()
						end)
						iteration = iteration + dSeg
					end
				end

				self.nextSegmentCreation = CurTime() + 1
			end

			if enemy:Health() <= 0 then self:DismountSmoker() return end

			if self.HasEnemyIncapacitated == false then return end

			--create tongue
			if CurTime() > self.NextTongueSpawn then
	            if self.IsChokingEnemy == true then
	                util.ParticleTracerEx("smoker_tongue_new", self:GetPos(), enemy:GetPos() +enemy:OBBCenter(), false, self:EntIndex(), 3)
	                self.NextTongueSpawn = CurTime() +0.1
	            elseif self.IsChokingEnemy == false then
	                util.ParticleTracerEx("smoker_tongue_new", self:GetPos(), enemy:GetPos(), false, self:EntIndex(), 3)
	                self.NextTongueSpawn = CurTime() +0.1
	            end
	        end

			local dist = self:GetPos():Distance(enemy:GetPos())  

			--add anim support for player control    
			if self.VJ_IsBeingControlled then
				if dist <= self.IncapacitationRange then
					self.CombatFaceEnemy = true
					self.AnimTbl_IdleStand = {self:GetSequenceActivity(self:LookupSequence(self.IncapAnimation))}
					--self:VJ_PlaySequence(self.IncapAnimation)
				else
					self.CombatFaceEnemy = false
					self:SetAngles(self.incapAngles)
					self.AnimTbl_IdleStand = {self:GetSequenceActivity(self:LookupSequence("Tongue_Attack_Drag_Survivor_Idle"))}
					--self:VJ_PlaySequence("Tongue_Attack_Drag_Survivor_Idle")
				end
			end	

			if self:GetSequence() == self:LookupSequence("Tongue_Attack_Drag_Survivor_Idle") then
				if dist <= self.IncapacitationRange && self.IsChokingEnemy == false then
					self:VJ_ACT_PLAYACTIVITY(self.IncapAnimation, true)
					self.IsChokingEnemy = true 							
					self.pEnemyRagdoll:ResetSequence(self.pEnemyRagdoll:LookupSequence("Idle_Tongued_Choking_Ground"))
					self.pEnemyTongueAttach:ResetSequence(self.pEnemyTongueAttach:LookupSequence("NamVet_Idle_Ground_Smokerchoke"))
					for k, v in ipairs(ents.FindByClass("player")) do
					    if enemy:IsNPC() then
					    	VJ_CreateSound(v,"vj_l4d2/music/tags/asphyxiationhit.wav",95,self:VJ_DecideSoundPitch(100,100))
					    end
					end
					if enemy:IsPlayer() then
				        self:Incap_Effects(false)
				        self:PlayIncapSong(false,true)
				        self:PlayIncapSong_Choke(false,false)
                        enemy:SpectateEntity(self.Camera)
                        enemy:SetFOV(80)
				    end
				end
			elseif self:GetSequence() == self:LookupSequence(self.IncapAnimation) then
				if dist > self.IncapacitationRange then
					self:VJ_ACT_PLAYACTIVITY("Tongue_Attack_Drag_Survivor_Idle", true)   
				end
			end

			local ene = self.pIncapacitatedEnemy

			--check enemy type           
			if enemy:IsPlayer() then
				enemy = self.pEnemyObj
				ene:SetPos(enemy:GetPos())
			else
				if IsValid(self.pEnemyObj) then
					self.pEnemyObj:Remove()
				end
			end

			--make enemy face opposite
			FaceTarget(enemy, self, true)

			--check if path to us is blocked
			local tr1 = util.TraceLine({start = enemy:GetPos(), endpos = enemy:GetPos() - enemy:GetForward() * 20, filter = {self, enemy, ene, self.pEnemyRagdoll}})
			--check if enemy is on ground
			local tr2 = util.TraceLine({start = enemy:GetPos(), endpos = enemy:GetPos() - enemy:GetUp() * 15, filter = {self, enemy, ene, self.pEnemyRagdoll}})
			
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

			local function CheckPath()
				if enemy:GetPos().z > self:GetPos().z then
					if tr2.Hit == true then
						--on ledge
						self.IsEnemyFloating = false
						enemy:SetMoveType(MOVETYPE_FLY)
						if tr1.Hit == false then
							enemy:SetLocalVelocity(-enemy:GetForward() * 100 - enemy:GetUp() * 25)
						end
					else
						--floating
						self.IsEnemyFloating = true
						if not ene:IsPlayer() then
							enemy:SetMoveType(self.EnemyMoveType)
						else
							enemy:SetMoveType(MOVETYPE_FLY)
							enemy:SetLocalVelocity(- enemy:GetUp() * 100)
						end
					end
				else
					self.IsEnemyFloating = false
					enemy:SetMoveType(MOVETYPE_FLY)
					if tr1.Hit == true then
						enemy:SetLocalVelocity(-enemy:GetForward() * 50 + enemy:GetUp() * 50)
					else
						enemy:SetLocalVelocity(-enemy:GetForward() * 100 - enemy:GetUp() * 25)
					end
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
					FreezeEnemy()
				end
			else
				enemy:SetLocalVelocity(Vector(0, 0, 0))
			end
		else
			self:DismountSmoker()
		end
	else
		--fail-safe
		if self.IsIncapacitating == true then
			net.Start("smoker_RemoveCSEnt")
				net.WriteString(tostring(self:EntIndex()))
			net.Broadcast()
			self:DismountSmoker()
			self:SetPos(self:GetPos())
		end
		if self.IncapSound ~= nil then
			self.IncapSound:Stop()
		end
		self.HasIdleSounds = true
		self.HasMeleeAttack = true
		self.HasRangeAttack = true
		self.CombatFaceEnemy = true
	end

	--Sounds
	if CurTime() >= self.nextBacteria then
		self:PlayBacteria()
	end
	if IsValid(self.pIncapacitatedEnemy) then
		if CurTime() >= self.nextIncapSong && self.IsChokingEnemy == false then
			self:PlayIncapSong(false,false)
		end
	else
		if self.IncapSong ~= nil then
			self.IncapSong:Stop()
		end
		if self.IncapSong2 ~= nil then
			self.IncapSong2:Stop()
		end
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
		self.TimeUntilRangeAttackProjectileRelease = 2
        self.RangeAttackAnimationDelay = 2
        self.HasBeforeRangeAttackSound = true
    elseif self.VJ_IsBeingControlled == true then
		self.TimeUntilRangeAttackProjectileRelease = 0
        self.RangeAttackAnimationDelay = 0
        self.HasBeforeRangeAttackSound = false
    end

	if self.VJ_IsBeingControlled == true then
		hook.Add("KeyPress", "smoker_Dismount", function(ply, key)
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
		end)
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
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
    local anims = VJ_PICK{"Shoved_Backward","Shoved_Leftward","Shoved_Rightward"}
    if dmginfo:GetDamageType() == DMG_CLUB || dmginfo:GetDamageType() == DMG_GENERIC then
        self:VJ_ACT_PLAYACTIVITY(anims,true,VJ_GetSequenceDuration(self,anims),false)
        if self.HasEnemyIncapacitated == true && IsValid(self.pIncapacitatedEnemy) then
            self:DismountSmoker()
            self:VJ_ACT_PLAYACTIVITY(anims,true,VJ_GetSequenceDuration(self,anims),false)      
        end
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
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo, hitgroup, corpseEnt)
    local ent = dmginfo:GetAttacker() or dmginfo:GetInflictor() or self:GetEnemy()
    if IsValid(ent) then
        if ent:IsNPC() then
            PrintMessage(HUD_PRINTTALK, ent:GetClass().." killed ".. self:GetName())
        elseif ent:IsPlayer() then
            PrintMessage(HUD_PRINTTALK, ent:GetName().." killed ".. self:GetName())
        end
    end
	self:DismountSmoker()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRangeAttack_BeforeStartTimer(seed) 
	if self.VJ_IsBeingControlled == false then
        self:VJ_ACT_PLAYACTIVITY("vjseq_Tongue_Attack_Antic",false,VJ_GetSequenceDuration(self,"vjseq_Tongue_Attack_Antic"),false)
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomRangeAttackCode_AfterProjectileSpawn(projectile)
    timer.Simple(0.5,function() if IsValid(self) then VJ_EmitSound(self,VJ_PICKRANDOMTABLE({"player/smoker/miss/smoker_reeltonguein_01.wav","player/smoker/miss/smoker_reeltonguein_02.wav","player/smoker/miss/smoker_reeltonguein_03.wav","player/smoker/miss/smoker_reeltonguein_04.wav","player/smoker/miss/smoker_reeltonguein_05.wav"}),self.IdleSoundLevel,self:VJ_DecideSoundPitch(100,100)) end end)
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
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
