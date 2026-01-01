function onBeatHit()
if curBeat >= 344 then
	makeLuaSprite('cave2', 'backgrounds/secret/squash/cave2', -580, -200);
	scaleObject('cave2', 1.0, 1.0);
	addLuaSprite('cave2', false);
end
end