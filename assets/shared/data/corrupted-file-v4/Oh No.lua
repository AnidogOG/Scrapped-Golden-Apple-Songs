function onBeatHit()
	if curBeat >= 448 then
		makeLuaSprite('q (0)', 'backgrounds/secret/corrupted file/q (0)', -200, 0);
		scaleObject('q (0)', 1.4, 1.4);
		addLuaSprite('q (0)', false);
	
		makeLuaSprite('guy_guy_guy_guy', 'backgrounds/secret/corrupted file/guy_guy_guy_guy', 600, 760);
		scaleObject('guy_guy_guy_guy', 0.4, 0.4);
		addLuaSprite('guy_guy_guy_guy', false);

		makeAnimatedLuaSprite('haha scaredy cat', 'backgrounds/secret/corrupted file/haha scaredy cat', 560, 260);
		addAnimationByPrefix('haha scaredy cat', 'haha scaredy cat', 'fnf', 24, true);
		scaleObject('haha scaredy cat', 1.0, 1.0);
		addLuaSprite('haha scaredy cat', false);

	end
end