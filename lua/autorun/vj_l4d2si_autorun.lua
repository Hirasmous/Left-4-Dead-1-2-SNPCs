/*--------------------------------------------------
	=============== Left 4 Dead 2 SNPCs Autorun ===============
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: Used to load autorun file for Left 4 Dead 2 SNPCs
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
	AddCSLuaFile("autorun/vj_l4d2si_convar.lua")
	AddCSLuaFile("autorun/vj_l4d2si_spawn.lua")
	VJ.AddAddonProperty(AddonName,AddonType)

    sound.AddSoundOverrides("lua/sound/game_sounds_infected_special.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_music.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_player.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_world.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_terror.lua")
    sound.AddSoundOverrides("lua/sound/game_sounds_physics.lua")

    VJ.AddConVar("vj_l4d2_musictype",0)
end

if CLIENT then
	hook.Add("PopulateToolMenu", "VJ_L4D2_MENU", function()	
		spawnmenu.AddToolMenuOption("DrVrej", "SNPC Configures", "Left 4 Dead 2 ", "Left 4 Dead 2 Special Infected", "", "", function(Panel)
			if !game.SinglePlayer() then
			if !LocalPlayer():IsAdmin() or !LocalPlayer():IsSuperAdmin() then
				Panel:AddControl( "Label", {Text = "You are not an admin!"})
				Panel:ControlHelp("Notice: Only admins can change this settings")
				return
				end
			end
			Panel:AddControl("Label", {Text = "Notice: Only admins can change this settings."})
			Panel:AddControl( "Label", {Text = "WARNING: Only future spawned SNPCs will be affected!"})
			Panel:AddControl("Button",{Text = "Reset Everything", Command = "vj_l4d2_musictype 0"})
			Panel:AddControl("Checkbox", {Label = "Metalized Tank Theme", Command = "vj_l4d2_musictype"})
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