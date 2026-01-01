function onBeatHit()
	if curBeat >= 412 then
	makeAnimatedLuaSprite('Static', 'backgrounds/joke/sploink/Static', -260, 100);
	addAnimationByPrefix('Static', 'Static', 'staticFLASH', 24, true);
	scaleObject('Static', 4.9, 4.0);
	addLuaSprite('Static',true)
end
end