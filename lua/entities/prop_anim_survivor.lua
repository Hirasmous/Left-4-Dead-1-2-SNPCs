AddCSLuaFile()

--Shared
ENT.Base = "base_anim"
ENT.Type = "anim"
ENT.RenderGroup = RENDERGROUP_BOTH

ENT.AutomaticFrameAdvance = true

--Server
--ENT.Model = "models/survivors/L4D2_Human_base.mdl"
ENT.Owner = nil

ENT.moveX = 0
ENT.moveY = 0

ENT.bodyX = 0
ENT.bodyY = 0

ENT.bIsBeingDragged = false
ENT.bIsBeingPounced = false
ENT.bIsBeingPounded = false
ENT.bIsBeingShredded = false

if SERVER then
	function ENT:Initialize()
		self.Owner = self:GetOwner()
	end

	function ENT:Think()
		if self.bIsBeingPounced then
			self:SetPoseParameter("move_x", math.Round(self.moveX))
			self:SetPoseParameter("move_y", math.Round(self.moveY))
			self:SetPoseParameter("jockey_x", math.Round(self.moveX))
			self:SetPoseParameter("jockey_y", math.Round(self.moveY))
		end

		if self:GetParent():GetClass() == self:GetClass() then
			self:SetCycle(self:GetParent():GetCycle())
		end

		self:NextThink(CurTime())
		return true
	end
end
