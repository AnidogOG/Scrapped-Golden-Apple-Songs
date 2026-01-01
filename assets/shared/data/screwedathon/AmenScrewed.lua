function onUpdatePost()
	if curBeat >= 1024 then
		removeLuaSprite('yup');
		makeLuaSprite('screwed_dark', 'backgrounds/joke/screwedathon/screwed_dark', -600, -600);		
		addLuaSprite('screwed_dark', false);
		scaleObject('screwed_dark', 1, 1)
	end
end