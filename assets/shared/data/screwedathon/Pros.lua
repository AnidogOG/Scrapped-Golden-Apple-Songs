function onBeatHit()
	if curBeat >= 1824 then
		makeLuaSprite('pros', 'backgrounds/joke/screwedathon/pros', -800, -400);
		addLuaSprite('pros', false);
		scaleObject('pros', 6.4, 6.4)
		
		local shadname = "WavyBg"
		initLuaShader("WavyBg")
		setSpriteShader('pros', shadname)

		setShaderFloat('pros', 'uWaveAmplitude', 0.1)
		setShaderFloat('pros', 'uFrequency', 5)
		setShaderFloat('pros', 'uSpeed', 2.25)
		
		makeAnimatedLuaSprite('noobGuy', 'characters/Joke/Screwedathon/pros/screwed noob', 0, 0);
		addAnimationByPrefix('noobGuy', 'screwed noob', 'idle', 24, true);
		addLuaSprite('noobGuy', false);
		scaleObject('noobGuy', 1, 1)
		
		makeAnimatedLuaSprite('hackerGuy', 'characters/Joke/Screwedathon/pros/screwed hacker', -400, 60);
		addAnimationByPrefix('hackerGuy', 'screwed hacker', 'idle', 24, true);
		addLuaSprite('hackerGuy', false);
		scaleObject('hackerGuy', 1, 1)
	end
end