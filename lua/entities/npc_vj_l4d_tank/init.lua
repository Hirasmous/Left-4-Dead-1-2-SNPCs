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

/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/