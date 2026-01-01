function onCreate()	
	makeLuaSprite('void', 'backgrounds/joke/wasted/void', -800, -400);
	scaleObject('void', 2.6, 2.6);
	addLuaSprite('void', false);
	
	makeLuaSprite('brown', 'backgrounds/joke/wasted/browninternetaccess', -300, -50);
	scaleObject('brown', 1.4, 1.4);
	addLuaSprite('brown', false);
		
	makeLuaSprite('text', 'backgrounds/joke/wasted/text', -400, 0);
	scaleObject('text', 1.6, 1.6);
	addLuaSprite('text', true);
	
	makeLuaSprite('black bar', 'backgrounds/joke/wasted/black bar', -420, -200);
	scaleObject('black bar', 1.6, 1.6);
	addLuaSprite('black bar', true);
end