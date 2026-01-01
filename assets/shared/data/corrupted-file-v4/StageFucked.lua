function onBeatHit()
	if curBeat >= 128 then
		removeLuaSprite('q');
	
		makeLuaSprite('stageback', 'backgrounds/secret/corrupted file/stageback', -600, -300);
		setScrollFactor('stageback', 0.9, 0.9);
	
		makeLuaSprite('stagefront', 'backgrounds/secret/corrupted file/stagefront', -650, -300);
		setScrollFactor('stagefront', 0.9, 0.9);
		scaleObject('stagefront', 1.1, 1.1);

		makeLuaSprite('stagecurtains', 'backgrounds/secret/corrupted file/stagecurtains', -500, -280);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);

		addLuaSprite('stageback', false);
		addLuaSprite('stagefront', false);
		addLuaSprite('stagecurtains', false);
	end
end