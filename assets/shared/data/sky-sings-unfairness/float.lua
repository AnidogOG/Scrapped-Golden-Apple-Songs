function onUpdate(elapsed)
	started = true
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/120)
	doTweenY('opponentmove', 'dad', 200 - 250*math.sin((currentBeat+12*12)*math.pi), 3)
	end