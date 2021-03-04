AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.TouchSoundv = 80
ENT.DeathIdleSoundv = 90
ENT.Decal = "vj_acidslime1"
ENT.AlreadyPaintedDecal = false
ENT.Damage = 45
ENT.DamageDistance = 200
ENT.Dead = false
ENT.Owner = nil 
ENT.VJ_AddEntityToSNPCAttackList = true

ENT.Attracted_Zombies = {}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetNoDraw(true)
	self:DrawShadow(false)
	ParticleEffectAttach("vomit_jar", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	for _, x in ipairs(ents.FindInSphere(self:GetPos(),5000)) do
		if x:IsNPC() && string.find(x:GetClass(),"npc_vj_l4d_com*") then
			x:VJ_DoSetEnemy(self)
			x:SetEnemy(self)
			table.insert(self.Attracted_Zombies,x)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	timer.Simple(15,function()
		if IsValid(self) then
			self:Remove()
		end
	end)
	for _,v in ipairs(self.Attracted_Zombies) do
		if IsValid(v) then
			v:VJ_TASK_GOTO_LASTPOS()
			v:SetLastPosition(self:GetPos())
		end
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
