function onBeatHit()
	if curBeat >= 1632 then
		makeLuaSprite('RED', 'backgrounds/joke/screwedathon/RED', -600, -600);		
		addLuaSprite('RED', false);
		scaleObject('RED', 1, 1)
	end
end