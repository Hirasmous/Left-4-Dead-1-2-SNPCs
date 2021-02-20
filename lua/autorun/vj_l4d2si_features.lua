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

function NPC:IsShoved()
    local seq = self:GetSequenceName(self:GetSequence())
    local s, e = string.find(seq, "Shoved_")
    if s then
        return true
    end
    return false
end

function NPC:SetGhost(bool)
	self.IsGhosted = bool
	self:DrawShadow(!bool)
	self.GodMode = bool
	self.VJ_NoTarget = bool
	self.HasSounds = !bool
	self.HasMeleeAttack = !bool
	self.GhostRunAwayT = 0
	self:SetNW2Bool("Ghosted",bool)
	if bool then
	    self:SetRenderMode(RENDERMODE_NONE)
	    self:EmitSound("ui/menu_horror01.mp3")
		self:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
	else
		self:SetRenderMode(RENDERMODE_NORMAL)
		self:EmitSound("ui/pickup_guitarriff10.mp3")
		self:SetCollisionGroup(COLLISION_GROUP_NPC)
        if self:GetClass() == "npc_vj_l4d2_hunter" or self:GetClass() == "npc_vj_l4d_hunter" then
            self.HasLeapAttack = true
        end
	end
end

function NPC:CanSpawn()
	local ent = self:GetEnemy()
    local CanSpawnWhileGhosted = false
	if self.VJ_IsBeingControlled == false then
		if IsValid(ent) then
			if ent:GetPos():Distance(self:GetPos()) > 500 then
	    		if (ent:IsPlayer() or ent:IsNPC()) then
			        if ent:Visible(self) then
			        	CanSpawnWhileGhosted = false
			        else
			        	CanSpawnWhileGhosted = true
			        end
			    end
			end
		end
    else
        CanSpawnWhileGhosted = true
    end
    return CanSpawnWhileGhosted       
end

function NPC:Ghost()
	local ent = self:GetEnemy()
	local CanSpawnWhileGhosted = self:CanSpawn()
	if self.VJ_IsBeingControlled == false then
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

function NPC:IgnoreIncappedEnemies()
    local function CalcDistance(pos1, pos2)
        return pos1:Distance(pos2)
    end
    local function GetNextClosestEnemy(enemy)
        local tbl = {}
        for _, x in ipairs(ents.GetAll()) do
            if x ~= enemy && (x:IsNPC() || (x:IsPlayer() && x:Alive() && GetConVar("ai_ignoreplayers"):GetInt() == 0)) then
                if self:Disposition(x) == D_HT then
                    tbl[table.Count(tbl) + 1] = {x:EntIndex(), CalcDistance(self:GetPos(), x:GetPos())}
                    for y, z in ipairs(ents.FindByClass("npc_vj_l4d*")) do
                        if z.pIncapacitatedEnemy == x then
                            table.remove(tbl, table.KeyFromValue(tbl, x:EntIndex()))
                        end
                    end
                end
            end
        end
        if table.Count(tbl) > 0 then
            table.sort(tbl, function(a, b) return a[2] < b[2] end)
            return ents.GetByIndex(tbl[1][1])
        end
        return nil
    end
    for k, v in ipairs(ents.FindByClass("npc_vj_l4d*")) do
        if v ~= self && IsValid(v.pIncapacitatedEnemy) && v.HasEnemyIncapacitated then
            local ene = v.pIncapacitatedEnemy
            if self:GetEnemy() == ene then
                self:VJ_DoSetEnemy(GetNextClosestEnemy(ene) or ene, false, false)
            end
        end
    end
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

-- Witch --
function NPC:PlayCalmIdleSound()
    if self.m_idleSound && self.m_idleSound:IsPlaying() then return end
    if math.random(1, 10) ~= 1 then return end
    if self.bTriggered then return end
    if not self:CanPlayMusic(2) then return end
    local filter = RecipientFilter()
    filter:AddAllPlayers()
    local idleSound = table.Random(self.SoundTbl_CalmIdle)
    local pt = "CSoundPatch ".."["..string.Replace(idleSound, "\"", "").."]"
    for k, v in ipairs(ents.FindByClass("player")) do 
        for l, w in ipairs(ents.FindByClass("npc_vj_l4d*")) do
            if w.VJ_IsBeingControlled == true && w.VJ_TheController == v then
                filter:RemovePlayer(v)
            end
        end
    end
    local sound = CreateSound(self, idleSound, filter)
    self.m_idleSound = sound
    sound:SetSoundLevel(80)
    sound:Play()
    timer.Simple(4, function()
        local p = pt
        if self.m_idleSound == nil then return end
        if tostring(self.m_idleSound) ~= pt then return end
        self.m_idleSound:Stop()
    end)
end

