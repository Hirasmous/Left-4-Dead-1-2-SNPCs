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
ENT.AlreadyPaintedDecal = false
ENT.Damage = 45
ENT.DamageDistance = 200
ENT.Dead = false
ENT.DecalTbl_DeathDecals = {"VJ_Blood_Red"} -- Decals that paint when the projectile dies | It picks a random one from this table

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Initialize()
	self:SetModel("models/spitball_medium.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetMoveCollide( MOVETYPE_VPHYSICS )
	self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
	self:SetSolid(SOLID_CUSTOM)
	self:SetOwner(self:GetOwner())
	self:DrawShadow(false)
	self:SetNoDraw(true) 
	
	-- Physics Functions
	local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
		phys:SetMass(1)
		phys:SetBuoyancyRatio(0)
		phys:EnableDrag(false)
                phys:EnableGravity(true)
	end
	
	-- Misc Functions
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetBuoyancyRatio(0)
	phys:AddAngleVelocity( Vector( math.random(-2400,-2400,0)))
	phys:EnableDrag(false)	
	if phys:IsValid() then
		phys:EnableGravity(false) 
		phys:Wake()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PhysicsCollide(data,physobj,entity)
	-- Removes
	self.Dead = true
	if self.idlesoundc then self.idlesoundc:Stop() end
	self:StopParticles()

    util.Decal(VJ_PICKRANDOMTABLE(self.DecalTbl_DeathDecals), data.HitPos +data.HitNormal, data.HitPos -data.HitNormal)
    ParticleEffect("blood_impact_boomer_01",self:GetPos() +self:GetUp()*0,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil)        
    ParticleEffect("blood_impact_red_01",self:GetPos() +self:GetUp()*0,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil)        
    ParticleEffect("blood_impact_infected_01",self:GetPos() +self:GetUp()*0,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil)
	
	-- Effects
	self:Remove()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnRemove()
	self.Dead = true
	if self.idlesoundc then self.idlesoundc:Stop() end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/