ENT.Base 			= "npc_vj_l4d2_tank"
ENT.Type 			= "ai"
ENT.PrintName 		= "Tank"
ENT.Author 			= "Hirasmous"
ENT.Contact 		= "http://vrejgaming.webs.com/"
ENT.Purpose 		= "Spawn it and fight with it! it will kill you"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Left 4 Dead"

if (CLIENT) then
    local Name = "Tank"
    local LangName = "npc_vj_l4d_tank"
    language.Add(LangName, Name)
    language.Add("#"..LangName, Name)     
end
