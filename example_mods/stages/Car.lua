function onCreate()
	makeLuaSprite('WhiteVoid', 'WhiteVoid', -600, -200);
	addLuaSprite('WhiteVoid', false);
	scaleObject('car', 1.2, 1.2);
	
	makeLuaSprite('car', 'backgrounds/ocs/car', -720, 320);
	scaleObject('car', 1.2, 1.2);
	addLuaSprite('car', true);
end