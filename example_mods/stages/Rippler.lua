function onCreate()
	makeLuaSprite('rippler', 'backgrounds/secret/rippler', -400, -300);
	setLuaSpriteScrollFactor('rippler', 0.6, 0.6);
	scaleObject('rippler', 1, 1)
	addLuaSprite('rippler', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('rippler', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('rippler', 'uWaveAmplitude', 0.1)
	setShaderFloat('rippler', 'uFrequency', 5)
	setShaderFloat('rippler', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('rippler', 'uTime', os.clock())
	end