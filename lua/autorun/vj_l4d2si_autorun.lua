/*--------------------------------------------------
	=============== [VJ] Left 4 Dead 1-2 Special Infected SNPCs Autorun ===============
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: Used to load autorun file for [VJ] Left 4 Dead 1-2 Special Infected SNPCs
--------------------------------------------------*/
-- Addon Information(Important!):
	local PublicAddonName = "Left 4 Dead 2 SNPCs"
	local AddonName = "Left 4 Dead 2"
	local AddonType = "SNPC"
-- Don't edit anything below this! ------------------------------------------------
local VJExists = "lua/autorun/vj_base_autorun.lua"

if( file.Exists( VJExists, "GAME" ) ) then
	include('autorun/vj_controls.lua')
	AddCSLuaFile("autorun/vj_l4d2si_autorun.lua")
	VJ.AddAddonProperty(AddonName,AddonType)

    sound.AddSoundOverrides("lua/sound/game_sounds_infected_special.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_music.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_player.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_world.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_terror.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_physics.lua")

	local vCat = "Left 4 Dead 2"
	VJ.AddNPC("Boomer","npc_vj_l4d2_boomer",vCat) 
	VJ.AddNPC("Boomette","npc_vj_l4d2_boomette",vCat) 
	VJ.AddNPC("Smoker","npc_vj_l4d2_smoker",vCat) 
	VJ.AddNPC("Charger","npc_vj_l4d2_charger",vCat) 
	VJ.AddNPC("Tank","npc_vj_l4d2_tank",vCat) 
	VJ.AddNPC("Hunter","npc_vj_l4d2_hunter",vCat)  
	VJ.AddNPC("Jockey","npc_vj_l4d2_jockey",vCat)  
	VJ.AddNPC("Witch","sent_vj_l4d2_witch",vCat)  
	VJ.AddNPC("Spitter","npc_vj_l4d2_spitter",vCat) 

	local vCatL4D = "Left 4 Dead"
	VJ.AddNPC("Boomer","npc_vj_l4d_boomer",vCatL4D)  
	VJ.AddNPC("Smoker","npc_vj_l4d_smoker",vCatL4D)  
	VJ.AddNPC("Hunter","npc_vj_l4d_hunter",vCatL4D)  
	VJ.AddNPC("Tank","npc_vj_l4d_tank",vCatL4D)  
	VJ.AddNPC("Witch","npc_vj_l4d_witch",vCatL4D)  


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

    VJ.AddConVar("vj_l4d2_musictype",0)
end

if CLIENT then
	hook.Add("PopulateToolMenu", "VJ_L4D2_MENU", function()	
		spawnmenu.AddToolMenuOption("DrVrej", "SNPC Configures", "Left 4 Dead 1/2 ", "Left 4 Dead 1/2 Special Infected SNPCs", "", "", function(Panel)
			if !game.SinglePlayer() then
			if !LocalPlayer():IsAdmin() or !LocalPlayer():IsSuperAdmin() then
				Panel:AddControl( "Label", {Text = "You are not an admin!"})
				Panel:ControlHelp("Notice: Only admins can change this settings")
				return
				end
			end
			Panel:AddControl("Checkbox", {Label = "Metalized Music (Tank)", Command = "vj_l4d2_musictype"})
		end, {})
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