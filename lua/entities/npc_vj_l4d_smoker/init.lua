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
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
--ENT.SoundTbl_FootStep = {"player/footsteps/infected/run/concrete1.mp3","player/footsteps/infected/run/concrete2.mp3","player/footsteps/infected/run/concrete3.mp3","player/footsteps/infected/run/concrete4.mp3"}
ENT.SoundTbl_Idle = {"vj_l4d/smoker/voice/idle/smoker_lurk_01.mp3","vj_l4d/smoker/voice/idle/smoker_lurk_03.mp3","vj_l4d/smoker/voice/idle/smoker_lurk_04.mp3","vj_l4d/smoker/voice/idle/smoker_lurk_06.mp3","vj_l4d/smoker/voice/idle/smoker_lurk_08.mp3"}
ENT.SoundTbl_Alert = {"vj_l4d/smoker/voice/idle/smoker_spotprey_01.mp3","vj_l4d/smoker/voice/idle/smoker_spotprey_02.mp3","vj_l4d/smoker/voice/idle/smoker_spotprey_07.mp3","vj_l4d/smoker/voice/idle/smoker_spotprey_08.mp3"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/pz/miss/claw_miss_1.mp3","vj_l4d2/pz/miss/claw_miss_2.mp3"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/pz/hit/claw_hit_flesh_1.mp3","vj_l4d2/pz/hit/claw_hit_flesh_2.mp3","vj_l4d2/pz/hit/claw_hit_flesh_3.mp3","vj_l4d2/pz/hit/claw_hit_flesh_4.mp3"}
ENT.SoundTbl_BeforeMeleeAttack = {"vj_l4d/smoker/voice/attack/smoker_attack_01.mp3","vj_l4d/smoker/voice/attack/smoker_attack_02.mp3","vj_l4d/smoker/voice/attack/smoker_attack_03.mp3","vj_l4d/smoker/voice/attack/smoker_attack_04.mp3","vj_l4d/smoker/voice/attack/smoker_attack_05.mp3","vj_l4d/smoker/voice/attack/smoker_attack_06.mp3","vj_l4d/smoker/voice/attack/smoker_attack_07.mp3","vj_l4d/smoker/voice/attack/smoker_attack_08.mp3","vj_l4d/smoker/voice/attack/smoker_attack_09.mp3","vj_l4d/smoker/voice/attack/smoker_attack_10.mp3","vj_l4d/smoker/voice/attack/smoker_attack_11.mp3"}
ENT.SoundTbl_RangeAttack= {"vj_l4d/smoker/voice/attack/smoker_launchtongue_01.mp3","vj_l4d/smoker/voice/attack/smoker_launchtongue_02.mp3"}
ENT.SoundTbl_BeforeRangeAttack = {"vj_l4d/smoker/voice/idle/smoker_spotprey_01.mp3","vj_l4d/smoker/voice/idle/smoker_spotprey_02.mp3","vj_l4d/smoker/voice/idle/smoker_spotprey_07.mp3","vj_l4d/smoker/voice/idle/smoker_spotprey_08.mp3","vj_l4d/smoker/voice/warn/smoker_warn_01.mp3","vj_l4d/smoker/voice/warn/smoker_warn_03.mp3"}
ENT.SoundTbl_Pain = {"vj_l4d/smoker/voice/pain/smoker_pain_02.mp3","vj_l4d/smoker/voice/pain/smoker_pain_03.mp3","vj_l4d/smoker/voice/pain/smoker_pain_04.mp3","vj_l4d/smoker/voice/pain/smoker_pain_05.mp3","vj_l4d/smoker/voice/pain/smoker_painshort_01.mp3","vj_l4d/smoker/voice/pain/smoker_pain_02.mp3","vj_l4d/smoker/voice/pain/smoker_painshort_02.mp3","vj_l4d/smoker/voice/pain/smoker_painshort_03.mp3","vj_l4d/smoker/voice/pain/smoker_painshort_04.mp3","vj_l4d/smoker/voice/pain/smoker_painshort_05.mp3","vj_l4d/smoker/voice/pain/smoker_painshort_06.mp3"}
ENT.SoundTbl_Death = {"vj_l4d/smoker/voice/death/smoker_death_01.mp3","vj_l4d/smoker/voice/death/smoker_death_02.mp3","vj_l4d/smoker/voice/death/smoker_death_03.mp3"}
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
