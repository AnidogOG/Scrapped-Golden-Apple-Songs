function onCreate()	
	makeLuaSprite('gameplay', 'backgrounds/iykyk/curveball/gameplay', -400, -80);
	scaleObject('gameplay', 1.0, 1.0);
	addLuaSprite('gameplay', false);
	
	makeLuaSprite('profiles', 'backgrounds/iykyk/curveball/profiles', -400, -80);
	scaleObject('profiles', 1.0, 1.0);
	addLuaSprite('profiles', false);
	
	makeLuaSprite('idk_what_these_called', 'backgrounds/iykyk/curveball/idk_what_these_called', -400, -80);
	scaleObject('idk_what_these_called', 1.0, 1.0);
	addLuaSprite('idk_what_these_called', true);
	
	makeLuaSprite('layout_frames', 'backgrounds/iykyk/curveball/layout_frames', -400, -80);
	scaleObject('layout_frames', 1.0, 1.0);
	addLuaSprite('layout_frames', true);
	
	makeLuaSprite('microphones', 'backgrounds/iykyk/curveball/microphones', -400, -80);
	scaleObject('microphones', 1.0, 1.0);
	addLuaSprite('microphones', true);
end