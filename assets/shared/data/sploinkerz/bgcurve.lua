function onBeatHit()
if curBeat >= 64 then
	makeLuaSprite('stage', 'backgrounds/joke/sploink/Stage', -400, -100);
	scaleObject('stage', 1.2, 1.0);
	addLuaSprite('stage', false);
end
end