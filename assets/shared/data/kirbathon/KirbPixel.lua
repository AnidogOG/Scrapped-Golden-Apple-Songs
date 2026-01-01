function onBeatHit()
	if curBeat >= 400 then
	makeLuaSprite('kirbBgpixel', 'backgrounds/story/kirbathon/kirbBgpixel', -800, -800);
	scaleObject('kirbBgpixel', 1.3, 1.3);
	addLuaSprite('kirbBgpixel', false);
end
end