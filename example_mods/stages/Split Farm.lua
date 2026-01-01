function onCreate()
	makeLuaSprite('sky_night', 'backgrounds/extras/corndog/sky_night', -600, 50);
	scaleObject('sky_night', 0.9, 0.9);

	makeLuaSprite('gm_flatgrass', 'backgrounds/extras/corndog/gm_flatgrass', 300, 140);
	scaleObject('gm_flatgrass', 0.4, 0.4);
	
	makeLuaSprite('orangey hills', 'backgrounds/extras/corndog/orangey hills', -180, 180);
	scaleObject('orangey hills', 1.0, 1.0);

	makeLuaSprite('funfarmhouse', 'backgrounds/extras/corndog/funfarmhouse', 100, 190);
	scaleObject('funfarmhouse', 0.9, 0.9);
	
	makeLuaSprite('grass lands', 'backgrounds/extras/corndog/grass lands', -500, 480);
	scaleObject('grass lands', 0.9, 0.9);

	makeLuaSprite('cornFence', 'backgrounds/extras/corndog/cornFence', -380, 240);
	scaleObject('cornFence', 0.9, 0.9);

	makeLuaSprite('cornFence2', 'backgrounds/extras/corndog/cornFence2', 1100, 230);
	scaleObject('cornFence2', 0.9, 0.9);

	makeLuaSprite('sign', 'backgrounds/extras/corndog/sign', -20, 400);
	scaleObject('sign', 0.9, 0.9);
	
	makeLuaSprite('picnic_towel_thing', 'backgrounds/extras/corndog/picnic_towel_thing', 1080, 640);
	scaleObject('picnic_towel_thing', 0.9, 0.9);

	makeLuaSprite('cornbag', 'backgrounds/extras/corndog/cornbag', 1200, 560);
	scaleObject('cornbag', 0.9, 0.9);

	addLuaSprite('sky_night', false);
	addLuaSprite('gm_flatgrass', false);
	addLuaSprite('orangey hills', false);
	addLuaSprite('funfarmhouse', false);
	addLuaSprite('grass lands', false);
	addLuaSprite('cornFence', false);
	addLuaSprite('cornFence2', false);
	addLuaSprite('sign', false);
	addLuaSprite('picnic_towel_thing', false);
	addLuaSprite('cornbag', false);
end