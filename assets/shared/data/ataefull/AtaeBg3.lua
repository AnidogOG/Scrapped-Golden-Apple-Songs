function onBeatHit()
if curBeat >= 880 then	
	makeLuaSprite('sky road', 'backgrounds/extras/ataefull/p3/sky road', -800, -800);
	scaleObject('sky road', 0.6, 0.6);
	addLuaSprite('sky road', false);
	
	makeLuaSprite('city road', 'backgrounds/extras/ataefull/p3/city road', -800, -800);
	scaleObject('city road', 0.6, 0.6);
	addLuaSprite('city road', false);
	
	makeLuaSprite('lights road', 'backgrounds/extras/ataefull/p3/lights road', -800, -800);
	scaleObject('lights road', 0.6, 0.6);
	addLuaSprite('lights road', false);
	
	makeLuaSprite('road road', 'backgrounds/extras/ataefull/p3/road road', -800, -800);
	scaleObject('road road', 0.6, 0.6);
	addLuaSprite('road road', false);

	makeLuaSprite('bush road', 'backgrounds/extras/ataefull/p3/bush road', -800, -800);
	scaleObject('bush road', 0.6, 0.6);
	addLuaSprite('bush road', true);
end
end