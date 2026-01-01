function onBeatHit()
	if curBeat >= 592 then
	makeLuaSprite('BlackVoid', 'BlackVoid', -400, -100);
	scaleObject('BlackVoid', 1.4, 1.4);
	addLuaSprite('BlackVoid', true);
end
end