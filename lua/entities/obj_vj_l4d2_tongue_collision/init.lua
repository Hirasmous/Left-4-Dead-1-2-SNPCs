AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Decal = "vj_acidslime1"
ENT.AlreadyPaintedDecal = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetModel("models/gibs/humans/mgib_06.mdl")
    self:PhysicsInit(SOLID_BBOX)
    self:SetMoveType(MOVETYPE_FLY)
    self:SetSolid(SOLID_BBOX)
	self:SetCollisionGroup(1)
	self:SetOwner(self:GetOwner())
	self:DrawShadow(false)
	self:SetNoDraw(true) 
	self.StartPos = self:GetPos()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetMass(0)
	phys:EnableDrag(false)
	phys:EnableGravity(false)
	phyS:EnableMotion(false)
	phys:SetBuoyancyRatio(0)
end

function ENT:CustomOnTakeDamage(dmginfo)
	if IsValid(self:GetOwner()) then
		if not self:GetOwner():IsEntityAlly(dmginfo:GetAttacker()) || not self:GetOwner():IsEntityAlly(dmginfo:GetInflicter()) then
			self:GetOwner():DismountSmoker()
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PhysicsCollide(data, physobj, entity)
	self:Remove()
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
