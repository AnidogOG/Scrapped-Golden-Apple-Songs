function onBeatHit()
	if curBeat >= 512 then
		makeLuaSprite('big', 'backgrounds/joke/screwedathon/big', -600, -600);		
		addLuaSprite('big', false);
		scaleObject('big', 1, 1)
	end
end