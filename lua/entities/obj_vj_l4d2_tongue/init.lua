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
	phys:SetMass()
	phys:EnableDrag(false)
	phys:EnableGravity(false)
	phys:SetBuoyancyRatio(0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PhysicsCollide(data,physobj,entity)
	-- Removes
	self.Dead = true
	if self.idlesoundc then self.idlesoundc:Stop() end
	self:StopParticles()
	
	-- Damages
	local owner = self:GetOwner()

    if owner.HasEnemyIncapacitated == false then
        --for k, data.HitEntity in ipairs(ents.FindInSphere(self:GetPos(), owner.IncapacitationRange)) do
            --if Isdata.HitEntityalid(data.HitEntity) then
                if (data.HitEntity:IsPlayer() && data.HitEntity:Alive() && GetConVar("ai_ignoreplayers"):GetInt() == 0) || (data.HitEntity:IsNPC() && data.HitEntity ~= owner) then
                    if data.HitEntity:LookupBone("ValveBiped.Bip01_Pelvis") then
                        if (owner.VJ_IsBeingControlled && data.HitEntity:GetClass() ~= "obj_vj_bullseye" && owner:IsEntityAlly(data.HitEntity) == false) || owner:Disposition(data.HitEntity) == D_HT then
                            if not owner:CanIncapacitate(data.HitEntity) then return end
                            owner.HasEnemyIncapacitated = true
                            --owner.nextdata.HitEntityassalSound = CurTime()
                            --[[owner:SetLocaldata.HitEntityelocity(owner:GetForward() * 0)
                            owner:SetCustomCollisionCheck(true)
                            data.HitEntity:SetCustomCollisionCheck(true)
                            hook.Add("ShouldCollide", "smoker_EnableCollisions", function(ent1, ent2)
                                if (ent1 == owner and ent2 == data.HitEntity) then return false end
                            end)]]
                            owner.nextIncapSong = CurTime()
                            owner.pIncapacitatedEnemy = data.HitEntity

                            owner.EnemyMoveType = data.HitEntity:GetMoveType()

                            owner.MovementType = VJ_MOVETYPE_STATIONARY 

                            owner.pDragController = ents.Create("prop_physics")
                            owner.pDragController:SetModel("models/dav0r/hoverball.mdl")
							owner.pDragController:PhysicsInit(SOLID_VPHYSICS)
							owner.pDragController:SetMoveType(MOVETYPE_VPHYSICS)
							owner.pDragController:SetSolid(SOLID_VPHYSICS)
							owner.pDragController:SetCollisionGroup(1)
							owner.pDragController:GetPhysicsObject():EnableMotion(false)
                            owner.pDragController:SetPos(owner:GetBonePosition(owner:LookupBone("ValveBiped.Bip01_Head1")))
                            owner.pDragController:Spawn()
                            owner.pDragController:SetNoDraw(true)
                            owner.pDragController:SetParent(owner)

                            owner.pEnemyObj = ents.Create("prop_physics")
                            owner.pEnemyObj:SetModel("models/dav0r/hoverball.mdl")
							owner.pEnemyObj:PhysicsInit(SOLID_VPHYSICS)
							owner.pEnemyObj:SetMoveType(MOVETYPE_FLY)
							owner.pEnemyObj:SetSolid(SOLID_VPHYSICS)
							owner.pEnemyObj:SetCollisionGroup(1)
							owner.pEnemyObj:GetPhysicsObject():EnableMotion(false)
                            owner.pEnemyObj:SetPos(data.HitEntity:GetPos() + data.HitEntity:OBBCenter())
                            owner.pEnemyObj:Spawn()
                            owner.pEnemyObj:SetNoDraw(true)
                            owner.pEnemyObj:GetPhysicsObject():EnableGravity(false)
                            data.HitEntity:SetGravity(0)
                            data.HitEntity:SetMoveType(MOVETYPE_FLY)
                            constraint.NoCollide(data.HitEntity, owner.pEnemyObj, 1, 1)
                            constraint.Keepupright(owner.pEnemyObj, owner.pEnemyObj:GetAngles(), 0, 999999)
                            --owner.pEnemyObj:SetParent(data.HitEntity)
                            --owner.pEnemyObj:SetLocalPos(Vector(0, 0, 0))

                            owner.incapAngles = owner:GetAngles()

                            constraint.Rope(owner.pDragController, owner.pEnemyObj, 1, 1, owner.pDragController:GetPos(), owner.pEnemyObj:GetPos(), 50, 5, 0, 1, "particle/smoker_tongue_beam", false)

                           	if data.HitEntity:IsPlayer() then
                                --[[local weapons = data.HitEntity:GetWeapons()
                                owner.tblEnemyWeapons = {}
                                for l, w in ipairs(weapons) do
                                    owner.tblEnemyWeapons[table.Count(owner.tblEnemyWeapons) + 1] = w:GetClass()
                                end]]
                                if owner.VJ_IsBeingControlled == false && owner.VJ_TheController ~= data.HitEntity then
                                    data.HitEntity:SetObserverMode(OBS_MODE_CHASE)
                                    data.HitEntity:SpectateEntity(owner.pEnemyObj)
                                    data.HitEntity:DrawViewModel(false)
                                    data.HitEntity:DrawWorldModel(false)
                                end
                                data.HitEntity:StripWeapons()
                            end
                            data.HitEntity:SetNoDraw(true)
							local tr = util.TraceLine({start = owner:GetPos() + owner:GetUp() * owner:OBBMins():Distance(owner:OBBMaxs()), endpos = owner:GetPos() - owner:GetUp() * owner:OBBMaxs():Distance(owner:OBBMins()), filter = {owner, owner.pIncapacitatedEnemy}})
                            local ang = data.HitEntity:GetAngles()
                            local mdl = ents.Create("prop_anim_survivor")
                            mdl:SetModel("models/survivors/L4D2_Human_base.mdl")
                            mdl:SetPos(--[[tr.HitPos or ]]owner.pEnemyObj:GetPos())
                            mdl:SetAngles(ang)
                            mdl:Spawn()
                            mdl:SetRenderMode(1)
                            mdl:SetColor(Color(0, 0, 0, 0))
                            if data.HitEntity:IsPlayer() then
                                mdl:SetParent(owner.pEnemyObj)
                            else
                                mdl:SetParent(data.HitEntity)
                            end
                            mdl:ResetSequence(mdl:LookupSequence("Idle_Tongued_Dragging_Ground"))
                            mdl:ResetSequenceInfo()
                            mdl:SetCycle(0)
                            mdl:SetLocalPos(Vector(0, 0, 0))
                            mdl:SetLocalAngles(Angle(0, 0, 0))
                            timer.Simple(0.15, function()
                                if !IsValid(owner) then return end
                                net.Start("smoker_PounceEnemy")
                                    net.WriteString(tostring(owner:EntIndex()))
                                    net.WriteEntity(mdl)
                                    net.WriteString(data.HitEntity:GetModel())
                                net.Broadcast()
                            end)
                            --[[if data.HitEntity:IsPlayer() then
                                data.HitEntity:SetParent(owner)
                                data.HitEntity:SetLocalPos(Vector(0, 0, 0))
                            else
                                owner:SetParent(data.HitEntity)
                            end]]
                            --owner:SetAngles(data.HitEntity:GetAngles())
                            owner.pEnemyRagdoll = mdl
                            if data.HitEntity:IsNPC() then
                                if not data.HitEntity:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
                                    data.HitEntity:AddEFlags(EFL_NO_THINK_FUNCTION)
                                end
                            end
                            data.HitEntity:CallOnRemove("smoker_ClearParent", function(ent)
                                if IsValid(owner.pIncapacitatedEnemy) && owner.pIncapacitatedEnemy == ent then
                                    owner:SetParent(nil)
                                    net.Start("smoker_RemoveCSEnt")
                                        net.WriteString(tostring(owner:EntIndex()))
                                    net.Broadcast()
                                end
                                if ent:IsPlayer() then
                                    ent:SetParent(nil)
                                end
                            end)          
                            hook.Add("PlayerDeath", "player_RemoveCSEnt", function( victim, inflictor, attacker )
                                if victim == owner.pIncapacitatedEnemy then
                                    victim:SetParent(nil)
                                    victim:SetMoveType(owner.EnemyMoveType)
                                    victim:SetObserverMode(0)
                                    victim:DrawViewModel(true)
                                    victim:DrawWorldModel(true)
                                end
                            end)
                            owner:CallOnRemove("smoker_OnRemove", function(ent)
                                net.Start("smoker_RemoveCSEnt")
                                    net.WriteString(tostring(ent:EntIndex()))
                                net.Broadcast()
                                if ent.IncapSong ~= nil then
                                    ent.IncapSong:Stop()
                                end
                                if IsValid(ent.pEnemyObj) then
                                	ent.pEnemyObj:Remove()
                                end
                                local enemy = owner.pIncapacitatedEnemy
                                if IsValid(enemy) then
                                	enemy:SetMoveType(owner.EnemyMoveType)
                                    if enemy:IsPlayer() then
                                        enemy:SetPos(owner.vecLastPos)
                                        enemy:SetObserverMode(0)
                                        enemy:DrawViewModel(true)
                                        enemy:DrawWorldModel(true)
                                        if table.Count(owner.tblEnemyWeapons) > 0 then
                                            for i = 1, table.Count(owner.tblEnemyWeapons) do
                                                enemy:Give(owner.tblEnemyWeapons[i], true)
                                            end
                                        end
                                    end
                                    if enemy:GetNoDraw() == true then
                                        enemy:SetNoDraw(false)
                                    end
                                    if enemy:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
                                        enemy:RemoveEFlags(EFL_NO_THINK_FUNCTION)
                                    end
                                    if IsValid(owner.pEnemyRagdoll) then
                                        owner.pEnemyRagdoll:Remove()
                                    end
                                end
                            end)
                        end
                    end
                --end
            --end
        end
    end

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
