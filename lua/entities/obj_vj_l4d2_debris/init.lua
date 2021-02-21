AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
--------------------------------------------------*/
ENT.Model = {"models/props_debris/concrete_chunk01a.mdl"} -- The models it should spawn with | Picks a random one from the table} -- The models it should spawn with | Picks a random one from the table
ENT.PhysicsInitType = SOLID_VPHYSICS
ENT.MoveType = MOVETYPE_VPHYSICS -- Move type, recommended to keep it as it is
ENT.MoveCollideType = COLLISION_GROUP_PROJECTILE -- Move type | Some examples: MOVECOLLIDE_FLY_BOUNCE, MOVECOLLIDE_FLY_SLIDE
ENT.CollisionGroupType = COLLISION_GROUP_PROJECTILE -- Collision type, recommended to keep it as it is
ENT.SolidType = SOLID_CUSTOM -- Solid type, recommended to keep it as it is
ENT.ShouldSetOwner = true -- Should it set a owner?
ENT.DoesDirectDamage = true -- Should it do a direct damage when it hits something?
ENT.DirectDamage = 35 -- How much damage should it do when it hits something
ENT.DirectDamageType = DMG_CRUSH  -- Damage type
ENT.ShakeWorldOnDeath = true -- Should the world shake when the projectile hits something?
ENT.ShakeWorldOnDeathAmplitude = 16 -- How much the screen will shake | From 1 to 16, 1 = really low 16 = really high
ENT.ShakeWorldOnDeathRadius = 3000 -- How far the screen shake goes, in world units
ENT.ShakeWorldOnDeathtDuration = 1 -- How long the screen shake will last, in seconds
ENT.ShakeWorldOnDeathFrequency = 200 -- The frequency
ENT.DecalTbl_DeathDecals = {"ManhackCut"}
ENT.SoundTbl_Idle = {"HulkZombie.Throw.FlyLoop"}
ENT.SoundTbl_OnCollide = {"player/tank/hit/thrown_projectile_hit_01.mp3"}
ENT.MassAmount = 5
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetMassAmount()
	return self.MassAmount
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetMassAmount(mass)
	self.MassAmount = mass
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:SetBuoyancyRatio(2)
	phys:EnableDrag(false)	
    phys:EnableGravity(true) 
    phys:SetMass(self:GetMassAmount())                     
    phys:Wake() 
    phys:AddAngleVelocity( Vector( math.random(-200,-120,110)))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	ParticleEffectAttach("tank_rock_throw_rock", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DeathEffects(data,phys)
	ParticleEffect("tank_rock_throw_impact",data.HitPos,Angle(0,0,0),nil)     
        local chunk1 = ents.Create("prop_physics")
	chunk1:SetModel("models/props_debris/concrete_chunk02a.mdl")  
        chunk1:SetPos(self:GetPos())
        chunk1:Spawn()
	chunk1:SetCollisionGroup(COLLISION_GROUP_NONE)
        local chunk1phys = chunk1:GetPhysicsObject()
	if IsValid(chunk1phys) then
		chunk1phys:SetVelocity(self:GetUp() *1)
	end
        local chunk2 = ents.Create("prop_physics")
	chunk2:SetModel("models/props_debris/concrete_chunk08a.mdl")  
        chunk2:SetPos(self:GetPos())
        chunk2:Spawn()
	chunk2:SetCollisionGroup(COLLISION_GROUP_NONE)
        local chunk2phys = chunk2:GetPhysicsObject()
	if IsValid(chunk2phys) then
		chunk2phys:SetVelocity(self:GetUp() *1)
	end
        local chunk3 = ents.Create("prop_physics")
	chunk3:SetModel("models/props_debris/concrete_chunk09a.mdl")  
        chunk3:SetPos(self:GetPos())
        chunk3:Spawn()
	chunk3:SetCollisionGroup(COLLISION_GROUP_NONE)
        local chunk3phys = chunk3:GetPhysicsObject()
	if IsValid(chunk3phys) then
		chunk3phys:SetVelocity(self:GetUp() *1)
	end
        local chunk4 = ents.Create("prop_physics")
	chunk4:SetModel("models/props_debris/concrete_chunk02a.mdl")  
        chunk4:SetPos(self:GetPos())
        chunk4:Spawn()
	chunk4:SetCollisionGroup(COLLISION_GROUP_NONE)
        local chunk4phys = chunk4:GetPhysicsObject()
	if IsValid(chunk4phys) then
		chunk4phys:SetVelocity(self:GetUp() *1)
	end
        local chunk5 = ents.Create("prop_physics")
	chunk5:SetModel("models/props_debris/concrete_chunk02a.mdl")  
        chunk5:SetPos(self:GetPos())
        chunk5:Spawn()
	chunk5:SetCollisionGroup(COLLISION_GROUP_NONE)
        local chunk5phys = chunk5:GetPhysicsObject()
	if IsValid(chunk5phys) then
		chunk5phys:SetVelocity(self:GetUp() *1)
	end 
        timer.Simple(10,function() if IsValid(chunk1) then chunk1:Remove() end end)    
        timer.Simple(10,function() if IsValid(chunk2) then chunk2:Remove() end end)
        timer.Simple(10,function() if IsValid(chunk3) then chunk3:Remove() end end) 
        timer.Simple(10,function() if IsValid(chunk4) then chunk4:Remove() end end)            
        timer.Simple(10,function() if IsValid(chunk5) then chunk5:Remove() end end)    
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
