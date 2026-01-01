function onUpdate()
if curBeat >= 476 then
	noteTweenX('opponent1', 0, 400, 0.1, 'linear')
	noteTweenX('opponent2', 1, 510, 0.1, 'linear')
	noteTweenX('opponent3', 2, 620, 0.1, 'linear')
	noteTweenX('opponent4', 3, 730, 0.1, 'linear')
	noteTweenX('player1', 4, 2400, 0.1, 'linear')
	noteTweenX('player2', 5, 3060, 0.1, 'linear')
	noteTweenX('player3', 6, 3720, 0.1, 'linear')
	noteTweenX('player4', 7, 4380, 0.1, 'linear')
end
end