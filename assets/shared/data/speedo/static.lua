function onBeatHit()
	if curBeat >= 288 then
	makeAnimatedLuaSprite('stat', 'backgrounds/ocs/speedo/give_me_all_your_zunk', -260, 100);
	addAnimationByPrefix('stat', 'stat', 'static', 24, true);
	scaleObject('stat', 4.9, 4.0);
	addLuaSprite('stat',true)
end
end