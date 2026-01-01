function onBeatHit()
if curBeat >= 268 then
	makeLuaSprite('sart', 'backgrounds/joke/sploink/Sart', -400, -100);
	scaleObject('sart', 1.2, 1.0);
	addLuaSprite('sart', false);
end
end