function NPC:PlayIrritatedSound(level)
    if self.bTriggered then return end
    if not self:CanPlayMusic(2) then return end
    local idleSound
    if level == 1 then
        idleSound = "vj_l4d2/music/witch/loud_angry_little_witch_04.mp3"
    elseif level == 2 then
        idleSound = "vj_l4d2/music/witch/loud_angry_little_witch_03.mp3"
    elseif level == 3 then
        idleSound = "vj_l4d2/music/witch/loud_angry_little_witch_02.mp3"
    elseif level == 4 then
        idleSound = "vj_l4d2/music/witch/loud_angry_little_witch_01.mp3"
    end
    local pt = "CSoundPatch ".."["..string.Replace(idleSound, "\"", "").."]"
    if self.m_idleSound && self.m_idleSound:IsPlaying() then 
        if tostring(self.m_idleSound) == pt then
            return 
        else
            self.m_idleSound:FadeOut(1)
        end
    end
    local filter = RecipientFilter()
    filter:AddAllPlayers()
    for k, v in ipairs(ents.FindByClass("player")) do 
        for l, w in ipairs(ents.FindByClass("npc_vj_l4d*")) do
            if w.VJ_IsBeingControlled == true && w.VJ_TheController == v then
                filter:RemovePlayer(v)
            end
        end
    end
    local sound = CreateSound(self, idleSound, filter)
    self.m_idleSound = sound
    sound:SetSoundLevel(80)
    sound:Play()
    timer.Simple(4, function()
        local p = pt
        if self.m_idleSound == nil then return end
        if tostring(self.m_idleSound) ~= pt then return end
        self.m_idleSound:Stop()
    end)
end

function NPC:CanPlayMusic(iType)
    iType = iType or 1
    local tbl = {"npc_vj_l4d_witch", "npc_vj_l4d2_witch_s", "npc_vj_l4d2_witch_w"}
    for k, v in ipairs(ents.FindByClass("npc_vj_l4d*")) do
        if v ~= self && table.HasValue(tbl, v:GetClass()) then
            if iType == 1 then
                if v.IncapSong && v.IncapSong:IsPlaying() then
                    return false
                end
            elseif iType == 2 then
                if v.m_idleSound && v.m_idleSound:IsPlaying() then
                    return false
                end
            end
        end
    end
    return true
end

function NPC:PlayWitchMusic(iType, bOverwrite)
    if self.Dead then return end
    if not self:CanPlayMusic(1) then return end
    local song
    local tm
    if iType == 1 then
        song = table.Random(self.SoundTbl_IdleSoundtrack)
        tm = 16
    elseif iType == 2 then
        song = table.Random(self.SoundTbl_AlertedSoundtrack)
        tm = 31
    elseif iType == 3 then
        song = table.Random(self.SoundTbl_OnFireSoundtrack)
        tm = 27
    end
    local pt = "CSoundPatch ".."["..string.Replace(song, "\"", "").."]"
    if self.IncapSong && self.IncapSong:IsPlaying() then 
        if tostring(self.IncapSong) == pt then
            return 
        else
            self.IncapSong:FadeOut(1)
        end
    end
    local filter = RecipientFilter()
    filter:AddAllPlayers()
    for k, v in ipairs(ents.FindByClass("player")) do 
        for l, w in ipairs(ents.FindByClass("npc_vj_l4d*")) do
            if w.VJ_IsBeingControlled == true && w.VJ_TheController == v then
                filter:RemovePlayer(v)
            end
        end
    end
    local sound = CreateSound(self, song, filter)
    self.IncapSong = sound
    if iType == 1 then
        sound:SetSoundLevel(85)
    else
        sound:SetSoundLevel(0)
    end
    sound:Play()
    timer.Simple(tm, function()
        local p = pt
        if self.IncapSong == nil then return end
        if tostring(self.IncapSong) ~= p then return end
        self.IncapSong:Stop()
    end)
    self:CallOnRemove("Witch_StopMusic", function()
        if self.IncapSong ~= nil then
            self.IncapSong:Stop()
        end
    end)
end

function NPC:CreateAggressionSound(scale)
    if self.AggressionSound && self.AggressionSound:IsPlaying() then return end
    local scale = scale or 1
    local snd
    if scale == 1 then
        snd = "npc/witch/voice/mad/zombiefemale_growl1.mp3"
        self.AggressionSound = CreateSound(self, snd)
        self.AggressionSound:Play()
    elseif scale == 2 then
        snd = "npc/witch/voice/mad/zombiefemale_growl6.mp3"
        self.AggressionSound = CreateSound(self, snd)
        self.AggressionSound:Play()
    elseif scale == 3 then
        snd = "npc/witch/voice/mad/female_ls_d_madscream0"..math.random(1, 3)..".mp3"
        self.AggressionSound = CreateSound(self, snd)
        self.AggressionSound:Play()
    end
    timer.Simple(2, function()
        if self.AggressionSound == nil then return end
        self.AggressionSound:Stop()
        self.AggressionSound = nil
    end)
end

function NPC:GetEnemiesInRange()
    if self.bTriggered == true then return end
    local tbl = {}
    for k, v in ipairs(ents.FindInSphere(self:GetPos(), 600)) do
        if IsValid(v) && v ~= self then
            if v:IsNPC() || v:IsNextBot() || (v:IsPlayer() && v:Alive() && GetConVar("ai_ignoreplayers"):GetInt() == 0) then
                if self:IsEntityAlly(v) == false then
                    local dist = self:GetPos():Distance(v:GetPos())
                    if (v:IsPlayer() && util.TraceLine(util.GetPlayerTrace(v)).Entity == self && v:FlashlightIsOn()) or dist <= 200 then
                        tbl[table.Count(tbl) + 1] = {v:EntIndex(), v:GetPos():Distance(self:GetPos())}
                        table.sort(tbl, function(a, b) return a[2] < b[2] end)
                        self.pTargetEntity = tbl[1][1]
                        return true
                    end
                end
            end
        end
    end
    return false
end




    
