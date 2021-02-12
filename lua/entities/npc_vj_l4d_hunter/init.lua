AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
    *** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
    No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
    without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d/hunter.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_h_h")
ENT.HullType = HULL_HUMAN 
/*-----------------------------------------------
    *** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
    No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
    without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/