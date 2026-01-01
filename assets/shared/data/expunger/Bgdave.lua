function onBeatHit()
	if curBeat >= 240 then
	makeLuaSprite('disable', 'backgrounds/extras/disabled', -1000, -600);
	setLuaSpriteScrollFactor('disable', 0.6, 0.6);
	scaleObject('disable', 1.4, 1.4)
	addLuaSprite('disable', false);

local shadname = "WavyBg"
	initLuaShader("WavyBg")
	setSpriteShader('disable', shadname)

	setShaderFloat('disable', 'uWaveAmplitude', 0.1)
	setShaderFloat('disable', 'uFrequency', 5)
	setShaderFloat('disable', 'uSpeed', 2.25)
end
end