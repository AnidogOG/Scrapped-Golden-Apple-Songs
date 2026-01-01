function onUpdatePost()
	if curBeat >= 448 then
		removeLuaSprite('sky');	
		removeLuaSprite('back');	
		removeLuaSprite('front');
	end
end