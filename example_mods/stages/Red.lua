function onCreate()
	makeLuaSprite('redness', 'backgrounds/joke/awesome/redness', -600, -200);
	scaleObject('redness', 6.5, 6.5)
	addLuaSprite('redness', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('redness', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('redness', 'uWaveAmplitude', 0.1)
	setShaderFloat('redness', 'uFrequency', 5)
	setShaderFloat('redness', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('redness', 'uTime', os.clock())
	end