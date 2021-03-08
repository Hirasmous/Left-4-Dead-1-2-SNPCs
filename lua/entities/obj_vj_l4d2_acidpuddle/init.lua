AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
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
ENT.DamageDistance = 200
ENT.Dead = false
ENT.Owner = nil 
ENT.SoundTbl_Idle = {"player/spitter/swarm/spitter_acid_fadeout.mp3","player/spitter/swarm/spitter_acid_fadeout2.mp3"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetNoDraw(true)
	self:DropToFloor()
	self:DrawShadow(false)
	ParticleEffectAttach("spitter_areaofdenial", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPhysicsCollide(data,phys)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	timer.Simple(7,function()
		if IsValid(self)  then
			self:Remove()
		end
	end)
	local sphere = ents.FindInSphere(self:GetPos(),50)
	local owner = self:GetOwner()
	for k, v in ipairs(sphere) do
		if IsValid(v) then 
			if v:IsNPC() || v:IsNextBot() || (v:IsPlayer() && v:Alive() && GetConVar("ai_ignoreplayers"):GetInt() == 0) then
				if v:IsNPC() && (v:Classify() == CLASS_ZOMBIE || v.IsVJBaseSNPC && table.HasValue(v.VJ_NPC_Class, "CLASS_ZOMBIE")) then return end
		    if math.random(1,5) == 5 then
			    VJ_EmitSound(self,VJ_PICKRANDOMTABLE({"player/pz/hit/zombie_slice_1.mp3","player/pz/hit/zombie_slice_2.mp3","player/pz/hit/zombie_slice_3.mp3","player/pz/hit/zombie_slice_4.mp3","player/pz/hit/zombie_slice_5.mp3","player/pz/hit/zombie_slice_6.mp3"}),65,math.random(100,100))
			    v:TakeDamage(math.random(3, 5), self:GetOwner() or self, self:GetOwner() or self)
			end
		end
	    end
    end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
