function onBeatHit()
if curBeat >= 496 then	
	makeLuaSprite('day sky 2', 'backgrounds/extras/ataefull/p2/day sky', -800, -800);
	scaleObject('day sky 2', 0.6, 0.6);
	addLuaSprite('day sky 2', false);
	
	makeLuaSprite('day lights 2', 'backgrounds/extras/ataefull/p2/day lights', -800, -800);
	scaleObject('day lights 2', 0.6, 0.6);
	addLuaSprite('day lights 2', false);
	
	makeLuaSprite('day ground 2', 'backgrounds/extras/ataefull/p2/day ground', -800, -800);
	scaleObject('day ground 2', 0.6, 0.6);
	addLuaSprite('day ground 2', false);

	makeLuaSprite('day bush 2', 'backgrounds/extras/ataefull/p2/day bush', -800, -800);
	scaleObject('day bush 2', 0.6, 0.6);
	addLuaSprite('day bush 2', true);
end
end