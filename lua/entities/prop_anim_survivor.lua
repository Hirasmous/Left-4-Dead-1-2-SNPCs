AddCSLuaFile()

ENT.Base = "base_entity"
ENT.Type = "anim"
ENT.RenderGroup = RENDERGROUP_BOTH

ENT.AutomaticFrameAdvance = true

ENT.Model = "models/survivors/L4D2_Human_base.mdl"

ENT.veloX = 0
ENT.veloY = 0

ENT.bodyX = 0
ENT.bodyY = 0

ENT.bIsBeingDragged = false
ENT.bIsBeingPounced = false
ENT.bIsBeingPounded = false
ENT.bIsBeingShredded = false

ENT.nextAnimTime = -1

if SERVER then
    function ENT:Initialize()
        self.nextAnimTime = CurTime()
    end

    function ENT:Think()
        if self.bIsBeingPounced then
            self:SetPoseParameter("move_x", self.veloX)
            self:SetPoseParameter("move_y", self.veloY)
        end

        if self.bIsBeingDragged then
            if self.nextAnimTime >= CurTime() then
                self:ResetSequence(self:LookupSequence("Idle_Tongued_Dragging_Ground"))
                self:ResetSequenceInfo()
                self:SetCycle(0)
                self.nextAnimTime = CurTime() + self:SequenceDuration(self:LookupSequence("Idle_Tongued_Dragging_Ground"))
            end
        end

        self:NextThink(0.01)
    end
end