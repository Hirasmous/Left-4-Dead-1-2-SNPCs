AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.DoesRadiusDamage = true -- Should it do a blast damage when it hits something?
ENT.RadiusDamageRadius = 300 -- How far the damage go? The farther away it's from its enemy, the less damage it will do | Counted in world units
ENT.RadiusDamageUseRealisticRadius = true -- Should the damage decrease the farther away the enemy is from the position that the projectile hit?
ENT.RadiusDamage = 10 -- How much damage should it deal? Remember this is a radius damage, therefore it will do less damage the farther away the entity is from its enemy
ENT.RadiusDamageType = DMG_NERVEGAS -- Damage type
ENT.Model = {"models/spitball_medium.mdl"} -- The models it should spawn with | Picks a random one from the table} -- The models it should spawn with | Picks a random one from the table

ENT.SentPlayers = {}
ENT.NextCoughT = CurTime()
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	local owner = self:GetOwner()
	for k, v in ipairs(ents.FindInSphere(self:GetPos(), 200)) do
		if (v:IsPlayer()) then
			if v:Alive() then
				if CurTime() >= self.NextCoughT then
					VJ_EmitSound(v,VJ_PICKRANDOMTABLE({"ambient/voices/cough1.wav","ambient/voices/cough2.wav","ambient/voices/cough3.wav","ambient/voices/cough4.wav"}),70,math.random(100,100))
					self.NextCoughT = CurTime() +1.5
				end
				local dist = v:GetPos():Distance(self:GetPos())
				val = math.Remap(dist, -200, 0, -1, -0.15)
				if not table.HasValue(self.SentPlayers, v) then
					net.Start("Smoker_CloudSmokeInit")
						net.WriteString(tostring(self:EntIndex()))
						net.WriteVector(self:GetPos())
					net.Send(v)
					self.SentPlayers[#self.SentPlayers + 1] = v
				end
			end
		end
	end 
	self:NextThink(CurTime())
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	ParticleEffect("smoker_smokecloud",self:GetPos() +self:GetUp()*50,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil) 
	self:SetNoDraw(true)
	self:DrawShadow(false)
	self:SetOwner(self:GetOwner())
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PhysicsCollide(data,physobj,entity)
	if self.idlesoundc then self.idlesoundc:Stop() end
	self:StopParticles()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:EnableGravity(true)
	phys:EnableDrag(false)
	phys:SetBuoyancyRatio(0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnRemove()
	if self.idlesoundc then self.idlesoundc:Stop() end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
