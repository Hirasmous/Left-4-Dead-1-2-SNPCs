AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_l4d2/jockey.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_l4d2_j_h")
ENT.HullType = HULL_WIDE_SHORT
ENT.FindEnemy_CanSeeThroughWalls = true
ENT.DisableWandering = true -- Disables wandering when the SNPC is idle
--ENT.Behavior = VJ_BEHAVIOR_PASSIVE_NATURE
ENT.DisableMakingSelfEnemyToNPCs = true
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"}

-- Damage & death
ENT.Bleeds = false
ENT.GodMode = true
ENT.AllowIgnition = false
ENT.RunAwayOnUnknownDamage = false
ENT.HasDeathRagdoll = false

-- Misc
ENT.HasMeleeAttack = false
ENT.HasSounds = false

ENT.ConstantlyFaceEnemy = false -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_Postures = "Moving" -- "Both" = Moving or standing | "Moving" = Only when moving | "Standing" = Only when standing

-- Custom 
ENT.HasGoalEntity = false
ENT.HasEnemy = false
ENT.tblEnemies = {}
ENT.tblGoalEnts = {}

function ENT:CustomOnInitialize()
	self:SetCollisionGroup(1)
	self:SetRenderMode(1)
	self:SetColor(Color(255, 255, 255, 0))
	self:SetNoDraw(true)
	self:DrawShadow(false)
	self:CapabilitiesRemove(CAP_MOVE_JUMP)
	self:SetOwner(self:GetOwner())
	self:SetPos(self:GetPos() + self:GetUp() * 25)
end

function ENT:Controller_Initialize(ply)
	self:ScheduleFinished()
	self:StopMoving()
	self:ClearSchedule()
	function self.VJ_TheControllerEntity:CustomOnStopControlling()
		net.Start("L4D2JockeyHUD")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
		net.Start("L4D2JockeyHUDGhost")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
	end
end

function ENT:ManageHUD(ply)
	if self.VJ_IsBeingControlled == true then
		net.Start("L4D2JockeyHUD")
			net.WriteBool(false)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
		net.Start("L4D2JockeyHUDGhost")
			net.WriteBool(true)
			net.WriteEntity(self)
			net.WriteEntity(ply)
		net.Send(ply)
	end
end

function ENT:CustomOnSchedule() 
	if self.VJ_IsBeingControlled == false then
		if self.HasGoalEntity == true then
			if !IsValid(self:GetTarget()) then return end
			local dist = self:GetPos():Distance(self:GetTarget():GetPos())
			if dist > 75 then
				self:VJ_TASK_GOTO_TARGET("TASK_RUN_PATH")
			end
		elseif self.HasEnemy == true then
			self:VJ_TASK_COVER_FROM_ENEMY("TASK_RUN_PATH")
		else
			self:SetSchedule(SCHED_RUN_RANDOM)
		end
	end
end

function ENT:HasValueInTable(tbl, ent)
	for i = 1, #tbl do
		if tbl[i][1] == ent then
			return true
		end
	end
	return false
end

function ENT:CustomOnThink()
	self:SetHealth(self:GetOwner():Health())
	self:ManageHUD(self.VJ_TheController)

	if self.VJ_IsBeingControlled == false then
		for k, v in ipairs(ents.FindInSphere(self:GetPos(), 2000)) do
			if v:IsNPC() || v:IsNextBot() || v:IsPlayer() && v:Alive() && GetConVar("ai_ignoreplayers"):GetInt() == 0 then
				if v ~= self && self:IsEntityAlly(v) == false then
					if self:HasValueInTable(self.tblEnemies, v) == false then
						local dist = self:GetPos():Distance(v:GetPos())
						self.tblEnemies[#self.tblEnemies + 1] = {v, dist}

						v:CallOnRemove("Jockey_CleantblEnemeis", function(ent)
							if IsValid(self) then
								if self:HasValueInTable(self.tblEnemies, ent) then
									table.remove(self.tblEnemies, table.KeyFromValue(self.tblEnemies, ent))
								end
							end
						end)

						table.sort(self.tblEnemies, function(a, b) return a[2] < b[2] end)
					end
				end
			end
		end

		if #self.tblEnemies > 1 then
			if IsValid(self.tblEnemies[2][1]) then
				self.HasEnemy = true
				self:VJ_DoSetEnemy(self.tblEnemies[2][1], false, false)
			else
				self.HasEnemy = false
			end
		else
			self.HasEnemy = false
		end

		for k, v in ipairs(ents.FindInSphere(self:GetPos(), 2000)) do
			if string.find(v:GetClass(), "witch_s") || string.find(v:GetClass(), "witch_w") || string.find(v:GetClass(), "l4d2_tank") || string.find(v:GetClass(), "obj_vj_l4d2_acidpuddle") || v.Base == "npc_vj_l4d2_witch_s" || v.Base == "npc_vj_l4d2_tank" then
				if self:HasValueInTable(self.tblGoalEnts, v) == false then
					local dist = self:GetPos():Distance(v:GetPos())
					self.tblGoalEnts[#self.tblGoalEnts + 1] = {v, dist}

					v:CallOnRemove("Jockey_CleantblGoalEnts", function(ent)
						if IsValid(self) then
							if self:HasValueInTable(self.tblGoalEnts, ent) then
								table.remove(self.tblGoalEnts, table.KeyFromValue(self.tblGoalEnts, ent))
							end
						end
					end)

					table.sort(self.tblGoalEnts, function(a, b) return a[2] < b[2] end)
				end
			end
		end
		if #self.tblGoalEnts > 0 then
			if IsValid(self.tblGoalEnts[1][1]) then
				self.HasGoalEntity = true
				self:SetTarget(self.tblGoalEnts[1][1])
			else
				self.HasGoalEntity = false
			end
		else
			self.HasGoalEntity = false
		end

		if self.HasGoalEntity == true then
			local dist = self:GetPos():Distance(self:GetTarget():GetPos())
			if self:GetTarget():GetClass() ~= "obj_vj_l4d2_acidpuddle" && dist < 75 then
				self:ScheduleFinished()
				self:StopMoving()
				self:ClearSchedule()
			end
		end
	end
end

/*-----------------------------------------------
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
