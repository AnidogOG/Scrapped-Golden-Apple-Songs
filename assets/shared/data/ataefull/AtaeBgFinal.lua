function onBeatHit()
if curBeat >= 1076 then
	makeLuaSprite('day sky 3', 'backgrounds/extras/ataefull/p1/day sky', -800, -800);
	scaleObject('day sky 3', 1.2, 1.2);
	addLuaSprite('day sky 3', false);
	
	makeLuaSprite('day cloud 3', 'backgrounds/extras/ataefull/p1/day cloud', -800, -800);
	scaleObject('day cloud 3', 1.2, 1.2);
	addLuaSprite('day cloud 3', false);
	
	makeLuaSprite('day ground 3', 'backgrounds/extras/ataefull/p1/day ground', -800, -800);
	scaleObject('day ground 3', 1.2, 1.2);
	addLuaSprite('day ground 3', false);

	makeLuaSprite('day bush 3', 'backgrounds/extras/ataefull/p1/day bush', -800, -800);
	scaleObject('day bush 3', 1.2, 1.2);
	addLuaSprite('day bush 3', true);
end
end