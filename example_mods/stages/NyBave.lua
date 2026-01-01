function onCreate()
	makeLuaSprite('mysky', 'backgrounds/secret/myhouse/mysky', -500, -200);
	scaleObject('mysky', 1.6, 1.6);
	addLuaSprite('mysky', false);
	
	makeLuaSprite('mygate', 'backgrounds/secret/myhouse/mygate', -500, -200);
	scaleObject('mygate', 1.6, 1.6);
	addLuaSprite('mygate', false);	
	
	makeLuaSprite('mygrass', 'backgrounds/secret/myhouse/mygrass', -500, -200);
	scaleObject('mygrass', 1.6, 1.6);
	addLuaSprite('mygrass', false);		
end