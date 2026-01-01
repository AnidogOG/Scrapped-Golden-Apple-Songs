function onBeatHit()
if curBeat >= 404 then
	makeLuaSprite('plant', 'backgrounds/joke/swagathon/Unbg', -1000, -800);
	addLuaSprite('plant', false);
	scaleObject('plant', 3.0, 3.0)
		
	makeLuaSprite('best_gf', 'characters/joke/swagathon/WTF_WEIRDO', 200, 0);
	addLuaSprite('best_gf', false);
	scaleObject('best_gf', 2.3, 2.3)
end
end