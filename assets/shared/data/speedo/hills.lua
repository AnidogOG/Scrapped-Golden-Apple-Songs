function onBeatHit()
if curBeat >= 292 then
	makeLuaSprite('space', 'backgrounds/ocs/Speedo/bg-mong', -250, 100);
	setScrollFactor('space', 1.0, 1.0);
	addLuaSprite('space', false);
end
end