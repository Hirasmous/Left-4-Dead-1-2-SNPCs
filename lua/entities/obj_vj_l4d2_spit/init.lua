AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.TouchSound = Sound("SpitProjectile.Bounce")
ENT.TouchSoundv = 80
ENT.DeathIdleSoundv = 90
ENT.Decal = "vj_acidslime1"
ENT.AlreadyPaintedDecal = false
ENT.SoundPitch = 100
ENT.DoesRadiusDamage = true -- Should it do a blast damage when it hits something?
ENT.RadiusDamageRadius = 250 -- How far the damage go? The farther away it's from its enemy, the less damage it will do | Counted in world units
ENT.RadiusDamageUseRealisticRadius = false -- Should the damage decrease the farther away the enemy is from the position that the projectile hit?
ENT.RadiusDamage = 30 -- How much damage should it deal? Remember this is a radius damage, therefore it will do less damage the farther away the entity is from its enemy
ENT.RadiusDamageType = DMG_ACID -- Damage type
ENT.RadiusDamageForce = false -- Put the force amount it should apply | false = Don't apply any force
ENT.RadiusDamageForce_Up = false -- How much up force should it have? | false = Let the base automatically decide the force using RadiusDamageForce value
ENT.RadiusDamageDisableVisibilityCheck = false -- Should it disable the visibility check? | true = Disables the visibility check

ENT.SoundTbl_SpitterAcid = Sound("SpitterZombie.Acid")
ENT.SoundTbl_SpitterAcidTheme = Sound("vj_l4d2/music/terror/pileobile.mp3")
ENT.SoundTbl_Idle = {"player/spitter/swarm/spitter_acid_fadeout.mp3","player/spitter/swarm/spitter_acid_fadeout2.mp3"}
ENT.Owner = nil
ENT.AcidCount = 30
ENT.HasMusic = true
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
	self:SetNoDraw(false) 
    self:SetMaterial("models/flesh")    
    self.Owner = self:GetOwner()
         	
	-- Physics Functions
	local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
		//phys:SetMass(1)
		phys:SetBuoyancyRatio(0)
		phys:EnableDrag(false)
	end
	
	-- Misc Functions
	ParticleEffectAttach("spitter_projectile", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetBuoyancyRatio(0)
	phys:AddAngleVelocity( Vector( math.random(0,-1200,0)))
	phys:EnableDrag(false)	
	if phys:IsValid() then
		phys:EnableGravity(true) 
		phys:Wake()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PhysicsCollide(data,physobj,entity)
	ParticleEffect("spitter_projectile_explode",data.HitPos,Angle(0,0,0),nil)

	-- Removes
	self.Dead = true
	if self.idlesoundc then self.idlesoundc:Stop() end
	self:StopParticles()
    self:SetMoveType(MOVETYPE_NONE)
    self:DrawShadow(true)
	self:SetNoDraw(true)
	self.Owner = self:GetOwner()

	-- Damages
	local ent = data.HitEntity
	if ent:IsNPC() || ent:IsNextBot() || (ent:IsPlayer() && ent:Alive() && GetConVar("ai_ignoreplayers"):GetInt() == 0) then
		if ent:IsNPC() && (ent:Classify() == CLASS_ZOMBIE || ent.IsVJBaseSNPC && table.HasValue(ent.VJ_NPC_Class, "CLASS_ZOMBIE")) then return end
		ent:TakeDamage(25, self:GetOwner() or self, self:GetOwner() or self)
	end
	
	-- Effects
	self:DeathEffects()
	self:EmitSound( self.TouchSound,self.TouchSoundv,math.random(80,100))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DeathEffects(data,phys)
	local filter = RecipientFilter()
	filter:AddAllPlayers()
	for k, v in ipairs(ents.FindByClass("player")) do 
		for l, w in ipairs(ents.FindByClass("npc_vj_l4d*")) do
			if w.VJ_IsBeingControlled == true && w.VJ_TheController == v then
				filter:RemovePlayer(v)
			end
		end
	end

    if self.HasMusic == true then
	    self.cspIdleAcidLoop = CreateSound(self, "vj_l4d2/music/terror/pileobile.mp3",filter)
	    self.cspIdleAcidLoop:SetSoundLevel(70)  
	    self.cspIdleAcidLoop:PlayEx(1,100)  
	end

    for i = 1,self.AcidCount do
        timer.Simple(i *0.2,function()
	        if IsValid(self) then
		        local acid = ents.Create( "obj_vj_l4d2_acidpuddle" )
		        if self.AcidCount == 8 then
		            acid:SetPos( self:GetPos() + Vector( math.Rand( -37, 37 ), math.Rand( -39, 39 ), 0 ) )
		        elseif self.AcidCount == 30 then
		            acid:SetPos( self:GetPos() + Vector( math.Rand( -87, 87 ), math.Rand( -89, 89 ), 0 ) )
		        end
		        acid:SetOwner(self:GetOwner())
		        acid:Spawn()
		        acid:DropToFloor()
			end
		end)
    end 
    timer.Simple(6,function()
        if IsValid(acid) then
            acid:Remove()
        end
    end)   
    timer.Simple(7,function()
        if IsValid(self) then
        	if self.cspIdleAcidLoop && self.cspIdleAcidLoop:IsPlaying() then
                self.cspIdleAcidLoop:FadeOut(1)
            end
        end
    end)    
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnRemove()
	self.Dead = true
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
