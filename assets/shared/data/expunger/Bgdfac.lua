function onBeatHit()
	if curBeat >= 408 then
		makeLuaSprite('algebra', 'backgrounds/extras/algebraBg', -500, -260);
		scaleObject('algebra', 1.3, 1.3);
		addLuaSprite('algebra', false);
	end
end