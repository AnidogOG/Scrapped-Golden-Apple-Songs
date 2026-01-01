function onUpdatePost()
	if curBeat >= 224 then
		removeLuaSprite('stageback');
		removeLuaSprite('stagefront');
		removeLuaSprite('stagecurtains');
	end
end