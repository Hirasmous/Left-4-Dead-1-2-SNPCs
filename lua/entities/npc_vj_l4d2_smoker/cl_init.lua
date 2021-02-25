include('shared.lua')

local victims = {}
net.Receive("Smoker_CreateTongue", function()
	local id = net.ReadString()
	local ent = net.ReadEntity()
	local par = net.ReadEntity()
	local prt = CreateParticleSystem(par, "smoker_tongue", 4, par:LookupAttachment("smoker_mouth"), Vector( 0, 0, 0 ))
	prt:SetControlPoint(1,  ent:GetPos())
	prt:StartEmission()
	victims[id] = {prt, ent}
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
	if table.Count(victims) > 0 then
		for k, v in pairs(victims) do
			if IsValid(victims[k][1]) && IsValid(victims[k][2]) then
				victims[k][1]:SetControlPoint(1, victims[k][2]:GetBonePosition(victims[k][2]:LookupBone("ValveBiped.shoulder_1")))
			end
		end
	end
end
