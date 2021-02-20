AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/boomer.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"FemaleBoomerZombie.Groan","FemaleBoomerZombie.Voice"}
ENT.SoundTbl_Alert = {"FemaleBoomerZombie.Alert","FemaleBoomerZombie.Rage"}
ENT.SoundTbl_MeleeAttackMiss = {"vj_l4d2/miss/claw_miss_1.wav","vj_l4d2/miss/claw_miss_2.wav"}
ENT.SoundTbl_MeleeAttack = {"vj_l4d2/hit/claw_hit_flesh_1.wav","vj_l4d2/hit/claw_hit_flesh_2.wav","vj_l4d2/hit/claw_hit_flesh_3.wav","vj_l4d2/hit/claw_hit_flesh_4.wav"}
ENT.SoundTbl_RangeAttack= {"FemaleVomit.Use"}
ENT.SoundTbl_BeforeRangeAttack= {"FemaleBoomerZombie.Warn"}
ENT.SoundTbl_Pain = {"FemaleBoomerZombie.Pain","FemaleBoomerZombie.PainShort"}
ENT.SoundTbl_Death = {"BoomerZombie.Detonate"}
ENT.SoundTbl_BoomerFall = {"BoomerZombie.Fall"}
ENT.SoundTbl_BeforeMeleeAttack = {"FemaleBoomerZombie.Pain","FemaleBoomerZombie.PainShort"}

/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
