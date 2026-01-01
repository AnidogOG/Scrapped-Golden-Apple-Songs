function onUpdate(elapsed)
	started = true
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/120)
	doTweenY('opponentmove', 'dad', 150 - 200*math.sin((currentBeat+12*12)*math.pi), 2)
	end