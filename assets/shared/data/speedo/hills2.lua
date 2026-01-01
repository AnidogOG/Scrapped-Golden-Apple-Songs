function onBeatHit()
if curBeat >= 328 then
	makeLuaSprite('bg2', 'backgrounds/ocs/Speedo/bg', -250, 100);
	setScrollFactor('bg2', 1.0, 1.0);
	addLuaSprite('bg2', false);
end
end