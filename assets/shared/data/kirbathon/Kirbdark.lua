function onBeatHit()
	if curBeat >= 960 then
	makeLuaSprite('kirbBg', 'backgrounds/story/kirbathon/kirbBgdark', -500, -560);
	scaleObject('kirbBg', 1.3, 1.3);
	addLuaSprite('kirbBg', false);
end
end