function onCreate()
	-- background shit
	makeLuaSprite('BlackVoid', 'BlackVoid', -600, -300);
	setScrollFactor('BlackVoid', 0.9, 0.9);
	
	addLuaSprite('BlackVoid', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end