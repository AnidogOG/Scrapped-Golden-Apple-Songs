function onBeatHit()
	if curBeat >= 768 then
		makeLuaSprite('yup', 'backgrounds/joke/screwedathon/dya', -800, -600);
		addLuaSprite('yup', false);
		scaleObject('yup', 1.4, 1.4)

		local shadname = "WavyBg"
		initLuaShader("WavyBg")
		setSpriteShader('yup', shadname)

		setShaderFloat('yup', 'uWaveAmplitude', 0.1)
		setShaderFloat('yup', 'uFrequency', 5)
		setShaderFloat('yup', 'uSpeed', 2.25)
	end
end