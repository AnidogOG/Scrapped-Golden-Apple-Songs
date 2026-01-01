function onBeatHit()
	if curBeat >= 240 then
	makeLuaSprite('BlackVoid2', 'BlackVoid', -400, -100);
	scaleObject('BlackVoid2', 1.4, 1.4);
	addLuaSprite('BlackVoid2', true);end
end