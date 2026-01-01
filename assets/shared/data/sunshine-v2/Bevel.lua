function onBeatHit()
	if curBeat >= 148 then
	makeAnimatedLuaSprite('sky_loop','backgrounds/covers/sunshine/sky_loop', -400, -200)
	addAnimationByPrefix('sky_loop', 'sky_loop', 'idle', 24, true);
	addLuaSprite('sky_loop',false)
	scaleObject('sky_loop', 1.8, 1.8);
end
end