function onBeatHit()
if curBeat >= 484 then
	makeLuaSprite('nyan', 'backgrounds/joke/sploink/Nyan', -400, -50);
	scaleObject('nyan', 1.2, 1.0);
	addLuaSprite('nyan', false);
end
end