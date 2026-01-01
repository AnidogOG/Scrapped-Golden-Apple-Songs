function onBeatHit()
if curBeat >= 136 then
	makeLuaSprite('moldy_shit_2', 'backgrounds/joke/awesome/moldy_shit', -500, -400);
	addLuaSprite('moldy_shit_2', false);
	scaleObject('moldy_shit_2', 6.2, 6.0)
	
	makeLuaSprite('best_gf_2', 'characters/joke/best_gf', 400, 260);
	addLuaSprite('best_gf_2', false);
	scaleObject('best_gf_2', 2.3, 2.3)
end
end