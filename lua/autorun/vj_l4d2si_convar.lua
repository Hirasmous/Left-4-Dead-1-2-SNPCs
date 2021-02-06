/*--------------------------------------------------
	=============== Left 4 Dead 2 SNPCs ConVars ===============
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: Used to load ConVars for Left 4 Dead 2 SNPCs
--------------------------------------------------*/
local VJExists = "lua/autorun/vj_base_autorun.lua"
if( !file.Exists( VJExists, "GAME" ) ) then return end
-------------------------------------------------------------------
local AddConvars = {}

-- Boomer
AddConvars["vj_l4d2_b_h"] = 50
AddConvars["vj_l4d2_b_d"] = 4

-- Charger
AddConvars["vj_l4d2_c_h"] = 600
AddConvars["vj_l4d2_c_d"] = 10

-- Smoker
AddConvars["vj_l4d2_s_h"] = 250
AddConvars["vj_l4d2_s_d"] = 4

-- Spitter
AddConvars["vj_l4d2_sp_h"] = 100
AddConvars["vj_l4d2_sp_d"] = 4

-- Tank
AddConvars["vj_l4d2_t_h"] = 3500
AddConvars["vj_l4d2_t_d"] = 20

-- Hunter
AddConvars["vj_l4d2_h_h"] = 250
AddConvars["vj_l4d2_h_d"] = 4

-- Jockey
AddConvars["vj_l4d2_j_h"] = 325
AddConvars["vj_l4d2_j_d"] = 4

-- Witch
AddConvars["vj_l4d2_w_h"] = 1000
AddConvars["vj_l4d2_w_d"] = 100

for k, v in pairs(AddConvars) do
	if !ConVarExists( k ) then CreateConVar( k, v, {FCVAR_NONE} ) end
end