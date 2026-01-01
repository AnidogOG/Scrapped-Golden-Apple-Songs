function onCreate()
	makeLuaSprite('sky', 'backgrounds/extras/corndog/sky_night', -600, 50);
	scaleObject('sky', 0.9, 0.9);

	makeLuaSprite('hills', 'backgrounds/extras/freeexclusive/hills', -600, 20);
	scaleObject('hills', 0.9, 0.9);
	
	makeLuaSprite('grass bg', 'backgrounds/extras/freeexclusive/grass bg', -800, 600);
	scaleObject('grass bg', 0.9, 0.9);

	makeLuaSprite('gate', 'backgrounds/extras/freeexclusive/gate', -600, 370);
	scaleObject('gate', 0.9, 0.9);
	
	makeLuaSprite('grass', 'backgrounds/extras/freeexclusive/grass', -700, 600);
	scaleObject('grass', 0.9, 0.9);

	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
	addLuaSprite('grass bg', false);
	addLuaSprite('gate', false);
	addLuaSprite('grass', false);
end