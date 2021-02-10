AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d/boomer.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_b_h")
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
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
ENT.PoseParameterLooking_Names = {pitch={"body_pitch","head_pitch","aim_pitch"},yaw={"body_yaw","head_yaw","aim_yaw"},roll={}} -- Custom pose parameters to use, can put as many as needed
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 65 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_b_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.FootStepTimeRun = 0.3 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.5 -- Next foot step sound when it is walking
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.RangeAttackEntityToSpawn = "obj_vj_l4d2_bile" -- The entity that is spawned when range attacking
ENT.RangeAttackAnimationDelay = 1.5 -- It will wait certain amount of time before playing the animation
ENT.DisableDefaultRangeAttackCode = true -- When true, it won't spawn the range attack entity, allowing you to make your own
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.RangeAttackAnimationFaceEnemy = false -- Should it face the enemy while playing the range attack animation?
-- ====== Animation Variables ====== --
ENT.AnimTbl_RangeAttack = {"vjges_Vomit_Attack"} -- Range Attack Animations
-- ====== Distance Variables ====== --
ENT.TimeUntilRangeAttackProjectileRelease = 1.5 -- How much time until the projectile code is ran?
ENT.RangeAttackPos_Up = 47
ENT.RangeDistance = 445 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 200 -- How close does it have to be until it uses melee?
ENT.NextRangeAttackTime = 20 -- How much time until it can use a range attack?
ENT.DeathCorpseModel = {"models/vj_l4d2/limbs/exploded_boomer.mdl"}
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 1 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = true -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward_01"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward_01"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"vj_l4d2/footsteps/boomer/run/concrete1.wav","vj_l4d2/footsteps/boomer/run/concrete2.wav","vj_l4d2/footsteps/boomer/run/concrete3.wav","vj_l4d2/footsteps/boomer/run/concrete4.wav"}
ENT.SoundTbl_Breath = {"vj_l4d/boomer/voice/idle/indigestion_loop.wav"}
ENT.SoundTbl_Idle = {"vj_l4d/boomer/voice/idle/boomer_lurk_01.wav","vj_l4d/boomer/voice/idle/boomer_lurk_02.wav","vj_l4d/boomer/voice/idle/boomer_lurk_03.wav","vj_l4d/boomer/voice/idle/boomer_lurk_04.wav","vj_l4d/boomer/voice/idle/boomer_lurk_05.wav","vj_l4d/boomer/voice/idle/boomer_lurk_06.wav","vj_l4d/boomer/voice/idle/boomer_lurk_07.wav","vj_l4d/boomer/voice/idle/boomer_lurk_08.wav","vj_l4d/boomer/voice/idle/boomer_lurk_09.wav","vj_l4d/boomer/voice/idle/boomer_lurk_10.wav","vj_l4d/boomer/voice/attack/boomer_spotprey_05.wav","vj_l4d/boomer/voice/attack/boomer_spotprey_07.wav","vj_l4d/boomer/voice/attack/boomer_spotprey_09.wav","vj_l4d/boomer/voice/attack/boomer_spotprey_10.wav","vj_l4d/boomer/voice/attack/zombie10_growl1.wav","vj_l4d/boomer/voice/attack/zombie10_growl2.wav","vj_l4d/boomer/voice/attack/zombie10_growl3.wav"}
ENT.SoundTbl_Alert = {"vj_l4d/boomer/voice/attack/boomer_spotprey_05.wav","vj_l4d/boomer/voice/attack/boomer_spotprey_07.wav","vj_l4d/boomer/voice/attack/boomer_spotprey_09.wav","vj_l4d/boomer/voice/attack/boomer_spotprey_10.wav","vj_l4d/boomer/voice/attack/zombie10_growl1.wav","vj_l4d/boomer/voice/attack/zombie10_growl2.wav","vj_l4d/boomer/voice/attack/zombie10_growl3.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.wav","vj_l4d2/pz/miss/claw_miss_2.wav"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.wav"}
ENT.SoundTbl_BeforeRangeAttack= {"vj_l4d/boomer/voice/warn/boomer_warning_01.wav","vj_l4d/boomer/voice/warn/boomer_warning_12.wav"}
ENT.SoundTbl_RangeAttack= {"vj_l4d/boomer/vomit/boomer_vomit_01.wav","vj_l4d/boomer/vomit/boomer_vomit_02.wav","vj_l4d/boomer/vomit/boomer_vomit_03.wav","vj_l4d/boomer/vomit/boomer_vomit_04.wav","vj_l4d/boomer/vomit/boomer_vomit_09.wav"}
ENT.SoundTbl_Pain = {"vj_l4d/boomer/voice/pain/boomer_pain_1.wav","vj_l4d/boomer/voice/pain/boomer_pain_2.wav","vj_l4d/boomer/voice/pain/boomer_pain_3.wav","vj_l4d/boomer/voice/pain/boomer_painshort_02.wav","vj_l4d/boomer/voice/pain/boomer_painshort_03.wav","vj_l4d/boomer/voice/pain/boomer_painshort_04.wav","vj_l4d/boomer/voice/pain/boomer_painshort_05.wav","vj_l4d/boomer/voice/pain/boomer_painshort_06.wav","vj_l4d/boomer/voice/pain/boomer_painshort_07.wav"}
ENT.SoundTbl_Death = {"vj_l4d/boomer/explode/explo_medium_09.wav","vj_l4d/boomer/explode/explo_medium_10.wav","vj_l4d/boomer/explode/explo_medium_14.wav"}

ENT.NextSoundTime_Idle1 = 0.8
ENT.NextSoundTime_Idle2 = 1.8
ENT.IdleSoundChance = 1.8
ENT.NextSoundTime_Breath1 = 7
ENT.NextSoundTime_Breath2 = 7
ENT.PainSoundChance = 1
ENT.NextSoundTime_Pain1 = 0.5
ENT.NextSoundTime_Pain2 = 1
ENT.BeforeMeleeAttackSoundChance = 6
ENT.FootStepSoundLevel = 80
ENT.AlertSoundLevel = 105
ENT.IdleSoundLevel = 105
ENT.RangeAttackSoundLevel = 105
ENT.BeforeRangeAttackSoundLevel = 105
ENT.DeathSoundLevel = 100
ENT.BeforeRangeAttackSoundLevel = 105
ENT.GeneralSoundPitch1 = 95
ENT.GeneralSoundPitch2 = 105
ENT.UseTheSameGeneralSoundPitch = false

util.AddNetworkString("L4DBoomerHUD")
util.AddNetworkString("L4DBoomerHUDGhost")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/