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
			local tbL4D2Survivors = {}
			local tbL4D2IncappedEnemies = {}
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
		if isdeleted == true then hook.Remove("PreDrawHalos","GhostL4D2BoomerHalo") end
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