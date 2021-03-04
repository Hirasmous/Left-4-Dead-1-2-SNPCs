/*--------------------------------------------------
	=============== [VJ] Left 4 Dead 1-2 Special Infected SNPCs Autorun ===============
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: Used to load autorun file for [VJ] Left 4 Dead 1-2 Special Infected SNPCs
--------------------------------------------------*/
-- Addon Information(Important!):
	local PublicAddonName = "Left 4 Dead 1-2 SNPCs"
	local AddonName = "Left 4 Dead 1-2"
	local AddonType = "SNPC"
-- Don't edit anything below this! ------------------------------------------------
local VJExists = "lua/autorun/vj_base_autorun.lua"

if( file.Exists( VJExists, "GAME" ) ) then
	include('autorun/vj_controls.lua')
	AddCSLuaFile("autorun/vj_l4d2si_autorun.lua")
	AddCSLuaFile("autorun/vj_l4d2si_features.lua")
	VJ.AddAddonProperty(AddonName,AddonType)

    sound.AddSoundOverrides("lua/sound/game_sounds_infected_special.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_music.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_player.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_world.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_terror.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_physics.lua")

	local vCatL4D2 = "Left 4 Dead 2"
	VJ.AddNPC("Boomer","npc_vj_l4d2_boomer",vCatL4D2) 
	VJ.AddNPC("Boomette","npc_vj_l4d2_boomette",vCatL4D2) 
	VJ.AddNPC("Smoker","npc_vj_l4d2_smoker",vCatL4D2) 
	VJ.AddNPC("Charger","npc_vj_l4d2_charger",vCatL4D2) 
	VJ.AddNPC("Tank","npc_vj_l4d2_tank",vCatL4D2) 
	VJ.AddNPC("Hunter","npc_vj_l4d2_hunter",vCatL4D2)  
	VJ.AddNPC("Jockey","npc_vj_l4d2_jockey",vCatL4D2)  
	VJ.AddNPC("Witch","sent_vj_l4d2_witch",vCatL4D2)  
	VJ.AddNPC("Spitter","npc_vj_l4d2_spitter",vCatL4D2) 
	VJ.AddNPC("Random Special Infected","sent_vj_l4d2_random",vCatL4D2)
	VJ.AddNPC("Random Special Infected (Spawner)","sent_vj_l4d2_random_spawner",vCatL4D2)

	local vCatL4D = "Left 4 Dead"
	VJ.AddNPC("Boomer","npc_vj_l4d_boomer",vCatL4D)  
	VJ.AddNPC("Smoker","npc_vj_l4d_smoker",vCatL4D)  
	VJ.AddNPC("Hunter","npc_vj_l4d_hunter",vCatL4D)  
	VJ.AddNPC("Tank","npc_vj_l4d_tank",vCatL4D)  
	VJ.AddNPC("Witch","npc_vj_l4d_witch",vCatL4D)  
	VJ.AddNPC("Random Special Infected","sent_vj_l4d_random",vCatL4D)
	VJ.AddNPC("Random Special Infected (Spawner)","sent_vj_l4d_random_spawner",vCatL4D)
	
	VJ.AddParticle("particles/smoker_fx.pcf",{
	"smoker_tongue",
})

	//Particles
	game.AddParticles("particles/boomer_fx.pcf")
	game.AddParticles("particles/l4d2_blood_fx.pcf")
	game.AddParticles("particles/smoker_fx.pcf")
	game.AddParticles("particles/smoker_fx2.pcf")
	game.AddParticles("particles/hunter_fx.pcf")
	game.AddParticles("particles/charger_fx.pcf")
	game.AddParticles("particles/spitter_fx.pcf")
	game.AddParticles("particles/witch_fx.pcf")
	game.AddParticles("particles/tank_fx.pcf")

	PrecacheParticleSystem("smoker_tongue")

	-- Boomer
	VJ.AddConVar("vj_l4d2_b_h",50)
	VJ.AddConVar("vj_l4d2_b_d",5)
	-- Charger
	VJ.AddConVar("vj_l4d2_c_h",600)
	VJ.AddConVar("vj_l4d2_c_d",10)
	-- Smoker
	VJ.AddConVar("vj_l4d2_s_h",250)
	VJ.AddConVar("vj_l4d2_s_d",5)
	-- Spitter
	VJ.AddConVar("vj_l4d2_sp_h",100)
	VJ.AddConVar("vj_l4d2_sp_d",5)
	-- Tank
	VJ.AddConVar("vj_l4d2_t_h",3500)
	VJ.AddConVar("vj_l4d2_t_d",20)
	-- Hunter
	VJ.AddConVar("vj_l4d2_h_h",250)
	VJ.AddConVar("vj_l4d2_h_d",5)
	-- Jockey
	VJ.AddConVar("vj_l4d2_j_h",325)
	VJ.AddConVar("vj_l4d2_j_d",5)
	-- Witch
	VJ.AddConVar("vj_l4d2_w_h",1000)
	VJ.AddConVar("vj_l4d2_w_d",100)

    -- Other 
    VJ.AddConVar("vj_l4d2_musictype",1)
    VJ.AddConVar("vj_l4d2_tanktype",1)
    VJ.AddConVar("vj_l4d2_npcs_dropweapons", 0) -- Turned off by default
    VJ.AddConVar("vj_l4d2_ghosted",0) -- Turned off by default
    VJ.AddConVar("vj_l4d2_incap_overlay",1) -- Turned on by default
	VJ.AddConVar("vj_l4d2_dismount", 0) -- Turned off by default
	VJ.AddConVar("vj_l4d2_print", 1) -- Turned on by default
