function onBeatHit()
if curBeat >= 476 then
	makeLuaSprite('corn', 'backgrounds/joke/swagathon/coorn_platform', -350, 600);
	addLuaSprite('corn', false);
	scaleObject('corn', 1.3, 1.3)
end
end