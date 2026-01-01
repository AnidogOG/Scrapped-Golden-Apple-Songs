function onBeatHit()
if curBeat >= 296 then
	makeLuaSprite('black2', 'BlackVoid', -400, -100);
	scaleObject('black2', 1.2, 1.0);
	addLuaSprite('black2', false);
end
end