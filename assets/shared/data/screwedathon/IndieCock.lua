function onBeatHit()
	if curBeat >= 576 then
		removeLuaSprite('big');
		makeLuaSprite('farmer', 'backgrounds/joke/screwedathon/farm', -600, -1100);		
		addLuaSprite('farmer', false);
		scaleObject('farmer', 2, 2.5)
	end
end