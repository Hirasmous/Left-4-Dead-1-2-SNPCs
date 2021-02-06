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
ENT.Damage = 45
ENT.DamageDistance = 200
ENT.Dead = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	ParticleEffect("spitter_areaofdenial",self:GetPos() +self:GetUp()*2,Angle(math.Rand(0,360),math.Rand(0,360),math.Rand(0,360)),nil) 
	self:SetNoDraw(true)
	self:DrawShadow(false)
	self:DropToFloor()
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
		if (v:IsNPC() or v:IsPlayer()) then
    	    if math.random(1,5) == 5 then
    		    VJ_EmitSound(self,VJ_PICKRANDOMTABLE({"player/pz/hit/zombie_slice_1.wav","player/pz/hit/zombie_slice_2.wav","player/pz/hit/zombie_slice_3.wav","player/pz/hit/zombie_slice_4.wav","player/pz/hit/zombie_slice_5.wav","player/pz/hit/zombie_slice_6.wav"}),65,math.random(100,100))
	            util.VJ_SphereDamage(self,self,v:GetPos(),10,5,DMG_ACID,true,true)
    		end
        end
    end
end
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/