AddCSLuaFile("shared.lua")
include('shared.lua')

ENT.DisableWandering = true
ENT.AnimTbl_IdleStand = {ACT_IDLE_RELAXED}

ENT.IsSitting = true

function ENT:CustomOnInvestigate(ent)
	self:VJ_ACT_PLAYACTIVITY(ACT_IDLE_AGITATED)
end

/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
