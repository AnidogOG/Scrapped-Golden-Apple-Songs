function onBeatHit()
if curBeat >= 404 then
	makeLuaSprite('dingle', 'backgrounds/joke/sploink/Dingle', -400, -150);
	scaleObject('dingle', 1.2, 1.0);
	addLuaSprite('dingle', false);
end
end