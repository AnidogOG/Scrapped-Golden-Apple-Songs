function onCreate()
	makeLuaSprite('MeatBack', 'backgrounds/ocs/beef/MeatBack', -800, -200);
	scaleObject('MeatBack', 1.2, 1.2);
	addLuaSprite('MeatBack', false);	
	
	makeLuaSprite('MeatFront', 'backgrounds/ocs/beef/MeatFront', -900, -200);
	scaleObject('MeatFront', 1.2, 1.2);
	addLuaSprite('MeatFront', false);
end