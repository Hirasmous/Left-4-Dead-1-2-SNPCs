AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d/hulk.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_t_h")
ENT.HullType = HULL_HUMAN
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
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
ENT.PoseParameterLooking_Names = {pitch={"body_pitch"},yaw={"body_yaw","move_yaw"},roll={}} -- Custom pose parameters to use, can put as many as needed
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
ENT.MeleeAttackDistance = 32 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 65 -- How far does the damage go?
ENT.MeleeAttackDamage = GetConVarNumber("vj_l4d2_t_d")
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.HasMeleeAttackKnockBack = true -- If true, it will cause a knockback to its enemy
ENT.MeleeAttackKnockBack_Forward1 = 450 -- How far it will push you forward | First in math.random
ENT.MeleeAttackKnockBack_Forward2 = 550 -- How far it will push you forward | Second in math.random
ENT.MeleeAttackKnockBack_Up1 = 240 -- How far it will push you up | First in math.random
ENT.MeleeAttackKnockBack_Up2 = 260 -- How far it will push you up | Second in math.random
ENT.MeleeAttackKnockBack_Right1 = 0 -- How far it will push you right | First in math.random
ENT.MeleeAttackKnockBack_Right2 = 0 -- How far it will push you right | Second in math.random
ENT.FootStepTimeRun = 0.24 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.4 -- Next foot step sound when it is walking
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.RangeAttackEntityToSpawn = "obj_vj_l4d2_debris" -- The entity that is spawned when range attacking
ENT.Passive_RunOnDamage = false -- Should it run when it's damaged? | This doesn't impact how self.Passive_AlliesRunOnDamage works
ENT.DisableDefaultRangeAttackCode = true -- When true, it won't spawn the range attack entity, allowing you to make your own
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {"Death"} -- Death Animations
-- ====== Animation Variables ====== --
ENT.AnimTbl_RangeAttack = {"throw_02","throw_03","throw_04"} -- Range Attack Animations
-- ====== Distance Variables ====== --
ENT.TimeUntilRangeAttackProjectileRelease = 2.5 -- How much time until the projectile code is ran?
ENT.RangeAttackPos_Up = 47
ENT.RangeDistance = 900 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 175 -- How close does it have to be until it uses melee?
ENT.NextRangeAttackTime = 6 -- How much time until it can use a range attack?
ENT.NextMeleeAttackTime = 1 -- How much time until it can use a melee attack?
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 0 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 12 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.HasHitGroupFlinching = false -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_DefaultWhenNotHit = false -- If it uses hitgroup flinching, should it do the regular flinch if it doesn't hit any of the specified hitgroups?
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_HEAD}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_CHEST}, Animation = {"Shoved_Backward"}},{HitGroup = {HITGROUP_STOMACH}, Animation = {"Shoved_Backward"}}}
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Alert = {"vj_l4d/tank/voice/yell/tank_yell_01.wav","vj_l4d/tank/voice/yell/tank_yell_02.wav","vj_l4d/tank/voice/yell/tank_yell_03.wav","vj_l4d/tank/voice/yell/tank_yell_04.wav","vj_l4d/tank/voice/yell/hulk_yell_5.wav","vj_l4d/tank/voice/yell/hulk_yell_6.wav","vj_l4d/tank/voice/yell/hulk_yell_7.wav","vj_l4d/tank/voice/yell/hulk_yell_8.wav","vj_l4d/tank/voice/yell/tank_yell_01.wav","vj_l4d/tank/voice/yell/tank_yell_02.wav","vj_l4d/tank/voice/yell/tank_yell_03.wav","vj_l4d/tank/voice/yell/tank_yell_04.wav","vj_l4d/tank/voice/yell/tank_yell_05.wav","vj_l4d/tank/voice/yell/tank_yell_06.wav","vj_l4d/tank/voice/yell/tank_yell_07.wav","vj_l4d/tank/voice/yell/tank_yell_08.wav","vj_l4d/tank/voice/yell/tank_yell_09.wav","vj_l4d/tank/voice/yell/tank_yell_10.wav","vj_l4d/tank/voice/yell/tank_yell_11.wav","vj_l4d/tank/voice/yell/tank_yell_12.wav","vj_l4d/tank/voice/yell/tank_yell_13.wav","vj_l4d/tank/voice/yell/tank_yell_14.wav"}
ENT.SoundTbl_FootStep = {"vj_l4d2/footsteps/tank/walk/tank_walk01.wav","vj_l4d2/footsteps/tank/walk/tank_walk02.wav","vj_l4d2/footsteps/tank/walk/tank_walk03.wav","vj_l4d2/footsteps/tank/walk/tank_walk04.wav","vj_l4d2/footsteps/tank/walk/tank_walk05.wav","vj_l4d2/footsteps/tank/walk/tank_walk06.wav"}
ENT.SoundTbl_Idle = {"vj_l4d/tank/voice/idle/hulk_breathe_1.wav","vj_l4d/tank/voice/idle/hulk_breathe_2.wav","vj_l4d/tank/voice/idle/hulk_breathe_3.wav","vj_l4d/tank/voice/idle/hulk_breathe_4.wav","vj_l4d/tank/voice/idle/hulk_breathe_5.wav","vj_l4d/tank/voice/idle/hulk_breathe_6.wav","vj_l4d/tank/voice/idle/hulk_breathe_7.wav","vj_l4d/tank/voice/idle/hulk_breathe_8.wav","vj_l4d/tank/voice/idle/hulk_growl_1.wav","vj_l4d/tank/voice/idle/hulk_growl_2.wav","vj_l4d/tank/voice/idle/hulk_growl_3.wav","vj_l4d/tank/voice/idle/hulk_growl_4.wav","vj_l4d/tank/voice/idle/hulk_growl_5.wav"}
ENT.SoundTbl_CombatIdle = {"vj_l4d/tank/voice/yell/tank_yell_01.wav","vj_l4d/tank/voice/yell/tank_yell_02.wav","vj_l4d/tank/voice/yell/tank_yell_03.wav","vj_l4d/tank/voice/yell/tank_yell_04.wav","vj_l4d/tank/voice/yell/hulk_yell_5.wav","vj_l4d/tank/voice/yell/hulk_yell_6.wav","vj_l4d/tank/voice/yell/hulk_yell_7.wav","vj_l4d/tank/voice/yell/hulk_yell_8.wav","vj_l4d/tank/voice/yell/tank_yell_01.wav","vj_l4d/tank/voice/yell/tank_yell_02.wav","vj_l4d/tank/voice/yell/tank_yell_03.wav","vj_l4d/tank/voice/yell/tank_yell_04.wav","vj_l4d/tank/voice/yell/tank_yell_05.wav","vj_l4d/tank/voice/yell/tank_yell_06.wav","vj_l4d/tank/voice/yell/tank_yell_07.wav","vj_l4d/tank/voice/yell/tank_yell_08.wav","vj_l4d/tank/voice/yell/tank_yell_09.wav","vj_l4d/tank/voice/yell/tank_yell_10.wav","vj_l4d/tank/voice/yell/tank_yell_11.wav","vj_l4d/tank/voice/yell/tank_yell_12.wav","vj_l4d/tank/voice/yell/tank_yell_13.wav","vj_l4d/tank/voice/yell/tank_yell_14.wav"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d/tank/hit/hulk_punch_1.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.wav","vj_l4d2/pz/miss/claw_miss_2.wav"}
ENT.SoundTbl_BeforeMeleeAttack = {"vj_l4d/tank/voice/attack/tank_attack_01.wav","vj_l4d/tank/voice/attack/tank_attack_02.wav","vj_l4d/tank/voice/attack/tank_attack_03.wav","vj_l4d/tank/voice/attack/tank_attack_04.wav","vj_l4d/tank/voice/attack/tank_attack_05.wav","vj_l4d/tank/voice/attack/tank_attack_06.wav","vj_l4d/tank/voice/attack/tank_attack_07.wav","vj_l4d/tank/voice/attack/tank_attack_08.wav","vj_l4d/tank/voice/attack/tank_attack_09.wav","vj_l4d/tank/voice/attack/tank_attack_10.wav"}
ENT.SoundTbl_Pain = {"vj_l4d/tank/voice/pain/tank_pain_01.wav","vj_l4d/tank/voice/pain/tank_pain_02.wav","vj_l4d/tank/voice/pain/tank_pain_03.wav","vj_l4d/tank/voice/pain/tank_pain_04.wav","vj_l4d/tank/voice/pain/tank_pain_05.wav","vj_l4d/tank/voice/pain/tank_pain_06.wav","vj_l4d/tank/voice/pain/tank_pain_07.wav","vj_l4d/tank/voice/pain/tank_pain_08.wav","vj_l4d/tank/voice/pain/tank_pain_09.wav","vj_l4d/tank/voice/pain/tank_pain_10.wav"}
ENT.SoundTbl_BeforeRangeAttack = {"vj_l4d/tank/attack/rip_up_rock_1.wav"}
ENT.SoundTbl_RangeAttack = {"vj_l4d/tank/voice/yell/tank_throw_01.wav","vj_l4d/tank/voice/yell/tank_throw_02.wav","vj_l4d/tank/voice/yell/tank_throw_03.wav","vj_l4d/tank/voice/yell/tank_throw_04.wav","vj_l4d/tank/voice/yell/tank_throw_05.wav","vj_l4d/tank/voice/yell/tank_throw_06.wav"}
ENT.SoundTbl_Death = {"vj_l4d/tank/voice/die/tank_death_01.wav","vj_l4d/tank/voice/die/tank_death_02.wav","vj_l4d/tank/voice/die/tank_death_03.wav","vj_l4d/tank/voice/die/tank_death_04.wav","vj_l4d/tank/voice/die/tank_death_05.wav","vj_l4d/tank/voice/die/tank_death_06.wav","vj_l4d/tank/voice/die/tank_death_07.wav"}

ENT.SoundTrackVolume = 1
ENT.FootStepSoundLevel = 80
ENT.AlertSoundLevel = 100
ENT.IdleSoundLevel = 85
ENT.DeathSoundLevel = 85
ENT.AlertSoundLevel = 85
ENT.CombatIdleSoundLevel = 85
ENT.BeforeRangeAttackSoundLevel = 100
ENT.RangeAttackSoundLevel = 90
ENT.GeneralSoundPitch1 = 92
ENT.GeneralSoundPitch2 = 100
ENT.UseTheSameGeneralSoundPitch = false

util.AddNetworkString("L4DTankHUD")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/