function onCreate()
	makeLuaSprite('sky', 'backgrounds/joke/swagathon/sky_the_persson', -1000, -800);
	addLuaSprite('sky', false);
	scaleObject('sky', 6.0, 6.0)
	
	makeLuaSprite('back', 'backgrounds/joke/poopers/poopback', -100, 100);
	addLuaSprite('back', false);
	scaleObject('back', 4.0, 4.0)
	
	makeLuaSprite('bg', 'backgrounds/joke/poopers/poopbg', -600, -400);
	addLuaSprite('bg', false);
	scaleObject('bg', 4.0, 4.0)
	
	makeLuaSprite('best_gf', 'characters/joke/best_gf', 400, 260);
	addLuaSprite('best_gf', false);
	scaleObject('best_gf', 2.3, 2.3)
end