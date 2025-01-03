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
ENT.PukeVictims = {}
ENT.Attracted_Zombies = {}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetModel("models/spitball_medium.mdl")

	self:SetNoDraw(true)
	self:DrawShadow(false)
	--ParticleEffectAttach("vomit_jar", PATTACH_ABSORIGIN, self, 0)
	
	for i = 1, #self.PukeVictims do
		local ent = self.PukeVictims[i]
		self.PukeVictims[i] = {ent, 0}
	end

	timer.Simple(10, function()
		if !IsValid(self) then return end
		self:Remove()
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	for _, x in ipairs(ents.FindInSphere(self:GetPos(), 12000)) do
		if x:IsNPC() && string.find(x:GetClass(), "npc_vj_l4d_com") then
			local tbl = self.PukeVictims
			for i = 1, #tbl do
				local dist = tbl[i][1]:GetPos():Distance(x:GetPos())
				tbl[i][2] = dist
			end
			table.sort(tbl, function(a, b) return a[2] < b[2] end)
			if !IsValid(tbl[1]) then return end
			x:VJ_DoSetEnemy(tbl[1][1])
			x:SetTarget(tb1[1][1])
			x:SetEnemy(tbl[1][1])
			if not table.HasValue(self.Attracted_Zombies, x) then
				table.insert(self.Attracted_Zombies, x)
			end
			x:VJ_TASK_GOTO_TARGET("TASK_RUN_PATH")
		end
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
