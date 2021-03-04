ENT.Base 			= "npc_vj_creature_base"
ENT.Type 			= "ai"
ENT.PrintName 		= "Boomer"
ENT.Author 			= "Hirasmous"
ENT.Contact 		= "http://vrejgaming.webs.com/"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Left 4 Dead 2"

if (CLIENT) then
		local Name = "Boomer"
		local LangName = "npc_vj_l4d2_boomer"
		language.Add(LangName, Name)
		killicon.Add(LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
		language.Add("#"..LangName, Name)
		killicon.Add("#"..LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
end

if CLIENT then
	net.Receive("L4D2BoomerHUD",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","L4D2BoomerScreen",function()
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
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","L4D2BoomerScreen") end
		local chargemat = surface.GetTextureID( "vgui/hud/pz_charge_boomer" )
		local chargemat2 = surface.GetTextureID( "vgui/hud/PZ_charge_meter" )
		local chargemat3 = surface.GetTextureID( "vgui/hud/PZ_charge_bg" )
		local chargemat4 = surface.GetTextureID( "vgui/hud/PZ_charge_boomer_fill" )
		local nextattack = IsValid(entity) && entity:GetNW2Int("VomitT") -CurTime() or 0
		if IsValid(entity) && entity:GetNW2Int("VomitT") < CurTime() then nextattack = 1 end

		hook.Add( "HUDPaint", "BoomerChargeHUD", function()
			surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetTexture(chargemat3) 
			surface.DrawTexturedRect( ScrW() / 1.173, ScrH() / 1.37, ScrW() / 7.8, ScrH() / 4 ) 
			
			surface.SetTexture(chargemat) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 )
			if nextattack != 1 then
				surface.SetDrawColor(255,255,255,255 /nextattack)
			else
				surface.SetDrawColor(255,255,255,math.abs(math.sin(CurTime() *3) *255))
			end

			surface.SetTexture(chargemat4) 
			surface.DrawTexturedRect( ScrW() / 1.2, ScrH() / 1.1, ScrW() / 22.4, ScrH() / 12.5 ) 
			if nextattack != 1 then
				surface.SetDrawColor(255,255,255,255 /nextattack)
			else
				surface.SetDrawColor(255,255,255,math.abs(math.sin(CurTime() *3) *255))
			end

			surface.SetTexture(chargemat2) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 )  
			if nextattack != 1 then
				surface.SetDrawColor(255,255,255,255 /nextattack)
			else
				surface.SetDrawColor(255,255,255,math.abs(math.sin(CurTime() *3) *255))
			end
		end)
		if isdeleted == true then hook.Remove("HUDPaint","BoomerChargeHUD") end
		hook.Add("PreDrawHalos","L4D2BoomerHalo",function()
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
			halo.Add(tbL4D2Infected,Color(255,100,0),4,4,3,true,true)
			halo.Add(tbL4D2Survivors,Color(0,0,255),4,4,3,true,true)
			halo.Add(tbL4D2GhostedInfected,Color(0,150,150),4,4,3,true,true)
		end)
		if isdeleted == true then hook.Remove("PreDrawHalos","L4D2BoomerHalo") end
	end)
	net.Receive("L4D2BoomerHUDGhost",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","GhostL4D2BoomerScreen",function()
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
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","GhostL4D2BoomerScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_boomer" )
		local chargemat2 = Material( "vgui/hud/PZ_charge_meter" )
		local chargemat3 = surface.GetTextureID( "vgui/hud/PZ_charge_bg" )
		local chargemat4 = surface.GetTextureID( "vgui/hud/PZ_charge_boomer_fill" )

		hook.Add( "HUDPaint", "GhostBoomerChargeHUD", function()
			surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetTexture(chargemat3) 
			surface.DrawTexturedRect( ScrW() / 1.173, ScrH() / 1.37, ScrW() / 7.8, ScrH() / 4 )

			surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetMaterial(chargemat) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 )

			surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetMaterial(chargemat2) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 ) 

			surface.SetTexture(chargemat4) 
			surface.DrawTexturedRect( ScrW() / 1.2, ScrH() / 1.1, ScrW() / 22.4, ScrH() / 12.5 )
	
		end)
		if isdeleted == true then hook.Remove("HUDPaint","GhostBoomerChargeHUD") end
		hook.Add("PreDrawHalos","GhostL4D2BoomerHalo",function()
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
			halo.Add(tbL4D2Infected,Color(255,100,0),4,4,3,true,true)
			halo.Add(tbL4D2Survivors,Color(0,0,255),4,4,3,true,true)
			halo.Add(tbL4D2GhostedInfected,Color(0,150,150),4,4,3,true,true)
		end)
		if isdeleted == true then hook.Remove("PreDrawHalos","GhostL4D2BoomerHalo") end
	end)

	net.Receive("nBoomer_InitializeOverlay", function()
		hook.Add("RenderScreenspaceEffects", "hkBoomer_VomitOverlay", function()
			DrawMaterialOverlay("models/props_lab/Tank_Glass001", 1)
		end)
		timer.Create("tmBoomer"..LocalPlayer():EntIndex().."_RemoveVomitOverlay", 0.1, 150, function()
			local tm = "tmBoomer"..LocalPlayer():EntIndex().."_RemoveVomitOverlay"
			if not LocalPlayer():Alive() then
				hook.Remove("RenderScreenspaceEffects", "hkBoomer_VomitOverlay")
				timer.Stop(tm)
			else
				if timer.RepsLeft(tm) <= 100 && timer.RepsLeft(tm) > 1 then
					local fr = 0.01 * timer.RepsLeft(tm)
					hook.Add("RenderScreenspaceEffects", "hkBoomer_VomitOverlay", function()
						DrawMaterialOverlay("models/props_lab/Tank_Glass001", fr)
					end)
				end
				if timer.RepsLeft(tm) <= 1 then
					hook.Remove("RenderScreenspaceEffects", "hkBoomer_VomitOverlay")
				end
			end
		end)
		hook.Add("PreCleanupMap", "hkBoomer_CleanupOverlay", function()
			hook.Remove("RenderScreenspaceEffects", "hkBoomer_VomitOverlay")
			timer.Stop("tmBoomer"..LocalPlayer():EntIndex().."_RemoveVomitOverlay")
		end)
	end)

	net.Receive("nBoomer_InitializeResidue", function()
		local bDead = net.ReadBool()
		local pos = net.ReadVector()
		local id  = net.ReadString()
		if timer.Exists("tmBoomer"..id.."_RemoveVomitResidue") then
			return
		end
		local _ents
		if bDead == true then
			_ents = ents.FindInSphere(pos, 135)
		else
			_ents = ents.FindInCone(pos, ents.GetByIndex(tonumber(id)):GetForward(), 450, 0.906)
		end
		for k, v in ipairs(_ents) do if v:GetClass() == "obj_vj_bullseye" then table.remove(_ents, table.KeyFromValue(_ents, v)) end end
		function VomitCover()
			local mat = Material("models/vj_l4d2/survivors/survivor_it", "alphatest")
			cam.Start3D(EyePos(), EyeAngles())
				for k, v in ipairs(_ents) do
					if (IsValid(v) && util.IsValidModel(v:GetModel() or "")) && v:GetNoDraw() == false && ( (v:GetClass() == "prop_dynamic" && v:GetParent():GetClass() == "prop_anim_survivor") || v:IsNPC() && not string.find(v:GetClass(), "_l4d") || v:IsNextBot() || (v:IsPlayer() && v:Alive()) ) then
						render.SetBlend(0.8)
						render.MaterialOverride(mat)
						v:DrawModel()
						render.SetBlend(1)
						render.MaterialOverride(0)
					end
				end
			cam.End3D()
		end
		hook.Add("RenderScreenspaceEffects", "hkBoomer"..id.."_VomitResidue", VomitCover)
		timer.Create("tmBoomer"..id.."_RemoveVomitResidue", 0.1, 150, function()
			local tm = "tmBoomer"..id.."_RemoveVomitResidue"
			if timer.RepsLeft(tm) <= 1 then
				hook.Remove("RenderScreenspaceEffects", "hkBoomer"..id.."_VomitResidue")
			end
		end)
		hook.Add("PreCleanupMap", "hkBoomer_CleanupResidue", function()
			hook.Remove("RenderScreenspaceEffects", "hkBoomer"..id.."_VomitResidue")
			timer.Stop("tmBoomer"..id.."_RemoveVomitResidue")
		end)
	end)
end
