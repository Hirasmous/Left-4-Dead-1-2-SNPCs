/*--------------------------------------------------
	=============== Left 4 Dead 2 SNPCs Spawn ===============
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: Used to load spawns for Left 4 Dead 2 SNPCs
--------------------------------------------------*/
if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
include('autorun/vj_controls.lua')

local vCat = "Left 4 Dead 2"
VJ.AddNPC("Boomer","npc_vj_l4d2_boomer",vCat) 
VJ.AddNPC("Boomette","npc_vj_l4d2_boomette",vCat) 
VJ.AddNPC("Smoker","npc_vj_l4d2_smoker",vCat) 
VJ.AddNPC("Charger","npc_vj_l4d2_charger",vCat) 
VJ.AddNPC("Tank","npc_vj_l4d2_tank",vCat) 
VJ.AddNPC("Hunter","npc_vj_l4d2_hunter",vCat)  
VJ.AddNPC("Jockey","npc_vj_l4d2_jockey",vCat)  
VJ.AddNPC("Witch","sent_vj_l4d2_witch",vCat)  
VJ.AddNPC("Spitter","npc_vj_l4d2_spitter",vCat)  


//Particles
game.AddParticles("particles/boomer_fx.pcf")
game.AddParticles("particles/blood_fx.pcf")
game.AddParticles("particles/smoker_fx.pcf")
game.AddParticles("particles/hunter_fx.pcf")
game.AddParticles("particles/charger_fx.pcf")
game.AddParticles("particles/spitter_fx.pcf")
game.AddParticles("particles/witch_fx.pcf")
game.AddParticles("particles/tank_fx.pcf")

