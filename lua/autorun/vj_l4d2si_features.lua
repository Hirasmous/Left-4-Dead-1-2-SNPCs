/*--------------------------------------------------
	=============== [VJ] Left 4 Dead 1-2 Special Infected SNPCs Autorun ===============
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: This lua file is used for ghosting features and more
--------------------------------------------------*/

local incapSongPath = "vj_l4d2/music/special_attacks/"

local NPC = FindMetaTable("NPC")

local tblIncapSongs = {
	["smoker"] = 22,
	["spitter"] = 25,
	["hunter"] = 12,
	["charger"] = 14,
	["jockey"] = 25
}

function NPC:SetGhost(bool)
	self.IsGhosted = bool
	self:DrawShadow(!bool)
	self.GodMode = bool
	self.VJ_NoTarget = bool
	self.HasSounds = !bool
	self.HasMeleeAttack = !bool
	self.GhostRunAwayT = 0
	if bool then
	    self:SetRenderMode(RENDERMODE_NONE)
	    self:EmitSound("ui/menu_horror01.mp3")
		self:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
	else
		self:SetRenderMode(RENDERMODE_NORMAL)
		self:EmitSound("ui/pickup_guitarriff10.mp3")
		self:SetCollisionGroup(COLLISION_GROUP_NPC)
	end
end

function NPC:CanSpawn()
	local ent = self:GetEnemy()
    local CanSpawnWhileGhosted = false
	if !self.VJ_IsBeingControlled then
		if IsValid(ent) then
    		if (ent:IsPlayer() or ent:IsNPC()) then
		        if ent:Visible(self) then
		        	CanSpawnWhileGhosted = false
		        else
		        	CanSpawnWhileGhosted = true
		        end
		    end
		end
    end
    return CanSpawnWhileGhosted       
end

function NPC:Ghost()
	local ent = self:GetEnemy()
	local CanSpawnWhileGhosted = self:CanSpawn()
	if !self.VJ_IsBeingControlled then
		if IsValid(ent) then
			if (ent:IsPlayer() or ent:IsNPC()) then
		        if CurTime() > self.GhostRunAwayT then
		            self:VJ_TASK_COVER_FROM_ENEMY("TASK_RUN_PATH")
		            self.GhostRunAwayT = CurTime() +1
		        end
			    if CanSpawnWhileGhosted && self.HasSpawned == false then
			    	self.HasSpawned = true
			        self:SetGhost(false) 
			    end
			end
		end
	end
end

function NPC:PlayBacteria(bOverwrite)
	for k, v in ipairs(ents.FindByClass("npc_vj_l4d*")) do
		if (v ~= self && v.BacteriaSound && v.BacteriaSound:IsPlaying()) || (v.IncapSong && v.IncapSong:IsPlaying()) then
			if bOverwrite == true then
				v.BacteriaSound:Stop()
			else
				return
			end
		end
	end
	self.nextBacteria = CurTime() + math.random(14, 22)
	local bacteria = table.Random(self.SoundTbl_Bacteria)
	local filter = RecipientFilter()
	filter:AddAllPlayers()
	for k, v in ipairs(ents.FindByClass("player")) do 
		for l, w in ipairs(ents.FindByClass("npc_vj_l4d*")) do
			if w.VJ_IsBeingControlled == true && w.VJ_TheController == v then
				filter:RemovePlayer(v)
			end
		end
	end
	local sound = CreateSound(self, bacteria, filter)
	self.BacteriaSound = sound
	sound:SetSoundLevel(0)
	sound:Play()
    timer.Simple(SoundDuration(bacteria) * 3 + 1, function()
        if self.BacteriaSound == nil then return end
        self.BacteriaSound:Stop()
    end)
end

function NPC:PlayIncapSong(bOverwrite)
	if self.IncapSong && self.IncapSong:IsPlaying() then return end
	for k, v in ipairs(ents.FindByClass("npc_vj_l4d*")) do
		if IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == self.pIncapacitatedEnemy then
			if v ~= self && v.IncapSong && v.IncapSong:IsPlaying() then
				if bOverwrite == true then
					v.IncapSong:Stop()
				else
					return
				end
			end
		end
	end
	local sndIncap = table.Random(self.SoundTbl_Incapacitation)
	local filter = RecipientFilter()
	filter:AddPlayer(self.pIncapacitatedEnemy)
	local sound = CreateSound(self, sndIncap, filter)
	self.IncapSong = sound
	sound:SetSoundLevel(0)
	sound:Play()
	local function GetSongDuration()
		for s, t in pairs(tblIncapSongs) do
			local a, b = string.find(self:GetClass(), tostring(s))
			if a then
				return t
			end
		end
	end
    timer.Simple(GetSongDuration(), function()
        if self.IncapSong == nil then return end
        self.IncapSong:Stop()
        self.IncapSong = nil
    end)
end

function NPC:CanIncapacitate(ent)
    for k, v in ipairs(ents.FindByClass("npc_vj_l4d*")) do
        if v.HasEnemyIncapacitated == true && IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == ent then
            return false
        end
    end
    return true
end

function NPC:IsEntityAlly(ent)
    if ent:GetClass() == "obj_vj_bullseye" then
        return true
    end
    if ent:IsNPC() then
        if ent.IsVJBaseSNPC == true then
            for i = 1, table.Count(ent.VJ_NPC_Class) do
                if table.HasValue(self.VJ_NPC_Class, ent.VJ_NPC_Class[i]) then
                    return true
                end
            end
        end
    elseif ent:IsPlayer() then
        if table.HasValue(self.VJ_NPC_Class, "CLASS_PLAYER_ALLY") then
            return true
        end
        if self.VJ_IsBeingControlled && self.VJ_TheController == ent then 
            return true
        end
    end
    return false
end

function NPC:StripEnemyWeapons(ent)
    local weapons = ent:GetWeapons()
    self.tblEnemyWeapons = {}
    self.tblEnemyAmmo = {}
    self.tblEnemyAmmo = ent:GetAmmo()
    for l, w in ipairs(weapons) do
        if w.Base ~= "weapon_vj_base" then
            local index = table.Count(self.tblEnemyWeapons) + 1
            self.tblEnemyWeapons[index] = {}
            self.tblEnemyWeapons[index][1] = w:GetClass()
            self.tblEnemyWeapons[index][2] = {w:GetPrimaryAmmoType(), w:Clip1()}
            self.tblEnemyWeapons[index][3] = {w:GetSecondaryAmmoType(), w:Clip2()}
        end
    end
    ent:StripWeapons()
    ent:StripAmmo()
end
