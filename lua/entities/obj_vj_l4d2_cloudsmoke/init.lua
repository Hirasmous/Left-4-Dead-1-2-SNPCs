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
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	local sphere = ents.FindInSphere(self:GetPos(),150)
	local owner = self:GetOwner()
	for k, v in ipairs(sphere) do
		if GetConVar("vj_l4d2_gasdamage"):GetInt() == 1 then
			if (v:IsNPC() or v:IsPlayer()) then
	    	    if math.random(1,4) == 1 then
	    		    VJ_EmitSound(v,VJ_PICKRANDOMTABLE({"ambient/voices/cough1.mp3","ambient/voices/cough2.mp3","ambient/voices/cough3.mp3","ambient/voices/cough4.mp3"}),70,math.random(100,100))
		            util.VJ_SphereDamage(self,self,v:GetPos(),10,30,DMG_NERVEGAS,true,true)
	    		end
	        end
	    end
    end  	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	ParticleEffect("smoker_smokecloud",self:GetPos() +self:GetUp()*50,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil) 
	self:SetNoDraw(true)
	self:DrawShadow(false)
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
