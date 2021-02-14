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
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Alert = {"vj_l4d/tank/voice/yell/tank_yell_01.mp3","vj_l4d/tank/voice/yell/tank_yell_02.mp3","vj_l4d/tank/voice/yell/tank_yell_03.mp3","vj_l4d/tank/voice/yell/tank_yell_04.mp3","vj_l4d/tank/voice/yell/hulk_yell_5.mp3","vj_l4d/tank/voice/yell/hulk_yell_6.mp3","vj_l4d/tank/voice/yell/hulk_yell_7.mp3","vj_l4d/tank/voice/yell/hulk_yell_8.mp3","vj_l4d/tank/voice/yell/tank_yell_01.mp3","vj_l4d/tank/voice/yell/tank_yell_02.mp3","vj_l4d/tank/voice/yell/tank_yell_03.mp3","vj_l4d/tank/voice/yell/tank_yell_04.mp3","vj_l4d/tank/voice/yell/tank_yell_05.mp3","vj_l4d/tank/voice/yell/tank_yell_06.mp3","vj_l4d/tank/voice/yell/tank_yell_07.mp3","vj_l4d/tank/voice/yell/tank_yell_08.mp3","vj_l4d/tank/voice/yell/tank_yell_09.mp3","vj_l4d/tank/voice/yell/tank_yell_10.mp3","vj_l4d/tank/voice/yell/tank_yell_11.mp3","vj_l4d/tank/voice/yell/tank_yell_12.mp3","vj_l4d/tank/voice/yell/tank_yell_13.mp3","vj_l4d/tank/voice/yell/tank_yell_14.mp3"}
ENT.SoundTbl_FootStep = {"vj_l4d2/footsteps/tank/walk/tank_walk01.mp3","vj_l4d2/footsteps/tank/walk/tank_walk02.mp3","vj_l4d2/footsteps/tank/walk/tank_walk03.mp3","vj_l4d2/footsteps/tank/walk/tank_walk04.mp3","vj_l4d2/footsteps/tank/walk/tank_walk05.mp3","vj_l4d2/footsteps/tank/walk/tank_walk06.mp3"}
ENT.SoundTbl_Idle = {"vj_l4d/tank/voice/idle/hulk_breathe_1.mp3","vj_l4d/tank/voice/idle/hulk_breathe_2.mp3","vj_l4d/tank/voice/idle/hulk_breathe_3.mp3","vj_l4d/tank/voice/idle/hulk_breathe_4.mp3","vj_l4d/tank/voice/idle/hulk_breathe_5.mp3","vj_l4d/tank/voice/idle/hulk_breathe_6.mp3","vj_l4d/tank/voice/idle/hulk_breathe_7.mp3","vj_l4d/tank/voice/idle/hulk_breathe_8.mp3","vj_l4d/tank/voice/idle/hulk_growl_1.mp3","vj_l4d/tank/voice/idle/hulk_growl_2.mp3","vj_l4d/tank/voice/idle/hulk_growl_3.mp3","vj_l4d/tank/voice/idle/hulk_growl_4.mp3","vj_l4d/tank/voice/idle/hulk_growl_5.mp3"}
ENT.SoundTbl_CombatIdle = {"vj_l4d/tank/voice/yell/tank_yell_01.mp3","vj_l4d/tank/voice/yell/tank_yell_02.mp3","vj_l4d/tank/voice/yell/tank_yell_03.mp3","vj_l4d/tank/voice/yell/tank_yell_04.mp3","vj_l4d/tank/voice/yell/hulk_yell_5.mp3","vj_l4d/tank/voice/yell/hulk_yell_6.mp3","vj_l4d/tank/voice/yell/hulk_yell_7.mp3","vj_l4d/tank/voice/yell/hulk_yell_8.mp3","vj_l4d/tank/voice/yell/tank_yell_01.mp3","vj_l4d/tank/voice/yell/tank_yell_02.mp3","vj_l4d/tank/voice/yell/tank_yell_03.mp3","vj_l4d/tank/voice/yell/tank_yell_04.mp3","vj_l4d/tank/voice/yell/tank_yell_05.mp3","vj_l4d/tank/voice/yell/tank_yell_06.mp3","vj_l4d/tank/voice/yell/tank_yell_07.mp3","vj_l4d/tank/voice/yell/tank_yell_08.mp3","vj_l4d/tank/voice/yell/tank_yell_09.mp3","vj_l4d/tank/voice/yell/tank_yell_10.mp3","vj_l4d/tank/voice/yell/tank_yell_11.mp3","vj_l4d/tank/voice/yell/tank_yell_12.mp3","vj_l4d/tank/voice/yell/tank_yell_13.mp3","vj_l4d/tank/voice/yell/tank_yell_14.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d/tank/hit/hulk_punch_1.mp3"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_BeforeMeleeAttack = {"vj_l4d/tank/voice/attack/tank_attack_01.mp3","vj_l4d/tank/voice/attack/tank_attack_02.mp3","vj_l4d/tank/voice/attack/tank_attack_03.mp3","vj_l4d/tank/voice/attack/tank_attack_04.mp3","vj_l4d/tank/voice/attack/tank_attack_05.mp3","vj_l4d/tank/voice/attack/tank_attack_06.mp3","vj_l4d/tank/voice/attack/tank_attack_07.mp3","vj_l4d/tank/voice/attack/tank_attack_08.mp3","vj_l4d/tank/voice/attack/tank_attack_09.mp3","vj_l4d/tank/voice/attack/tank_attack_10.mp3"}
ENT.SoundTbl_Pain = {"vj_l4d/tank/voice/pain/tank_pain_01.mp3","vj_l4d/tank/voice/pain/tank_pain_02.mp3","vj_l4d/tank/voice/pain/tank_pain_03.mp3","vj_l4d/tank/voice/pain/tank_pain_04.mp3","vj_l4d/tank/voice/pain/tank_pain_05.mp3","vj_l4d/tank/voice/pain/tank_pain_06.mp3","vj_l4d/tank/voice/pain/tank_pain_07.mp3","vj_l4d/tank/voice/pain/tank_pain_08.mp3","vj_l4d/tank/voice/pain/tank_pain_09.mp3","vj_l4d/tank/voice/pain/tank_pain_10.mp3"}
ENT.SoundTbl_BeforeRangeAttack = {"vj_l4d/tank/attack/rip_up_rock_1.mp3"}
ENT.SoundTbl_RangeAttack = {"vj_l4d/tank/voice/yell/tank_throw_01.mp3","vj_l4d/tank/voice/yell/tank_throw_02.mp3","vj_l4d/tank/voice/yell/tank_throw_03.mp3","vj_l4d/tank/voice/yell/tank_throw_04.mp3","vj_l4d/tank/voice/yell/tank_throw_05.mp3","vj_l4d/tank/voice/yell/tank_throw_06.mp3"}
ENT.SoundTbl_Death = {"vj_l4d/tank/voice/die/tank_death_01.mp3","vj_l4d/tank/voice/die/tank_death_02.mp3","vj_l4d/tank/voice/die/tank_death_03.mp3","vj_l4d/tank/voice/die/tank_death_04.mp3","vj_l4d/tank/voice/die/tank_death_05.mp3","vj_l4d/tank/voice/die/tank_death_06.mp3","vj_l4d/tank/voice/die/tank_death_07.mp3"}

/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
