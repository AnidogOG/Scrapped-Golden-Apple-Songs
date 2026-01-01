function onUpdatePost()
	if curBeat >= 224 then
		makeLuaSprite('black', 'BlackVoid', -600, -200);
		scaleObject('black', 10.0, 10.0);
		addLuaSprite('black');
	end
end