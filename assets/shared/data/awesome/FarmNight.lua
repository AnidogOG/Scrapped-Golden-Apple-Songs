function onBeatHit()
if curBeat >= 632 then
	makeLuaSprite('moldy_shit_night', 'backgrounds/joke/awesome/moldy_shit_night', -500, -400);
	addLuaSprite('moldy_shit_night', false);
	scaleObject('moldy_shit_night', 6.2, 6.0)
	
	makeLuaSprite('best_gf_4', 'characters/joke/best_gf', 400, 260);
	addLuaSprite('best_gf_4', false);
	scaleObject('best_gf_4', 2.3, 2.3)
end
end