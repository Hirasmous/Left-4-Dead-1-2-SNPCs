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

if CLIENT then
        hook.Add("HUDPaint","hkHandleBoomerBlastRed", function()
		if LocalPlayer():Alive() && LocalPlayer().m_bRenderBoomerScreenFX then
			--local hMaterial = Material("models/props_lab/Tank_Glass001")
			surface.SetMaterial(Material("models/props_lab/Tank_Glass001"))
			surface.SetDrawColor(255,255,255,LocalPlayer().m_iBoomerScreenFXAlpha)
			surface.DrawTexturedRect(0,0,ScrW(),ScrH())
			DrawMotionBlur( 0.5, (LocalPlayer().m_iBoomerScreenFXAlpha / 255)+1, 0.01 )
		end
		local color_red = Color( 255, 0, 0 )
	end)
    net.Receive("L4DBoomerHUD",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","L4DBoomerScreen",function()
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
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","L4DBoomerScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_bg" )
        local chargemat2 = Material( "vgui/hud/pz_charge_boomer" )

        hook.Add( "HUDPaint", "BoomerChargeHUD", function()
	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial( chargemat ) 
	        surface.DrawTexturedRect( 1600, 800, 265, 265 ) 
        end)
        hook.Add( "HUDPaint", "BoomerChargeHUD2", function()
	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial( chargemat2 ) 
	        surface.DrawTexturedRect( 1640, 850, 185, 185 ) 
        end)
        if isdeleted == true then hook.Remove("HUDPaint","BoomerChargeHUD2") end
		if isdeleted == true then hook.Remove("HUDPaint","BoomerChargeHUD") end
		hook.Add("PreDrawHalos","L4DBoomerHalo",function()
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
		if isdeleted == true then hook.Remove("PreDrawHalos","L4DBoomerHalo") end
	end)
	net.Receive("L4DBoomerHUDGhost",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","GhostL4DBoomerScreen",function()
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
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","GhostL4DBoomerScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_bg" )
        local chargemat2 = Material( "vgui/hud/pz_charge_boomer" )

        hook.Add( "HUDPaint", "GhostBoomerChargeHUD2", function()
	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial( chargemat ) 
	        surface.DrawTexturedRect( 1600, 800, 265, 265 ) 
        end)
        hook.Add( "HUDPaint", "GhostBoomerChargeHUD", function()
	        surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial( chargemat2 ) 
	        surface.DrawTexturedRect( 1640, 850, 185, 185 ) 
        end)
        if isdeleted == true then hook.Remove("HUDPaint","GhostBoomerChargeHUD2") end
		if isdeleted == true then hook.Remove("HUDPaint","GhostBoomerChargeHUD") end
		hook.Add("PreDrawHalos","GhostL4DBoomerHalo",function()
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
		if isdeleted == true then hook.Remove("PreDrawHalos","GhostL4DBoomerHalo") end
	end)


	net.Receive("nDoBoomerBlast",function()
		LocalPlayer().m_bRenderBoomerScreenFX = true
		LocalPlayer().m_iBoomerScreenFXAlpha = 255

		timer.Create("tmKillScreenFX_Boomer",0.3,255,function()
			LocalPlayer().m_iBoomerScreenFXAlpha = LocalPlayer().m_iBoomerScreenFXAlpha - 8
			if LocalPlayer().m_iBoomerScreenFXAlpha == 1 then
				LocalPlayer().m_bRenderBoomerScreenFX = false
			end
		end)
	end)
end