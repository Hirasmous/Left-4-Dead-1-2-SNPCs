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

/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/