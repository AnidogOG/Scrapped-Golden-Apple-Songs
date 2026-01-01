function onUpdatePost()
	if curBeat >= 256 then
		makeLuaSprite('sky', 'backgrounds/secret/corrupted file/sky', -600, -200);
		scaleObject('sky', 1.8, 1.8);
		addLuaSprite('sky', false);
	
		makeLuaSprite('back', 'backgrounds/secret/corrupted file/back', -400, -200);
		scaleObject('back', 1.4, 1.4);
		addLuaSprite('back', false);
	
		makeLuaSprite('front', 'backgrounds/secret/corrupted file/front', -400, -200);
		scaleObject('front', 1.4, 1.4);
		addLuaSprite('front', false);
	end
end