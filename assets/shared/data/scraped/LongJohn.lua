function onBeatHit()
if curBeat >= 320 then
	makeLuaSprite('nightSky', 'backgrounds/joke/scraped/nightSky', -500, -70);
	scaleObject('nightSky', 1.6, 1.6);

	makeLuaSprite('grass', 'backgrounds/joke/scraped/grass', -500, 20);
	scaleObject('grass', 1.6, 1.6);
	
	makeLuaSprite('gates', 'backgrounds/joke/scraped/gates', -500, 0);
	scaleObject('gates', 1.6, 1.6);

	makeLuaSprite('floor', 'backgrounds/joke/scraped/floor', -500, 0);
	scaleObject('floor', 1.6, 1.6);
	
	addLuaSprite('nightSky', false);
	addLuaSprite('grass', false);
	addLuaSprite('gates', false);
	addLuaSprite('floor', false);
end
end