function onUpdatePost()
	if curBeat >= 1488 then
		removeLuaSprite('screwed_dark');
		makeLuaSprite('screwed_night_2', 'backgrounds/joke/screwedathon/screwed_night', -600, -600);		
		addLuaSprite('screwed_night_2', false);
		scaleObject('screwed_night_2', 1, 1)
	end
end