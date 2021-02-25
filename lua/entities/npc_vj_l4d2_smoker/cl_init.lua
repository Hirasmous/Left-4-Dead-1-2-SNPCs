include('shared.lua')

ENT.ParticleSystem = nil

function ENT:Initialize()
	--self:SetBonePosition(self:LookupBone("ValveBiped.Bip01_Head1"), Vector(0, 0, 0), Angle(0, 0, 0))
	--[[timer.Simple(1, function()
		local tngPt = self:GetNWEntity("smoker_tngCtrl")
		tngPt:SetParent(self, self:LookupAttachment("tongue_ctrl"))
		tngPt:AddEffects(EF_BONEMERGE)

		self:ManipulateBonePosition(28, Vector(-1000, 0, 0))
	end)]]
	--prt:Render()
end

local victims = {}
net.Receive("Smoker_CreateTongue", function()
	local id = net.ReadString()
	local ent = net.ReadEntity()
	local par = net.ReadEntity()
	local prt = CreateParticleSystem(par, "smoker_tongue", 4, par:LookupAttachment("smoker_mouth"), Vector( 0, 0, 0 ))
	--prt:SetControlPoint(0, Vector(0, 0, 50))
	prt:SetControlPoint(1,  ent:GetPos())
	--[[prt:SetControlPoint(2, Vector(0, 0, 50))
	prt:SetControlPoint(63, Vector(0, 0, 50))]]
	--prt:SetControlPointEntity(1, ents.FindByClass("player")[1])
	prt:StartEmission()
	victims[id] = {prt, ent}
	--self.ParticleSystem = prt 
	--[[timer.Simple(5, function()
		prt:StopEmissionAndDestroyImmediately()
	end)]]
end)

net.Receive("Smoker_DestroyTongue", function()
	local id = net.ReadString()
	if table.Count(victims) > 0 then
		if table.HasValue(victims, victims[id]) then
			victims[id][1]:StopEmissionAndDestroyImmediately()
			table.remove(victims, id)
		end
	end
end)

function ENT:Think()
	--self.ParticleSystem:SetControlPoint(1, ents.FindByClass("player")[1]:GetPos())
	if table.Count(victims) > 0 then
		for k, v in pairs(victims) do
			if IsValid(victims[k][1]) && IsValid(victims[k][2]) then
				victims[k][1]:SetControlPoint(1, victims[k][2]:GetBonePosition(victims[k][2]:LookupBone("ValveBiped.shoulder_1")))
			end
		end
	end
	--[[if IsValid( self:GetNWEntity("Smoker"..self:EntIndex().."_IncapacitatedEnemy") ) then
		if IsValid( self:GetNWEntity("Smoker"..self:EntIndex().."_TongueAttach") ) then
			self:SetBonePosition(28, self.pEnemyTongueAttach, Angle(0, 0, 0))
		end
	end]]

	--[[if IsValid(self:GetNWEntity("smoker_tngCtrl")) then
		local ang = self:GetAngles()
		local tngPt = self:GetNWEntity("smoker_tngCtrl")
		tngPt:SetLocalPos(Vector( 30 + math.sin(CurTime()*5.5) * 30, 0, 9))
		tngPt:SetAngles(Angle(ang.x - 90 + math.sin(CurTime()*5.5) * 30, ang.y, ang.z))
	end]]

	--local ang = self:GetAngles()
	--local head = self:GetBonePosition(self:LookupBone("tongue_controller"))
	--self:SetBonePosition(self:LookupBone("tongue_controller"), head, Angle(ang.x + 180--[[ - 90 + math.sin(CurTime()*5.5) * 30]], ang.y, ang.z))
end