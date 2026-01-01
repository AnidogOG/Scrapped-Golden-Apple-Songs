function onBeatHit()
	if curBeat >= 324 then
	makeAnimatedLuaSprite('stattwo', 'backgrounds/ocs/speedo/give_me_all_your_zunk', -260, 100);
	addAnimationByPrefix('stattwo', 'stattwo', 'static', 24, true);
	scaleObject('stattwo', 4.9, 4.0);
	addLuaSprite('stattwo',true)
end
end