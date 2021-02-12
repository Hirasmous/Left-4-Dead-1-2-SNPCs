ENT.Base 			= "npc_vj_l4d2_boomer"
ENT.Type 			= "ai"
ENT.PrintName 		= "Boomer"
ENT.Author 			= "Hirasmous"
ENT.Contact 		= "http://vrejgaming.webs.com/"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Left 4 Dead"

if (CLIENT) then
        local Name = "Boomer"
        local LangName = "npc_vj_l4d_boomer"
        language.Add(LangName, Name)
        killicon.Add(LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
        language.Add("#"..LangName, Name)
        killicon.Add("#"..LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
end
