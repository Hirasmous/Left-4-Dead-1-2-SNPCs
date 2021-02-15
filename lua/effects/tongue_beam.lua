
EFFECT.Mat = Material("particle/smoker_tongue_beam")

function EFFECT:Init(data)
	self.StartPos = data:GetStart()
	self.EndPos = data:GetOrigin()

	self:SetRenderBoundsWS(self.StartPos, self.EndPos)
	self.DieTime = CurTime() + 0.1
end

function EFFECT:Think()
	if (CurTime() > self.DieTime) then
		return false
	end
	return true
end

function EFFECT:Render()
	render.SetMaterial(self.Mat)
	render.DrawBeam(self.StartPos, self.EndPos, 5, 1, 1, Color( 255, 255, 255 ))
end
