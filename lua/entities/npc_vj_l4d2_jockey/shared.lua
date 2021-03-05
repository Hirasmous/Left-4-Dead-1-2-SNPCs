ENT.Base 			= "npc_vj_creature_base"
ENT.Type 			= "ai"
ENT.PrintName 		= "Jockey"
ENT.Author 			= "Hirasmous"
ENT.Contact 		= "http://vrejgaming.webs.com/"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Left 4 Dead 2"

if (CLIENT) then
local Name = "Jockey"
local LangName = "npc_vj_l4d2_jockey"
language.Add(LangName, Name)
killicon.Add(LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
language.Add("#"..LangName, Name)
killicon.Add("#"..LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
end


if CLIENT then
	net.Receive("L4D2JockeyHUD",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","L4D2JockeyScreen",function()
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
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","L4D2JockeyScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_jockey" )
        local chargemat2 = Material( "vgui/hud/PZ_charge_meter" )
        local chargemat3 = surface.GetTextureID( "vgui/hud/PZ_charge_bg" )
        local nextattack = IsValid(entity) && entity:GetNW2Int("PounceT") -CurTime() or 0
		if IsValid(entity) && entity:GetNW2Int("PounceT") < CurTime() then nextattack = 1 end

        hook.Add( "HUDPaint", "JockeyChargeHUD", function()
        	surface.SetDrawColor( 255, 255, 255, 255 )
			surface.SetTexture(chargemat3) 
			surface.DrawTexturedRect( ScrW() / 1.173, ScrH() / 1.37, ScrW() / 7.8, ScrH() / 4 )
			if nextattack != 1 then
				surface.SetDrawColor(255,255,255,255 /nextattack)
			else
				surface.SetDrawColor(255,255,255,math.abs(math.sin(CurTime() *3) *255))
			end

			surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetMaterial(chargemat) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 )
			if nextattack != 1 then
				surface.SetDrawColor(255,255,255,255 /nextattack)
			else
				surface.SetDrawColor(255,255,255,math.abs(math.sin(CurTime() *3) *255))
			end

			surface.SetMaterial(chargemat2) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 )
			if nextattack != 1 then
				surface.SetDrawColor(255,255,255,255 /nextattack)
			else
				surface.SetDrawColor(255,255,255,math.abs(math.sin(CurTime() *3) *255))
			end
        end)
        if isdeleted == true then hook.Remove("HUDPaint","JockeyChargeHUD") end
		hook.Add("PreDrawHalos","L4D2JockeyHalo",function()
			local tbL4D2Infected = {}
			local tbL4D2GhostedInfected = {}
			local tbL4D2Survivors = {}
			for _,v in pairs(ents.GetAll()) do
				if v:IsNPC() or v:IsPlayer() then
					if string.find(v:GetClass(),"npc_vj_l4d*") then
						if v:GetNW2Bool("Ghosted") then
						    table.insert(tbL4D2GhostedInfected,v)
						else
							table.insert(tbL4D2Infected,v)
						end
					else
						if v:GetClass() != "obj_vj_bullseye" then
							table.insert(tbL4D2Survivors,v)
						end
					end
				end
			end
			halo.Add(tbL4D2Infected,Color(GetConVarNumber("vj_l4d2_halo_ally_r"),GetConVarNumber("vj_l4d2_halo_ally_g"),GetConVarNumber("vj_l4d2_halo_ally_b")),4,4,3,true,true)
			halo.Add(tbL4D2Survivors,Color(GetConVarNumber("vj_l4d2_halo_enemy_r"),GetConVarNumber("vj_l4d2_halo_enemy_g"),GetConVarNumber("vj_l4d2_halo_enemy_b")),4,4,3,true,true)
			halo.Add(tbL4D2GhostedInfected,Color(GetConVarNumber("vj_l4d2_halo_ghost_r"),GetConVarNumber("vj_l4d2_halo_ghost_g"),GetConVarNumber("vj_l4d2_halo_ghost_b")),4,4,3,true,true)
		end)
		if isdeleted == true then hook.Remove("PreDrawHalos","L4D2JockeyHalo") end
	end)
	net.Receive("L4D2JockeyHUDGhost",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","GhostL4D2JockeyScreen",function()
			local tab = {
				["$pp_colour_addr"] = 0,
				["$pp_colour_addg"] = 0.3,
				["$pp_colour_addb"] = 0.5,
				["$pp_colour_brightness"] = -0.2,
				["$pp_colour_contrast"] = 0.6,
				["$pp_colour_colour"] = 2,
				["$pp_colour_mulr"] = 0,
				["$pp_colour_mulg"] = 0,
				["$pp_colour_mulb"] = 0.25
			}
			DrawColorModify(tab)
		end)
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","GhostL4D2JockeyScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_jockey" )
        local chargemat2 = Material( "vgui/hud/PZ_charge_meter" )
        local chargemat3 = surface.GetTextureID( "vgui/hud/PZ_charge_bg" )

        hook.Add( "HUDPaint", "GhostJockeyChargeHUD", function()
        	surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetTexture(chargemat3) 
			surface.DrawTexturedRect( ScrW() / 1.173, ScrH() / 1.37, ScrW() / 7.8, ScrH() / 4 )

			surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetMaterial(chargemat) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 )

			surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetMaterial(chargemat2) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 ) 
     
        end)
        if isdeleted == true then hook.Remove("HUDPaint","GhostJockeyChargeHUD") end
		hook.Add("PreDrawHalos","GhostL4D2JockeyHalo",function()
			local tbL4D2Infected = {}
			local tbL4D2GhostedInfected = {}
			local tbL4D2Survivors = {}
			for _,v in pairs(ents.GetAll()) do
				if v:IsNPC() or v:IsPlayer() then
					if string.find(v:GetClass(),"npc_vj_l4d*") then
						if v:GetNW2Bool("Ghosted") then
						    table.insert(tbL4D2GhostedInfected,v)
						else
							table.insert(tbL4D2Infected,v)
						end
					else
						if v:GetClass() != "obj_vj_bullseye" then
							table.insert(tbL4D2Survivors,v)
						end
					end
				end
			end
			halo.Add(tbL4D2Infected,Color(GetConVarNumber("vj_l4d2_halo_ally_r"),GetConVarNumber("vj_l4d2_halo_ally_g"),GetConVarNumber("vj_l4d2_halo_ally_b")),4,4,3,true,true)
			halo.Add(tbL4D2Survivors,Color(GetConVarNumber("vj_l4d2_halo_enemy_r"),GetConVarNumber("vj_l4d2_halo_enemy_g"),GetConVarNumber("vj_l4d2_halo_enemy_b")),4,4,3,true,true)
			halo.Add(tbL4D2GhostedInfected,Color(GetConVarNumber("vj_l4d2_halo_ghost_r"),GetConVarNumber("vj_l4d2_halo_ghost_g"),GetConVarNumber("vj_l4d2_halo_ghost_b")),4,4,3,true,true)
		end)
		if isdeleted == true then hook.Remove("PreDrawHalos","GhostL4D2JockeyHalo") end
	end)
end