function onBeatHit()
if curBeat >= 280 then
	makeLuaSprite('cave1', 'backgrounds/secret/squash/cave1', -380, -200);
	scaleObject('cave1', 1.0, 1.0);
	addLuaSprite('cave1', false);
end
end