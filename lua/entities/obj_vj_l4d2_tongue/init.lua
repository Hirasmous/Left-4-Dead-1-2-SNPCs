AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.TouchSound = Sound("player/smoker/hit/tongue_hit_1.wav")
ENT.SoundTbl_Idle = {"player/smoker/attack/tongue_fly_loop.wav"}
ENT.TouchSoundv = 80
ENT.DeathIdleSoundv = 90
ENT.Decal = "vj_acidslime1"
ENT.AlreadyPaintedDecal = false

-- Custom --
ENT.Enemy_IsStrapped = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetModel("models/spitball_medium.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetMoveCollide( MOVETYPE_VPHYSICS )
	self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
	self:SetSolid(SOLID_CUSTOM)
	self:SetOwner(self:GetOwner())
	self:DrawShadow(false)
	self:SetNoDraw(true) 
    self:SetMaterial("models/infected/hulk/ci_burning")
	
	-- Misc Functions
	ParticleEffectAttach("smoker_tongue_fall", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetMass(1)
	phys:EnableDrag(false)
	phys:EnableGravity(false)
	phys:SetBuoyancyRatio(0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:StrapEnemy(v)
	if self.Enemy_IsStrapped == true then
	    local tr = util.TraceLine({start = self:GetPos() + self:GetUp() * self:OBBMins():Distance(self:OBBMaxs()), endpos = self:GetPos() - self:GetUp() * self:OBBMaxs():Distance(self:OBBMins()), filter = {self, v}})
		local mdl = ents.Create("prop_dynamic")
	    mdl:SetModel("models/vj_l4d2/smoker_tongue_attach.mdl")
	    mdl:SetPos(tr.HitPos)
	    mdl:Spawn()
	    mdl:Activate()
	    mdl:SetRenderMode(RENDERMODE_NORMAL)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PhysicsCollide(data,physobj)
	-- Removes
	self.Dead = true
	if self.idlesoundc then self.idlesoundc:Stop() end
	self:StopParticles()
	
	-- Damages
	if self:GetOwner() == NULL then util.VJ_SphereDamage(self,self,self:GetPos(),50,50,DMG_GENERIC,true,true) else
	util.VJ_SphereDamage(self:GetOwner(),self,self:GetPos(),50,50,DMG_GENERIC,true,true) end
	
	-- Effects
	self:EmitSound( self.TouchSound,self.TouchSoundv,math.random(80,100))
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