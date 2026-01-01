function onBeatHit()
	if curBeat >= 368 then
	makeLuaSprite('disable2', 'backgrounds/extras/disabled', -1000, -600);
	setLuaSpriteScrollFactor('disable2', 0.6, 0.6);
	scaleObject('disable2', 1.4, 1.4)
	addLuaSprite('disable2', false);

local shadname = "WavyBg"
	initLuaShader("WavyBg")
	setSpriteShader('disable2', shadname)

	setShaderFloat('disable2', 'uWaveAmplitude', 0.1)
	setShaderFloat('disable2', 'uFrequency', 5)
	setShaderFloat('disable2', 'uSpeed', 2.25)
end
end