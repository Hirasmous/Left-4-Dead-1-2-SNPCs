include("shared.lua")

local CSModels = {}
net.Receive("hunter_PounceEnemy", function()
    local id = net.ReadString()
    local ent = net.ReadEntity()
    CSModels[id] = {}
    CSModels[id][1] = ClientsideModel(net.ReadString())
    CSModels[id][1]:SetParent(ent)
    CSModels[id][1]:AddEffects(EF_BONEMERGE)
    CSModels[id][2] = ent
end)


function ENT:Think()
	if table.Count(CSModels) > 0 then
		for k, v in pairs(CSModels) do
			if IsValid(CSModels[k][1]) then
				CSModels[k][1]:SetParent(CSModels[k][2])
				CSModels[k][1]:AddEffects(EF_BONEMERGE)
			end
		end
	end
end

net.Receive("hunter_RemoveCSEnt", function()
	local id = net.ReadString()
    if table.Count(CSModels) > 0 then
        if table.HasValue(CSModels, CSModels[id]) then
            CSModels[id][1]:Remove()
            table.remove(CSModels, id)
        end
    end
end)