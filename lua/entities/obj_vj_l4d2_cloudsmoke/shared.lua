ENT.Type 			= "anim"
ENT.Base 			= "obj_vj_projectile_base"
ENT.PrintName		= "Projectile"
ENT.Author 			= "Hirasmous"
ENT.Contact 		= "http://vrejgaming.webs.com/"
ENT.Information		= "Smoker Gas Cloud"
ENT.Category		= "Left 4 Dead 2"

ENT.Spawnable			= false
ENT.AdminSpawnable		= false

if CLIENT then
	net.Receive("Smoker_CloudSmokeInit", function()
		local id = tonumber(net.ReadString())
		local vec = net.ReadVector()
		local tab
		local val
		if not timer.Exists("Smoker"..id.."_DrawScreenSmoke") then
			timer.Create("Smoker"..id.."_DrawScreenSmoke", 0.1, 100, function()
				for k, v in ipairs(ents.FindInSphere(vec, 200)) do
					if IsValid(v) then
						if v == LocalPlayer() then
							local dist = v:GetPos():Distance(vec)
							val = math.Remap(dist or 0, 250, 0, 1, 0.05)
							tab = {
								[ "$pp_colour_addr" ] = 0.0,
								[ "$pp_colour_addg" ] = 0.0,
								[ "$pp_colour_addb" ] = 0,
								[ "$pp_colour_brightness" ] = 0,
								[ "$pp_colour_contrast" ] = val,
								[ "$pp_colour_colour" ] = 1,
								[ "$pp_colour_mulr" ] = 0,
								[ "$pp_colour_mulg" ] = 0,
								[ "$pp_colour_mulb" ] = 0
							}
							hook.Add("RenderScreenspaceEffects", "Smoker_DrawScreenSmoke", function()
								DrawColorModify(tab)
							end)
						end
					end
				end
			end)
		end
		local tm = 11
		if timer.Exists("Smoker"..id.."_DrawScreenSmoke") then
			tm = timer.RepsLeft("Smoker"..id.."_DrawScreenSmoke") * 0.1 + 1
		end
		timer.Simple(tm, function()
			hook.Add("RenderScreenspaceEffects", "Smoker_DrawScreenSmoke", function()
				DrawColorModify({
					[ "$pp_colour_addr" ] = 0.0,
					[ "$pp_colour_addg" ] = 0.0,
					[ "$pp_colour_addb" ] = 0,
					[ "$pp_colour_brightness" ] = 0,
					[ "$pp_colour_contrast" ] = 1 + val,
					[ "$pp_colour_colour" ] = 1,
					[ "$pp_colour_mulr" ] = 0,
					[ "$pp_colour_mulg" ] = 0,
					[ "$pp_colour_mulb" ] = 0
				})
			end)
			hook.Remove("RenderScreenspaceEffects", "Smoker_DrawScreenSmoke")
		end)
	end)
end
