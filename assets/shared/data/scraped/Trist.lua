function onBeatHit()
if curBeat >= 712 then
	makeAnimatedLuaSprite('flames', 'backgrounds/joke/scraped/flames', -400, -100);
	addAnimationByPrefix('flames', 'flames', 'FlamesBurn', 24, true);
	scaleObject('flames', 1.6, 1.6);
	addLuaSprite('flames', false);
end
end