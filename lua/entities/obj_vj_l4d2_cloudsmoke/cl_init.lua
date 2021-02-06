include('shared.lua')

language.Add("obj_vj_l4d2_cloudsmoke", "Gas Cloud")

function ENT:Draw()
	self.Entity:DrawModel()
end
