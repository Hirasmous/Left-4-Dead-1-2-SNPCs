/*--------------------------------------------------
	=============== [VJ] Left 4 Dead 1-2 Special Infected SNPCs Autorun ===============
	*** Copyright (c) 2018-2021 by Hirasmous, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: This lua file is used for ghosting features and more
--------------------------------------------------*/

    local NPC = FindMetaTable("NPC")
    function NPC:SetGhost(bool)
		self.IsGhosted = bool
		self:DrawShadow(!bool)
		self.GodMode = bool
		self.VJ_NoTarget = bool
		--self.DisableMakingSelfEnemyToNPCs = bool
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
	    for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
	        if v ~= self && v.BacteriaSound && v.BacteriaSound:IsPlaying() then
	            if bOverwrite == true then
	                v.BacteriaSound:Stop()
	            else
	                return
	            end
	        end
	    end
	    for k, v in ipairs(ents.FindByClass("npc_vj_l4d_*")) do
	        if v ~= self && v.BacteriaSound && v.BacteriaSound:IsPlaying() then
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
	        for l, w in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do --for every entity that is another infected
	            if w.VJ_IsBeingControlled == true && w.VJ_TheController == v then --if the player, v, is controlling the infected then
	                filter:RemovePlayer(v) --remove the player v from being able to hear the bacteria 
	            end
	            if IsValid(w.pIncapacitatedEnemy) && w.pIncapacitatedEnemy == v then
	                filter:RemovePlayer(v)
	            end
	        end
	    end
	    local bacterianoise = CreateSound(game.GetWorld(), bacteria, filter)
	    self.BacteriaSound = bacterianoise
	    bacterianoise:SetSoundLevel(0)
	    bacterianoise:Play()
	    timer.Simple(SoundDuration(bacteria) * 3 + 1, function()
	        bacterianoise:Stop()
	    end)

		function NPC:Smoker_PlayIncapSong(bOverwrite,fadeout)
		    if fadeout == false then 
		        if self.IncapSong ~= nil && self.IncapSong:IsPlaying() then return end
		        if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy:IsPlayer() then
		            for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
		                if IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == self.pIncapacitatedEnemy && self.IsChokingEnemy == false then
		                    if v ~= self && v.IncapSong && v.IncapSong:IsPlaying() then
		                        if bOverwrite == true then
		                            v.IncapSong:Stop()
		                        else
		                            return
		                        end
		                    end
		                end
		            end
		            local sndIncap = self.SoundTbl_Incapacitation_Tied[1]
		            self.nextIncapSong = CurTime() + math.Round(SoundDuration(sndIncap))
		            local filter = RecipientFilter()
		            filter:AddPlayer(self.pIncapacitatedEnemy)
		            local sound = CreateSound(game.GetWorld(), sndIncap, filter)
		            self.IncapSong = sound
		            sound:SetSoundLevel(0)
		            sound:Play()
		            timer.Simple(math.Round(SoundDuration(sndIncap)), function()
		                sound:Stop()
		            end)
		            local id = self:EntIndex()
		            timer.Create("smoker"..id.."_CheckIncapSong", 0.1, math.Round(SoundDuration(sndIncap)) * 10, function()
		                if !IsValid(self) then timer.Stop("smoker"..id.."_CheckIncapSong") end
		                if self.HasEnemyIncapacitated == false then
		                    if self.IncapSong ~= nil then
		                        self.IncapSong:Play()
		                    end
		                end
		            end)
		            self:CallOnRemove("smoker_StopIncapSong", function(ent)
		                if ent.IncapSong ~= nil then
		                    ent.IncapSong:Stop()
		                end
		            end)
		        end
		    end
		    if fadeout == true then
		        if self.IncapSong && self.IncapSong:IsPlaying() then
		            self.IncapSong:Stop()
		            self.IncapSong = nil
		        end
		    end
		end
		
		function NPC:Smoker_PlayIncapSong_Choke(bOverwrite,fadeout)
		    if fadeout == false then 
		        if self.IncapSong2 ~= nil && self.IncapSong2:IsPlaying() then return end
		        if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy:IsPlayer() then
		            for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
		                if IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == self.pIncapacitatedEnemy && self.IsChokingEnemy == true then
		                    if v ~= self && v.IncapSong2 && v.IncapSong2:IsPlaying() then
		                        if bOverwrite == true then
		                            v.IncapSong2:Stop()
		                        else
		                            return
		                        end
		                    end
		                end
		            end
		            for k, v in ipairs(ents.FindByClass("npc_vj_l4d_*")) do
		                if IsValid(v.pIncapacitatedEnemy) && v.pIncapacitatedEnemy == self.pIncapacitatedEnemy && self.IsChokingEnemy == true then
		                    if v ~= self && v.IncapSong2 && v.IncapSong2:IsPlaying() then
		                        if bOverwrite == true then
		                            v.IncapSong2:Stop()
		                        else
		                            return
		                        end
		                    end
		                end
		            end
		            local sndIncap = self.SoundTbl_Incapacitation_Incap[1]
		            self.nextIncapSong2 = CurTime() + math.Round(SoundDuration(sndIncap))
		            local filter = RecipientFilter()
		            filter:AddPlayer(self.pIncapacitatedEnemy)
		            local sound2 = CreateSound(game.GetWorld(), sndIncap, filter)
		            self.IncapSong2 = sound2
		            sound2:SetSoundLevel(0)
		            sound2:Play()
		            timer.Simple(math.Round(SoundDuration(sndIncap)), function()
		                sound2:Stop()
		            end)
		            local id = self:EntIndex()
		            timer.Create("smoker"..id.."_CheckIncapSong", 0.1, math.Round(SoundDuration(sndIncap)) * 10, function()
		                if !IsValid(self) then timer.Stop("smoker"..id.."_CheckIncapSong") end
		                if self.HasEnemyIncapacitated == false then
		                    if self.IncapSong2 ~= nil then
		                        self.IncapSong2:Play()
		                    end
		                end
		            end)
		            self:CallOnRemove("smoker_StopIncapSong", function(ent)
		                if ent.IncapSong2 ~= nil then
		                    ent.IncapSong2:Stop()
		                end
		            end)
		        end
		    end
		    if fadeout == true then
		        if self.IncapSong2 && self.IncapSong2:IsPlaying() then
		            self.IncapSong2:Stop()
		            self.IncapSong2 = nil
		        end
		    end
		end

		function NPC:Jockey_PlayIncapSong(bOverwrite,fadeout)
		    if fadeout == false then 
		        if self.IncapSong ~= nil && self.IncapSong:IsPlaying() then return end
		        if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy:IsPlayer() then
		            for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
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
		            local sndIncap = self.SoundTbl_Incapacitation[1]
		            self.nextIncapSong = CurTime() + math.Round(SoundDuration(sndIncap))
		            local filter = RecipientFilter()
		            filter:AddPlayer(self.pIncapacitatedEnemy)
		            local sound = CreateSound(game.GetWorld(), sndIncap, filter)
		            self.IncapSong = sound
		            sound:SetSoundLevel(0)
		            sound:Play()
		            timer.Simple(math.Round(SoundDuration(sndIncap)), function()
		                sound:Stop()
		            end)
		            local id = self:EntIndex()
		            timer.Create("jockey"..id.."_CheckIncapSong", 0.1, math.Round(SoundDuration(sndIncap)) * 10, function()
		                if !IsValid(self) then timer.Stop("jockey" ..id.. "_CheckIncapSong") end
		                if self.HasEnemyIncapacitated == false then
		                    if self.IncapSong ~= nil then
		                        self.IncapSong:Play()
		                    end
		                end
		            end)
		            self:CallOnRemove("jockey" .. "_StopIncapSong", function(ent)
		                if ent.IncapSong ~= nil then
		                    ent.IncapSong:Stop()
		                end
		            end)
		        end
		    end
		    if fadeout == true then
		        if self.IncapSong && self.IncapSong:IsPlaying() then
		            self.IncapSong:Stop()
		            self.IncapSong = nil
		        end
		    end
		end

		function NPC:Hunter_PlayIncapSong(bOverwrite,fadeout)
		    if fadeout == false then 
		        if self.IncapSong ~= nil && self.IncapSong:IsPlaying() then return end
		        if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy:IsPlayer() then
		            for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
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
		            local sndIncap = self.SoundTbl_Incapacitation[1]
		            self.nextIncapSong = CurTime() + math.Round(SoundDuration(sndIncap))
		            local filter = RecipientFilter()
		            filter:AddPlayer(self.pIncapacitatedEnemy)
		            local sound = CreateSound(game.GetWorld(), sndIncap, filter)
		            self.IncapSong = sound
		            sound:SetSoundLevel(0)
		            sound:Play()
		            timer.Simple(math.Round(SoundDuration(sndIncap)), function()
		                sound:Stop()
		            end)
		            local id = self:EntIndex()
		            timer.Create("hunter"..id.."_CheckIncapSong", 0.1, math.Round(SoundDuration(sndIncap)) * 10, function()
		                if !IsValid(self) then timer.Stop("hunter" ..id.. "_CheckIncapSong") end
		                if self.HasEnemyIncapacitated == false then
		                    if self.IncapSong ~= nil then
		                        self.IncapSong:Play()
		                    end
		                end
		            end)
		            self:CallOnRemove("hunter_StopIncapSong", function(ent)
		                if ent.IncapSong ~= nil then
		                    ent.IncapSong:Stop()
		                end
		            end)
		        end
		    end
		    if fadeout == true then
		        if self.IncapSong && self.IncapSong:IsPlaying() then
		            self.IncapSong:Stop()
		            self.IncapSong = nil
		        end
		    end
		end

		function NPC:Charger_PlayIncapSong(bOverwrite,fadeout)
		    if fadeout == false then 
		        if self.IncapSong ~= nil && self.IncapSong:IsPlaying() then return end
		        if IsValid(self.pIncapacitatedEnemy) && self.pIncapacitatedEnemy:IsPlayer() then
		            for k, v in ipairs(ents.FindByClass("npc_vj_l4d2_*")) do
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
		            local sndIncap = self.SoundTbl_Incapacitation[1]
		            self.nextIncapSong = CurTime() + math.Round(SoundDuration(sndIncap))
		            local filter = RecipientFilter()
		            filter:AddPlayer(self.pIncapacitatedEnemy)
		            local sound = CreateSound(game.GetWorld(), sndIncap, filter)
		            self.IncapSong = sound
		            sound:SetSoundLevel(0)
		            sound:Play()
		            timer.Simple(math.Round(SoundDuration(sndIncap)), function()
		                sound:Stop()
		            end)
		            local id = self:EntIndex()
		            timer.Create("charger"..id.."_CheckIncapSong", 0.1, math.Round(SoundDuration(sndIncap)) * 10, function()
		                if !IsValid(self) then timer.Stop("charger"..id.."_CheckIncapSong") end
		                if self.HasEnemyIncapacitated == false then
		                    if self.IncapSong ~= nil then
		                        self.IncapSong:Play()
		                    end
		                end
		            end)
		            self:CallOnRemove("charger_StopIncapSong", function(ent)
		                if ent.IncapSong ~= nil then
		                    ent.IncapSong:Stop()
		                end
		            end)
		        end
		    end
		    if fadeout == true then
		        if self.IncapSong && self.IncapSong:IsPlaying() then
		            self.IncapSong:Stop()
		            self.IncapSong = nil
		        end
		    end
		end
    end
