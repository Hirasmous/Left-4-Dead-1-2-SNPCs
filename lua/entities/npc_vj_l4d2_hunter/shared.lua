ENT.Base 			= "npc_vj_creature_base"
ENT.Type 			= "ai"
ENT.PrintName 		= "Hunter"
ENT.Author 			= "Hirasmous"
ENT.Contact 		= "http://vrejgaming.webs.com/"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Left 4 Dead 2"

if (CLIENT) then
local Name = "Hunter"
local LangName = "npc_vj_l4d2_hunter"
language.Add(LangName, Name)
killicon.Add(LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
language.Add("#"..LangName, Name)
killicon.Add("#"..LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
end

if CLIENT then
	net.Receive("L4D2HunterHUD",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","L4D2HunterScreen",function()
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
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","L4D2HunterScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_lunge" )
        local chargemat2 = Material( "vgui/hud/PZ_charge_meter" )
        local chargemat3 = surface.GetTextureID( "vgui/hud/PZ_charge_bg" )

        hook.Add( "HUDPaint", "HunterChargeHUD", function()
        	surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetTexture(chargemat3) 
	        surface.DrawTexturedRect( 1600, 800, 265, 265 ) 
	        surface.DisableClipping(false)
	        
	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial(chargemat) 
	        surface.DrawTexturedRect( 1640, 850, 185, 185 ) 

	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial(chargemat2) 
	        surface.DrawTexturedRect( 1640, 850, 185, 185 ) 
     
        end)
        if isdeleted == true then hook.Remove("HUDPaint","HunterChargeHUD") end
		hook.Add("PreDrawHalos","L4D2HunterHalo",function()
			local tbL4D2Infected = {}
			local tbL4D2Survivors = {}
			for _,v in pairs(ents.GetAll()) do
				if v:IsNPC() or v:IsPlayer() then
					if string.find(v:GetClass(),"npc_vj_l4d*") then
						table.insert(tbL4D2Infected,v)
					else
						if v:GetClass() != "obj_vj_bullseye" then
							table.insert(tbL4D2Survivors,v)
						end
					end
				end
			end
			halo.Add(tbL4D2Infected,Color(255,100,0),4,4,3,true,true)
			halo.Add(tbL4D2Survivors,Color(0,0,255),4,4,3,true,true)
		end)
		if isdeleted == true then hook.Remove("PreDrawHalos","L4D2HunterHalo") end
	end)
	net.Receive("L4D2HunterHUDGhost",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","GhostL4D2HunterScreen",function()
			local tab = {
				["$pp_colour_addr"] = 0,
				["$pp_colour_addg"] = 0,
				["$pp_colour_addb"] = 0.4,
				["$pp_colour_brightness"] = -0.2,
				["$pp_colour_contrast"] = 0.6,
				["$pp_colour_colour"] = 2,
				["$pp_colour_mulr"] = 0,
				["$pp_colour_mulg"] = 0,
				["$pp_colour_mulb"] = 0.25
			}
			DrawColorModify(tab)
		end)
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","GhostL4D2HunterScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_lunge" )
        local chargemat2 = Material( "vgui/hud/PZ_charge_meter" )
        local chargemat3 = surface.GetTextureID( "vgui/hud/PZ_charge_bg" )

        hook.Add( "HUDPaint", "GhostHunterChargeHUD", function()
        	surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetTexture(chargemat3) 
	        surface.DrawTexturedRect( 1600, 800, 265, 265 ) 
	        surface.DisableClipping(false)
	        
	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial(chargemat) 
	        surface.DrawTexturedRect( 1640, 850, 185, 185 ) 

	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial(chargemat2) 
	        surface.DrawTexturedRect( 1640, 850, 185, 185 ) 
     
        end)
        if isdeleted == true then hook.Remove("HUDPaint","GhostHunterChargeHUD") end
		hook.Add("PreDrawHalos","GhostL4D2HunterHalo",function()
			local tbL4D2Infected = {}
			local tbL4D2Survivors = {}
			for _,v in pairs(ents.GetAll()) do
				if v:IsNPC() or v:IsPlayer() then
					if string.find(v:GetClass(),"npc_vj_l4d*") then
						table.insert(tbL4D2Infected,v)
					else
						if v:GetClass() != "obj_vj_bullseye" then
							table.insert(tbL4D2Survivors,v)
						end
					end
				end
			end
			halo.Add(tbL4D2Infected,Color(0,0,255),4,4,3,true,true)
			halo.Add(tbL4D2Survivors,Color(0,0,255),4,4,3,true,true)
		end)
		if isdeleted == true then hook.Remove("PreDrawHalos","GhostL4D2HunterHalo") end
	end)
end