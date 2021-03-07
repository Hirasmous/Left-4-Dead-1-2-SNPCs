AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. *** 
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.TouchSound = Sound("player/smoker/hit/tongue_hit_1.mp3")
ENT.SoundTbl_Idle = {"player/smoker/attack/tongue_fly_loop.mp3"}
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
	self.StartPos = self:GetPos()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetMass()
	phys:EnableDrag(false)
	phys:EnableGravity(false)
	phys:SetBuoyancyRatio(0)
end

function ENT:Think()
	local owner = self:GetOwner()
	
	if !IsValid(owner) then 
		self:Remove()
	end
	
	if IsValid(self) && IsValid(owner) then
		util.ParticleTracerEx("smoker_tongue_new", owner:GetPos(), self:GetPos(), false, owner:EntIndex(), 3)
	end

	--remove @ max travel dist
	local dist = self:GetPos():Distance(self.StartPos)
	if IsValid(owner) then
		if dist > owner.RangeDistance + 100 then
			self:Remove()
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PhysicsCollide(data, physobj, entity)
	local owner = self:GetOwner()

	if IsValid(self) then
		if IsValid(data.HitEntity) then
			VJ_CreateSound(data.HitEntity,VJ_PICKRANDOMTABLE({"player/smoker/voice/attack/smoker_tonguehit_01.mp3","player/smoker/voice/attack/smoker_tonguehit_02.mp3"}),95,owner:VJ_DecideSoundPitch(100,100))
		elseif !IsValid(data.HitEntity) then
			if owner.HasEnemyIncapacitated == false then
				owner.IsTakingCover = true
				timer.Simple(2,function()
					if IsValid(owner) then
						owner.IsTakingCover = true
					end
				end)
				timer.Simple(owner.NextRangeAttackTime,function()
					if IsValid(owner) then
						owner.IsTakingCover = false
					end
				end)
			end
			util.ParticleTracerEx("smoker_tongue_new_fall", owner:GetPos(), self:GetPos(), false, owner:EntIndex(), 3)
			VJ_CreateSound(self,VJ_PICKRANDOMTABLE({"player/smoker/hit/tongue_hit_1.mp3"}),95,owner:VJ_DecideSoundPitch(100,100))
		end
	end

	-- Removes
	self.Dead = false
	if self.idlesoundc then self.idlesoundc:Stop() end
	self:StopParticles()

	local tbControllers = {}
	for _, x in ipairs(ents.FindByClass("npc_vj_l4d*")) do
		if x.VJ_IsBeingControlled then
			tbControllers[table.Count(tbControllers) + 1] = x.VJ_TheController
		end
	end
    
	if owner.HasEnemyIncapacitated == false then
		if (data.HitEntity:IsPlayer() && data.HitEntity:Alive() && GetConVar("ai_ignoreplayers"):GetInt() == 0 && not table.HasValue(tbControllers, data.HitEntity)) || (data.HitEntity:IsNPC() && data.HitEntity ~= owner) then
			if data.HitEntity:LookupBone("ValveBiped.Bip01_Pelvis") then
				if (owner.VJ_IsBeingControlled && data.HitEntity:GetClass() ~= "obj_vj_bullseye" && owner:IsEntityAlly(data.HitEntity) == false) || owner:Disposition(data.HitEntity) == D_HT then
					if not owner:CanIncapacitate(data.HitEntity) then return end
					if owner.HasEnemyIncapacitated then return end
					owner.HasEnemyIncapacitated = true

					local enemy = data.HitEntity

					--custom vars 
					owner.nextIncapSong = CurTime()
					owner.pIncapacitatedEnemy = enemy
					owner.incapAngles = owner:GetAngles()
					owner.EnemyMoveType = enemy:GetMoveType()
					owner.vecEnemyStartPos = enemy:GetPos()
					if enemy:IsOnGround() then
						owner.lastEnemyGround = CurTime()
						owner.lastEnemyFloat = -1
					else
						owner.lastEnemyFloat = CurTime()
						owner.lastEnemyGround = -1
					end

					if enemy:IsPlayer() then
						enemy:SetMoveType(MOVETYPE_CUSTOM)
					else
						enemy:SetNoDraw(true)
					end

					--VJ vars
					owner.MovementType = VJ_MOVETYPE_STATIONARY
					if enemy.IsVJBaseSNPC == true then
						owner.EnemyVJMoveType = enemy.MovementType
					end

					local dragObj = ents.Create("prop_physics")
					dragObj:SetModel("models/dav0r/hoverball.mdl")
					dragObj:PhysicsInit(SOLID_BBOX)
					dragObj:SetMoveType(MOVETYPE_FLY)
					dragObj:SetSolid(SOLID_BBOX)
					dragObj:SetCollisionGroup(1)
					dragObj:SetPos(enemy:GetPos() + enemy:OBBCenter())
					dragObj:DrawShadow(false) 
					dragObj:SetNoDraw(true)
					dragObj:SetRenderMode(1)
					dragObj:Spawn()
					owner.pEnemyObj = dragObj
					enemy:SetGravity(0)
					enemy:SetMoveType(MOVETYPE_FLY)
					constraint.NoCollide(enemy, dragObj, 1, 1)
					constraint.Keepupright(dragObj, dragObj:GetAngles(), 0, 999999)

					hook.Add("PhysgunPickup", "smoker_AllowDragObjPickup", function(ply, ent)
						if ent == owner.pEnemyObj then
							return false
						end
					end)

					owner.vecEnemyPos = dragObj:GetPos()
					owner.nextEnemyPosCheck = CurTime() + 2
					owner.nextTongueSpawn = CurTime()
					owner.lastEFlagsReset = CurTime()
					owner.nextSegmentCreation = CurTime()

					for k, v in ipairs(ents.FindByClass("player")) do
						if data.HitEntity:IsNPC() then
							VJ_CreateSound(v,"vj_l4d2/music/tags/tonguetiedhit.mp3",95,owner:VJ_DecideSoundPitch(100,100))
						end
					end

					owner:SpawnCamera(dragObj,15)

					if enemy:IsPlayer() then
						owner:Incap_Lighting(enemy, false, owner.pEnemyObj)
						owner.Light1:SetKeyValue('lightcolor', "255 255 255 255")
						owner.Light1:SetKeyValue('lightfov', '50')
						timer.Simple(0, function()
							local own = owner 
							local ene = enemy
							timer.Simple(1.5, function()
								if (!IsValid(owner) || !IsValid(enemy) || enemy:Alive() == false) then return end
								enemy:SetNoDraw(true)
								owner:SmokerIncapacitate(enemy)
								if IsValid(owner.pEnemyTongueAttach) then
									owner.pEnemyTongueAttach:SetNoDraw(false)
								end
								if IsValid(owner.pEnemyRagdoll) then
									owner:IncapacitateEnemy(enemy, owner.pEnemyRagdoll)
								end

							end)
						end)
					elseif enemy:IsNPC() then
						if GetConVar("vj_l4d2_npcs_dropweapons"):GetInt() == 0 then
							if IsValid(enemy:GetActiveWeapon()) then
								enemy:GetActiveWeapon():SetNoDraw(true)
							end
						else
							enemy:DropWeapon()
						end
						if not enemy:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
							enemy:AddEFlags(EFL_NO_THINK_FUNCTION)
						end
					end
				 
					local mdl = ents.Create("prop_anim_survivor")
					mdl:SetModel("models/survivors/L4D2_Human_base.mdl")
					mdl:SetPos(dragObj:GetPos())
					mdl:SetAngles(enemy:GetAngles())
					mdl:SetRenderMode(1)
					mdl:SetColor(Color(0, 0, 0, 0))
					mdl:DrawShadow(false)
					mdl:Spawn()
					if enemy:IsPlayer() then
						mdl:SetParent(dragObj)
					else
						mdl:SetParent(enemy)
					end
					mdl:ResetSequence(mdl:LookupSequence("Idle_Tongued_Dragging_Ground"))
					mdl:ResetSequenceInfo()
					mdl:SetCycle(0)
					mdl:SetLocalPos(Vector(0, 0, -10))
					mdl:SetLocalAngles(Angle(0, 0, 0))
					if not enemy:IsPlayer() then
						owner:IncapacitateEnemy(enemy, mdl)
					end

					owner.pEnemyRagdoll = mdl

					local tongue = ents.Create("prop_anim_survivor")
					tongue:SetModel("models/vj_l4d2/smoker_tongue_attach.mdl")
					tongue:SetPos(owner.pEnemyObj:GetPos())
					tongue:SetAngles(enemy:GetAngles())
					tongue:Spawn()
					if enemy:IsPlayer() then
						tongue:SetNoDraw(true)
					end
					tongue:SetParent(mdl)
					tongue:AddEffects(EF_BONEMERGE)
					tongue:ResetSequence(tongue:LookupSequence("NamVet_Idle_Tongued_Dragging_Ground"))
					tongue:ResetSequenceInfo()
					tongue:SetCycle(0)
					tongue:SetLocalPos(Vector(0, 0, 0))
					tongue:SetLocalAngles(Angle(0, 0, 0))  
					mdl:DeleteOnRemove(tongue)

					timer.Simple(0, function()
						local own = owner
						local tng = tongue
						timer.Simple(0.1, function()
							if !IsValid(owner) then return end
							if !IsValid(enemy) || enemy:Health() <= 0 then return end
							net.Start("Smoker_CreateTongue")
								net.WriteString(tostring(owner:EntIndex()))
								net.WriteEntity(tng)
								net.WriteEntity(own)
							net.Broadcast()
						end)
					end)

					owner.pEnemyTongueAttach = tongue

					local tngCol = ents.Create("prop_dynamic")
					tngCol:SetModel("models/dav0r/camera.mdl")
					tngCol:SetPos(owner:GetAttachment(3).Pos)
					tngCol:DrawShadow(false)
					tngCol:SetNoDraw(true)
					tngCol:Spawn()
					tngCol:SetOwner(owner)
					owner.pTongueController = tngCol

					--enemy fail-safes
					enemy:CallOnRemove("smoker_ClearParent", function(ent)
						if IsValid(owner.pIncapacitatedEnemy) && owner.pIncapacitatedEnemy == ent then
							owner:SetParent(nil)
							net.Start("infected_RemoveCSEnt")
								net.WriteString(tostring(owner:EntIndex()))
							net.Broadcast()
						end
						if ent:IsPlayer() then
							ent:SetParent(nil)
						end
					end)

					hook.Add("PlayerDeath", "player_RemoveCSEnt", function(victim, inflictor, attacker)
						if victim == owner.pIncapacitatedEnemy then
							victim:SetParent(nil)
							victim:SetMoveType(owner.EnemyMoveType)
							victim:SetObserverMode(0)
							victim:DrawViewModel(true)
							victim:DrawWorldModel(true)
						end
					end)

					owner:CallOnRemove("smoker_OnRemove", function(ent)
						if ent.IncapSong ~= nil then
							ent.IncapSong:Stop()
						end
						if IsValid(ent.pEnemyObj) then
							ent.pEnemyObj:Remove()
						end
						if IsValid(ent.pTongueController) then
							ent.pTongueController:Remove()
						end
						local ene = ent.pIncapacitatedEnemy
						if IsValid(ene) then
							ene:SetMoveType(ent.EnemyMoveType)
							if ene:IsPlayer() then
								ene:SetObserverMode(0)
								ene:DrawViewModel(true)
								ene:DrawWorldModel(true)
								if table.Count(owner.tblEnemyWeapons) > 0 then
									for i = 1, table.Count(owner.tblEnemyWeapons) do
										local tbl = owner.tblEnemyWeapons
										ene:Give(tbl[i][1], true)
										local wpn = ene:GetWeapon(tbl[i][1])
										if tbl[i][2][1] ~= -1 then
											wpn:SetClip1(tbl[i][2][2])
										end
										if tbl[i][3][1] ~= -1 then
											wpn:SetClip2(tbl[i][3][2])
										end
									end
								end
								for a, c in ipairs(owner.tblEnemyAmmo) do
									ene:GiveAmmo(c, game.GetAmmoName(a), true)
								end
							end
							if ene:GetNoDraw() == true then
								ene:SetNoDraw(false)
							end
							if ene:IsEFlagSet(EFL_NO_THINK_FUNCTION) then
								ene:RemoveEFlags(EFL_NO_THINK_FUNCTION)
							end
							if IsValid(ent.pEnemyRagdoll) then
								ent.pEnemyRagdoll:Remove()
							end
						end
					end)
				end
			end
		end
	end
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
