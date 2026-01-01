function onBeatHit()
if curBeat >= 280 then
	makeLuaSprite('moldy_shit_3', 'backgrounds/joke/awesome/moldy_shit', -500, -400);
	addLuaSprite('moldy_shit_3', false);
	scaleObject('moldy_shit_3', 6.2, 6.0)
	
	makeLuaSprite('best_gf_3', 'characters/joke/best_gf', 400, 260);
	addLuaSprite('best_gf_3', false);
	scaleObject('best_gf_3', 2.3, 2.3)
end
end