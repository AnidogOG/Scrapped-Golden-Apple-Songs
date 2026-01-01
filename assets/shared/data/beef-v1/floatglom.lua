function onUpdate(elapsed)
	started = true
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/120)
	doTweenY('gfmove', 'gf', 200 - 250*math.sin((currentBeat+12*12)*math.pi), 1)
	end