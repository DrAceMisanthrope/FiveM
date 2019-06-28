--[[
	Roll Dice!
	Version: 0.2.0
	Author: Dr. Ace Misanthrope (https://github.com/PacificGL)
	License: GPLv3
	Description: FiveM Script - Roll x Dice with y Sides (Default 1 Dice and 6 Sides)
	Usage(s):    /roll    /roll 3    /roll 3 100
	Credits:
		- Alphie (https://www.twitch.tv/alphietv)
	Dependencies: 
		- 3dme (https://forum.fivem.net/t/release-me-but-the-text-is-3d-printed/149691)
--]]

RegisterCommand("roll", function(source, args, command)
	-- Editable
	local text = "Rolled: "
	local maxDice = 6
	local maxSides = 100
	-- NOT Editable
	local player = PlayerPedId(-1)
	local anim1 = "mp_player_int_wank_01_enter"
	local anim2 = "mp_player_int_wank_01_exit"
	local dice = {}
	local numOfDice = tonumber(args[1]) and tonumber(args[1]) or 1
	local numOfSides = tonumber(args[2]) and tonumber(args[2]) or 6
	if (numOfSides < 2 or numOfSides > maxSides) then numOfSides = 6 end
	if (numOfDice > 0 and numOfDice < (maxDice + 1)) then
		for i = 1, numOfDice do
			dice[i] = math.random(1, numOfSides)
		end
	else
		dice[1] = math.random(1, numOfSides)
	end
	for i = 1, #dice do
		text = text ..dice[i] .."/" ..numOfSides .."  "
	end
	-- Roll The Dice
	RequestAnimDict("mp_player_int_upperwank")
	TaskPlayAnim(player, "mp_player_int_upperwank", anim1, 8.0, -8, -1, 8, 0, 0, 0, 0)
	Wait(650)
	TaskPlayAnim(player, "mp_player_int_upperwank", anim2, 8.0, -8, -1, 8, 0, 0, 0, 0)
	Citizen.Wait(700)
	-- Display Results (Edit if using a 3dme alternative)
	TriggerServerEvent("3dme:shareDisplay", text)
end)

