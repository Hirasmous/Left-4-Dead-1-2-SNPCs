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
--ENT.SoundTbl_FootStep = {"vj_l4d2/footsteps/boomer/run/concrete1.mp3","vj_l4d2/footsteps/boomer/run/concrete2.mp3","vj_l4d2/footsteps/boomer/run/concrete3.mp3","vj_l4d2/footsteps/boomer/run/concrete4.mp3"}
ENT.SoundTbl_Breath = {"vj_l4d/boomer/voice/idle/indigestion_loop.mp3"}
ENT.SoundTbl_Idle = {"vj_l4d/boomer/voice/idle/boomer_lurk_01.mp3","vj_l4d/boomer/voice/idle/boomer_lurk_02.mp3","vj_l4d/boomer/voice/idle/boomer_lurk_03.mp3","vj_l4d/boomer/voice/idle/boomer_lurk_04.mp3","vj_l4d/boomer/voice/idle/boomer_lurk_05.mp3","vj_l4d/boomer/voice/idle/boomer_lurk_06.mp3","vj_l4d/boomer/voice/idle/boomer_lurk_07.mp3","vj_l4d/boomer/voice/idle/boomer_lurk_08.mp3","vj_l4d/boomer/voice/idle/boomer_lurk_09.mp3","vj_l4d/boomer/voice/idle/boomer_lurk_10.mp3","vj_l4d/boomer/voice/attack/boomer_spotprey_05.mp3","vj_l4d/boomer/voice/attack/boomer_spotprey_07.mp3","vj_l4d/boomer/voice/attack/boomer_spotprey_09.mp3","vj_l4d/boomer/voice/attack/boomer_spotprey_10.mp3","vj_l4d/boomer/voice/attack/zombie10_growl1.mp3","vj_l4d/boomer/voice/attack/zombie10_growl2.mp3","vj_l4d/boomer/voice/attack/zombie10_growl3.mp3"}
ENT.SoundTbl_Alert = {"vj_l4d/boomer/voice/attack/boomer_spotprey_05.mp3","vj_l4d/boomer/voice/attack/boomer_spotprey_07.mp3","vj_l4d/boomer/voice/attack/boomer_spotprey_09.mp3","vj_l4d/boomer/voice/attack/boomer_spotprey_10.mp3","vj_l4d/boomer/voice/attack/zombie10_growl1.mp3","vj_l4d/boomer/voice/attack/zombie10_growl2.mp3","vj_l4d/boomer/voice/attack/zombie10_growl3.mp3"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.mp3"}
ENT.SoundTbl_BeforeRangeAttack= {"vj_l4d/boomer/voice/warn/boomer_warning_01.mp3","vj_l4d/boomer/voice/warn/boomer_warning_12.mp3"}
ENT.SoundTbl_RangeAttack= {"vj_l4d/boomer/vomit/boomer_vomit_01.mp3","vj_l4d/boomer/vomit/boomer_vomit_02.mp3","vj_l4d/boomer/vomit/boomer_vomit_03.mp3","vj_l4d/boomer/vomit/boomer_vomit_04.mp3","vj_l4d/boomer/vomit/boomer_vomit_09.mp3"}
ENT.SoundTbl_Pain = {"vj_l4d/boomer/voice/pain/boomer_pain_1.mp3","vj_l4d/boomer/voice/pain/boomer_pain_2.mp3","vj_l4d/boomer/voice/pain/boomer_pain_3.mp3","vj_l4d/boomer/voice/pain/boomer_painshort_02.mp3","vj_l4d/boomer/voice/pain/boomer_painshort_03.mp3","vj_l4d/boomer/voice/pain/boomer_painshort_04.mp3","vj_l4d/boomer/voice/pain/boomer_painshort_05.mp3","vj_l4d/boomer/voice/pain/boomer_painshort_06.mp3","vj_l4d/boomer/voice/pain/boomer_painshort_07.mp3"}
ENT.SoundTbl_Death = {"vj_l4d/boomer/explode/explo_medium_09.mp3","vj_l4d/boomer/explode/explo_medium_10.mp3","vj_l4d/boomer/explode/explo_medium_14.mp3"}

/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
