function onUpdatePost()
if curBeat >= 556 then
	removeLuaSprite(nyan);
	makeLuaSprite('blackFinal', 'BlackVoid', -400, -100);
	scaleObject('blackFinal', 1.2, 1.0);
	addLuaSprite('blackFinal', false);
end
end