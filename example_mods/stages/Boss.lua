function onCreate()
	makeLuaSprite('sky', 'backgrounds/covers/boss/sky', -500, -200);
	scaleObject('sky', 1.2, 1.2);
	addLuaSprite('sky', false);
	
	makeLuaSprite('floor', 'backgrounds/covers/boss/floor', -500, -100);
	scaleObject('floor', 1.2, 1.2);
	addLuaSprite('floor', false);
end