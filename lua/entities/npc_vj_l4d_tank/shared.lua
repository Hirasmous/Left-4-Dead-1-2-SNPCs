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

if CLIENT then
	net.Receive("L4DTankHUD",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","L4DTankScreen",function()
			local tab = {
				["$pp_colour_addr"] = 0.3,
				["$pp_colour_addg"] = 0.2,
				["$pp_colour_addb"] = 0,
				["$pp_colour_brightness"] = -0.2,
				["$pp_colour_contrast"] = 0.6,
				["$pp_colour_colour"] = 2,
				["$pp_colour_mulr"] = 1,
				["$pp_colour_mulg"] = 1,
				["$pp_colour_mulb"] = 0.25
			}
			DrawColorModify(tab)
		end)
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","L4DTankScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_bg" )
        local chargemat2 = Material( "vgui/hud/pz_charge_tank" )

        hook.Add( "HUDPaint", "TankHUD", function()
	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial( chargemat ) 
	        surface.DrawTexturedRect( 1600, 800, 265, 265 ) 
        end)
        hook.Add( "HUDPaint", "TankHUD2", function()
	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial( chargemat2 ) 
	        surface.DrawTexturedRect( 1640, 850, 185, 185 ) 
        end)
        if isdeleted == true then hook.Remove("HUDPaint","TankHUD2") end
		if isdeleted == true then hook.Remove("HUDPaint","TankHUD") end
		hook.Add("PreDrawHalos","L4DTankHalo",function()
			local tbL4DInfected = {}
			local tbL4DSurvivors = {}
			for _,v in pairs(ents.GetAll()) do
				if v:IsNPC() or v:IsPlayer() then
					if string.find(v:GetClass(),"npc_vj_l4d*") then
						table.insert(tbL4DInfected,v)
					else
						if v:GetClass() != "obj_vj_bullseye" then
							table.insert(tbL4DSurvivors,v)
						end
					end
				end
			end
			halo.Add(tbL4DInfected,Color(255,100,0),4,4,3,true,true)
			halo.Add(tbL4DSurvivors,Color(0,0,255),4,4,3,true,true)
		end)
		if isdeleted == true then hook.Remove("PreDrawHalos","L4DTankHalo") end
	end)
end