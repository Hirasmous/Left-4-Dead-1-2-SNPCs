AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d/smoker.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_s_h")
ENT.HullType = HULL_HUMAN
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.DisableWandering = true -- Disables wandering when the SNPC is idle
ENT.FindEnemy_CanSeeThroughWalls = true -- Should it be able to see through walls and objects? | Can be useful if you want to make it know where the enemy is at all times
ENT.HasPoseParameterLooking = true -- Does it look at its enemy using poseparameters?
ENT.PoseParameterLooking_InvertPitch = false -- Inverts the pitch poseparameters (X)
ENT.PoseParameterLooking_InvertYaw = false -- Inverts the yaw poseparameters (Y)
ENT.PoseParameterLooking_InvertRoll = false -- Inverts the roll poseparameters (Z)
ENT.PoseParameterLooking_TurningSpeed = 10 -- How fast does the parameter turn?
ENT.DeathCorpseAlwaysCollide = false -- Should the corpse always collide?
ENT.PoseParameterLooking_Names = {pitch={"body_pitch"},yaw={"body_yaw"},roll={}} -- Custom pose parameters to use, can put as many as needed
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.CustomBlood_Particle = {"blood_impact_smoker_01"} -- Particle that the SNPC spawns when it's damaged
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 65 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_s_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.FootStepTimeRun = 0.3 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.4 -- Next foot step sound when it is walking
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.AnimTbl_RangeAttack = {"vjseq_Tongue_Attack_Grab_Survivor"} -- Range Attack Animations
ENT.RangeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the range attack animation?
ENT.DisableDefaultRangeAttackCode = false -- When true, it won't spawn the range attack entity, allowing you to make your own
ENT.RangeAttackEntityToSpawn = "obj_vj_l4d2_tongue" -- The entity that is spawned when range attacking
ENT.RangeAttackPos_Up = 47
ENT.RangeDistance = 780 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 175 -- How close does it have to be until it uses melee? -- This is how far away it can shoot
ENT.RangeUseAttachmentForPos = true -- Should the projectile spawn on a attachment?
ENT.RangeUseAttachmentForPosID = "smoker_mouth" -- The attachment used on the range attack if RangeUseAttachmentForPos is set to true
ENT.TimeUntilRangeAttackProjectileRelease = 2 -- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = 13 -- How much time until it can use a range attack?
ENT.NextAnyAttackTime_Range = 1.8 -- How much time until it can use a attack again? | Counted in Seconds
ENT.RangeAttackAnimationDelay = 2 -- It will wait certain amount of time before playing the animation
ENT.DeathCorpseModel = {"models/vj_l4d/smoker.mdl"}
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
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
ENT.SoundTbl_Idle = {"vj_l4d/smoker/voice/idle/smoker_lurk_01.wav","vj_l4d/smoker/voice/idle/smoker_lurk_03.wav","vj_l4d/smoker/voice/idle/smoker_lurk_04.wav","vj_l4d/smoker/voice/idle/smoker_lurk_06.wav","vj_l4d/smoker/voice/idle/smoker_lurk_08.wav"}
ENT.SoundTbl_Alert = {"vj_l4d/smoker/voice/idle/smoker_spotprey_01.wav","vj_l4d/smoker/voice/idle/smoker_spotprey_02.wav","vj_l4d/smoker/voice/idle/smoker_spotprey_07.wav","vj_l4d/smoker/voice/idle/smoker_spotprey_08.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.wav","vj_l4d2/pz/miss/claw_miss_2.wav"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.wav","vj_l4d2/pz/hit/claw_hit_flesh_2.wav","vj_l4d2/pz/hit/claw_hit_flesh_3.wav","vj_l4d2/pz/hit/claw_hit_flesh_4.wav"}
ENT.SoundTbl_BeforeMeleeAttack = {"vj_l4d/smoker/voice/attack/smoker_attack_01.wav","vj_l4d/smoker/voice/attack/smoker_attack_02.wav","vj_l4d/smoker/voice/attack/smoker_attack_03.wav","vj_l4d/smoker/voice/attack/smoker_attack_04.wav","vj_l4d/smoker/voice/attack/smoker_attack_05.wav","vj_l4d/smoker/voice/attack/smoker_attack_06.wav","vj_l4d/smoker/voice/attack/smoker_attack_07.wav","vj_l4d/smoker/voice/attack/smoker_attack_08.wav","vj_l4d/smoker/voice/attack/smoker_attack_09.wav","vj_l4d/smoker/voice/attack/smoker_attack_10.wav","vj_l4d/smoker/voice/attack/smoker_attack_11.wav"}
ENT.SoundTbl_RangeAttack= {"vj_l4d/smoker/voice/attack/smoker_launchtongue_01.wav","vj_l4d/smoker/voice/attack/smoker_launchtongue_02.wav"}
ENT.SoundTbl_BeforeRangeAttack = {"vj_l4d/smoker/voice/idle/smoker_spotprey_01.wav","vj_l4d/smoker/voice/idle/smoker_spotprey_02.wav","vj_l4d/smoker/voice/idle/smoker_spotprey_07.wav","vj_l4d/smoker/voice/idle/smoker_spotprey_08.wav","vj_l4d/smoker/voice/warn/smoker_warn_01.wav","vj_l4d/smoker/voice/warn/smoker_warn_03.wav"}
ENT.SoundTbl_Pain = {"vj_l4d/smoker/voice/pain/smoker_pain_02.wav","vj_l4d/smoker/voice/pain/smoker_pain_03.wav","vj_l4d/smoker/voice/pain/smoker_pain_04.wav","vj_l4d/smoker/voice/pain/smoker_pain_05.wav","vj_l4d/smoker/voice/pain/smoker_painshort_01.wav","vj_l4d/smoker/voice/pain/smoker_pain_02.wav","vj_l4d/smoker/voice/pain/smoker_painshort_02.wav","vj_l4d/smoker/voice/pain/smoker_painshort_03.wav","vj_l4d/smoker/voice/pain/smoker_painshort_04.wav","vj_l4d/smoker/voice/pain/smoker_painshort_05.wav","vj_l4d/smoker/voice/pain/smoker_painshort_06.wav"}
ENT.SoundTbl_Death = {"vj_l4d/smoker/voice/death/smoker_death_01.wav","vj_l4d/smoker/voice/death/smoker_death_02.wav","vj_l4d/smoker/voice/death/smoker_death_03.wav"}

ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 1
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

util.AddNetworkString("smoker_RemoveCSEnt")
util.AddNetworkString("smoker_PounceEnemy")
util.AddNetworkString("L4DSmokerHUD")
util.AddNetworkString("L4DSmokerHUDGhost")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/