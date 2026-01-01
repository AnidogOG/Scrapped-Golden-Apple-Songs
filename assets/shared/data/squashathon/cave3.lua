function onBeatHit()
if curBeat >= 472 then
	makeLuaSprite('cave3', 'backgrounds/secret/squash/cave3', -500, -140);
	scaleObject('cave3', 1.0, 1.0);
	addLuaSprite('cave3', false);
	
	makeLuaSprite('purple', 'backgrounds/secret/squash/purple', 520, 200);
	scaleObject('purple', 0.8, 0.8);
	addLuaSprite('purple', false);
end
end