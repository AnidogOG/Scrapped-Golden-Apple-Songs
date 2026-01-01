function onBeatHit()
if curBeat >= 120 then
	makeLuaSprite('black', 'BlackVoid', -400, -100);
	scaleObject('black', 1.2, 1.0);
	addLuaSprite('black', false);
end
end