end

if SERVER then
    util.AddNetworkString("infected_PounceEnemy")
	util.AddNetworkString("infected_RemoveCSEnt")
	util.AddNetworkString("Infected_IncapLight")
	util.AddNetworkString("Infected_DrawIncapOverlay")
end

if CLIENT then
	hook.Add("PopulateToolMenu", "VJ_L4D2_MENU", function()	
		spawnmenu.AddToolMenuOption("DrVrej", "SNPC Configures", "Left 4 Dead 1/2 ", "Left 4 Dead 1/2", "", "", function(Panel)
			if !game.SinglePlayer() then
			if !LocalPlayer():IsAdmin() or !LocalPlayer():IsSuperAdmin() then
				Panel:AddControl( "Label", {Text = "You are not an admin!"})
				Panel:ControlHelp("Notice: Only admins can change this settings")
				return
				end
			end
			local tank_musictype = {Options = {}, CVars = {}, Label = "Tank music type", MenuButton = "0"}
			tank_musictype.Options["Default"] = {vj_l4d2_musictype = 1}
			tank_musictype.Options["Sacrifice"] = {vj_l4d2_musictype = 2}
			tank_musictype.Options["SuicideBlitz"] = {vj_l4d2_musictype = 3}

			local tank_type = {Options = {}, CVars = {}, Label = "Tank type", MenuButton = "0"}
			tank_type.Options["Default"] = {vj_l4d2_tanktype = 1}
			tank_type.Options["TheSacrifice"] = {vj_l4d2_tanktype = 2}


			Panel:AddControl("Checkbox", {Label = "Should incapacitated NPCs drop their weapons?", Command = "vj_l4d2_npcs_dropweapons"})
			Panel:AddControl("Checkbox", {Label = "Do Special Infected start ghosted?", Command = "vj_l4d2_ghosted"})
			Panel:AddControl("Checkbox", {Label = "Can controlled Specials stop incapacitating (via spacebar)?", Command = "vj_l4d2_dismount"})
			Panel:AddControl("Checkbox", {Label = "Draw incap overlay?", Command = "vj_l4d2_incap_overlay"})
			Panel:AddControl("Checkbox", {Label = "Should information be printed on the screen?", Command = "vj_l4d2_print"})
			Panel:AddControl("Slider", { Label 	= "Tank health", Command = "vj_l4d2_t_h", Type = "Float", Min = "3500", Max = "6000"})
			Panel:AddControl("ComboBox", tank_musictype)
			Panel:AddControl("ComboBox", tank_type)
		end, {})
	end)
	
	net.Receive("Infected_IncapLight", function()
		local fadeout = net.ReadBool()
		local ent = net.ReadEntity()
		local light = net.ReadEntity()
		if fadeout == false then
			if IsValid(ent) then
				light:SetPos(ent:GetPos() + ent:GetUp() * 110)
				light:SetAngles(Angle(90, 0, 0))
				light:Spawn()
				light:SetParent(ent)
				light:Activate()
			end
		end
	end)
	net.Receive("Infected_DrawIncapOverlay", function()
		local isdeleted = net.ReadBool()
		local ent = net.ReadEntity()
		hook.Add("RenderScreenspaceEffects","IncapOverlay",function()
			DrawMaterialOverlay( "effects/dodge_overlay", 0 )
			DrawMaterialOverlay( "effects/invuln_overlay_red", 0 )
		end)
	    if isdeleted == true then hook.Remove("RenderScreenspaceEffects","IncapOverlay") end
	end)
end

if CLIENT then
if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then
	chat.AddText(Color(0,200,200),PublicAddonName,
	Color(0,255,0)," was unable to install, you are missing ",
	Color(255,100,0),"VJ Base!"
	)
	end
end

timer.Simple(1,function()
	if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then
		if not VJF then
			if CLIENT then
				VJF = vgui.Create('DFrame')
				VJF:SetTitle("VJ Base is not installed")
				VJF:SetSize(900, 800)
				VJF:SetPos((ScrW() - VJF:GetWide()) / 2, (ScrH() - VJF:GetTall()) / 2)
				VJF:MakePopup()
				VJF.Paint = function()
				draw.RoundedBox( 8, 0, 0, VJF:GetWide(), VJF:GetTall(), Color( 200, 0, 0, 150 ) )
				end
				local VJURL = vgui.Create('DHTML')
				VJURL:SetParent(VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				local x,y = VJF:GetSize()
				VJURL:SetSize(x*0.99,y*0.96)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL('https://sites.google.com/site/vrejgaming/vjbasemissing')
				elseif SERVER then
				timer.Create("VJBASEMissing", 5, 0, function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end
end)

