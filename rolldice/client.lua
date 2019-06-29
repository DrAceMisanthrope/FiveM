
maxDice = 6
maxDiceSides = 100

RegisterCommand("roll", function(source, args, command)

	local text = "Rolled: "
	local animDict = "mp_player_int_upperwank"
	local dice = {}
	local numOfDice = tonumber(args[1]) and tonumber(args[1]) or 1
	local numOfSides = tonumber(args[2]) and tonumber(args[2]) or 6
	if (numOfDice < 1 or numOfDice > maxDice) then numOfDice = 1 end
	if (numOfSides < 2 or numOfSides > maxDiceSides) then numOfSides = 6 end
	for i = 1, numOfDice do
		dice[i] = math.random(1, numOfSides)
		text = text ..dice[i] .."/" ..numOfSides .."  "
	end
	RequestAnimDict(animDict)
	TaskPlayAnim(PlayerPedId(-1), animDict, "mp_player_int_wank_01_enter", 8.0, -8, -1, 8, 0, 0, 0, 0)
	Wait(650)
	TaskPlayAnim(PlayerPedId(-1), animDict, "mp_player_int_wank_01_exit", 8.0, -8, -1, 8, 0, 0, 0, 0)
	Citizen.Wait(700)
	TriggerServerEvent("3dme:shareDisplay", text) -- Edit if using a 3dme alternative
end)
TriggerEvent("chat:addSuggestion", "/roll", "Roll dice", {
    { name="Dice", help="Number of dice (1-" ..maxDice ..")" },
    { name="Sides", help="Number of sides (2-" ..maxDiceSides ..")" },
})
