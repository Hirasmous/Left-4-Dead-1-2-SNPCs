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
ENT.bIsVomit = false

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
	if string.find(self:GetOwner():GetClass(), "boome") then
		self.DecalTbl_DeathDecals = {"VJ_Blood_Orange"}
	end
	
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
	local pos = data.HitPos
	pos = Vector(pos.x + math.random(-30, 30), pos.y + math.random(-30, 30), pos.z)
	util.Decal(VJ_PICKRANDOMTABLE(self.DecalTbl_DeathDecals), pos +data.HitNormal, pos -data.HitNormal)
	ParticleEffect("blood_impact_boomer_01",self:GetPos() +self:GetUp()*0,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil)		
	ParticleEffect("blood_impact_red_01",self:GetPos() +self:GetUp()*0,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil)		
	ParticleEffect("blood_impact_infected_01",self:GetPos() +self:GetUp()*0,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil)
	
	if self.bIsVomit == true && IsValid(self:GetOwner()) then
		local x = data.HitEntity
		if (x:IsPlayer() or x:IsNPC()) && self:GetOwner().Enemy_IsPuked == true && (self:GetOwner().VJ_IsBeingControlled && x:GetClass() ~= "obj_vj_bullseye" && self:GetOwner():IsEntityAlly(x) == false) || self:GetOwner():Disposition(x) == D_HT then
			self:GetOwner():VomitEnemy(x)
		end
	end

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
