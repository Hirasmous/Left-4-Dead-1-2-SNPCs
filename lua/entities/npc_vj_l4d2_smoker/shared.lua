ENT.Base 			= "npc_vj_creature_base"
ENT.Type 			= "ai"
ENT.PrintName 		= "Smoker"
ENT.Author 			= "Hirasmous"
ENT.Contact 		= "http://vrejgaming.webs.com/"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Left 4 Dead 2"

if (CLIENT) then
local Name = "Smoker"
local LangName = "npc_vj_l4d2_smoker"
language.Add(LangName, Name)
killicon.Add(LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
language.Add("#"..LangName, Name)
killicon.Add("#"..LangName,"HUD/killicons/default",Color ( 255, 80, 0, 255 ) )
end

if CLIENT then

	net.Receive("Smoker_InitializeParticles", function()
		local entity = net.ReadEntity()
		if GetConVar("vj_l4d2_particles"):GetInt() == 1 then
			ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,entity,entity:LookupAttachment("smoker_mouth")) 
			ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,entity,entity:LookupAttachment("smoker_mouth")) 
			ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,entity,entity:LookupAttachment("spine")) 
			ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,entity,entity:LookupAttachment("spine"))
			ParticleEffectAttach("smoker_spore_trail",PATTACH_POINT_FOLLOW,entity,0)
		end
	end)

	function ENT:Initialize()
		if GetConVar("vj_l4d2_particles"):GetInt() == 1 then
			ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
			ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("smoker_mouth")) 
			ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine")) 
			ParticleEffectAttach("smoker_spore_trail_spores_cluster",PATTACH_POINT_FOLLOW,self,self:LookupAttachment("spine"))
			ParticleEffectAttach("smoker_spore_trail",PATTACH_POINT_FOLLOW,self,0)
		end
	end

	net.Receive("L4D2SmokerHUD",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","L4D2SmokerScreen",function()
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
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","L4D2SmokerScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_smoker" )
        local chargemat2 = Material( "vgui/hud/PZ_charge_meter" )
        local chargemat3 = Material( "vgui/hud/PZ_charge_bg" )
        local nextattack = IsValid(entity) && entity:GetNW2Int("TongueT") -CurTime() or 0
		if IsValid(entity) && entity:GetNW2Int("TongueT") < CurTime() then nextattack = 1 end

        hook.Add( "HUDPaint", "SmokerChargeHUD", function()
        	surface.SetDrawColor( 255, 255, 255, 255 ) 
	        surface.SetMaterial(chargemat3) 
	        surface.DrawTexturedRect( ScrW() / 1.173, ScrH() / 1.37, ScrW() / 7.8, ScrH() / 4 ) 
	        
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
        if isdeleted == true then hook.Remove("HUDPaint","SmokerChargeHUD") end
		hook.Add("PreDrawHalos","L4D2SmokerHalo",function()
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
		if isdeleted == true then hook.Remove("PreDrawHalos","L4D2SmokerHalo") end
	end)

	net.Receive("L4D2SmokerHUDGhost",function(len,pl)
		local isdeleted = net.ReadBool()
		local entity = net.ReadEntity()

		hook.Add("RenderScreenspaceEffects","GhostL4D2SmokerScreen",function()
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
		if isdeleted == true then hook.Remove("RenderScreenspaceEffects","GhostL4D2SmokerScreen") end
		local chargemat = Material( "vgui/hud/pz_charge_smoker" )
        local chargemat2 = Material( "vgui/hud/PZ_charge_meter" )
        local chargemat3 = Material( "vgui/hud/PZ_charge_bg" )

        hook.Add( "HUDPaint", "GhostSmokerChargeHUD", function()
        	surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetMaterial(chargemat3) 
			surface.DrawTexturedRect( ScrW() / 1.173, ScrH() / 1.37, ScrW() / 7.8, ScrH() / 4 )

			surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetMaterial(chargemat) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 )

			surface.SetDrawColor( 255, 255, 255, 255 ) 
			surface.SetMaterial(chargemat2) 
			surface.DrawTexturedRect( ScrW() / 1.15, ScrH() / 1.28, ScrW() / 10.4, ScrH() / 6 ) 
     
        end)
        if isdeleted == true then hook.Remove("HUDPaint","GhostSmokerChargeHUD") end
		hook.Add("PreDrawHalos","GhostL4D2SmokerHalo",function()
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
		if isdeleted == true then hook.Remove("PreDrawHalos","GhostL4D2SmokerHalo") end
	end)

	local victims = {}
	net.Receive("Smoker_CreateTongue", function()
		local id = net.ReadString()
		local ent = net.ReadEntity()
		local par = net.ReadEntity()
		local prt = CreateParticleSystem(par, "smoker_tongue", 4, par:LookupAttachment("smoker_mouth"), Vector( 0, 0, 0 ))
		prt:SetControlPoint(1,  ent:GetPos())
		prt:StartEmission()
		victims[id] = {prt, ent}
	end)

	net.Receive("Smoker_DestroyTongue", function()
		local id = net.ReadString()
		if table.Count(victims) > 0 then
			if table.HasValue(victims, victims[id]) then
				victims[id][1]:StopEmissionAndDestroyImmediately()
				table.remove(victims, id)
			end
		end
	end)

	function ENT:Think()
		if table.Count(victims) > 0 then
			for k, v in pairs(victims) do
				if IsValid(victims[k][1]) && IsValid(victims[k][2]) then
					victims[k][1]:SetControlPoint(1, victims[k][2]:GetBonePosition(victims[k][2]:LookupBone("ValveBiped.shoulder_1")))
				end
			end
		end
	end
end
