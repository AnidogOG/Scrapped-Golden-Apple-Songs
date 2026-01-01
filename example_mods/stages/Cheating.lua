function onCreate()
	makeLuaSprite('CheatingBg', 'backgrounds/secret/cheating/CheatingBg', -400, -300);
	setLuaSpriteScrollFactor('CheatingBg', 0.6, 0.6);
	scaleObject('CheatingBg', 1, 1)
	addLuaSprite('CheatingBg', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('CheatingBg', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('CheatingBg', 'uWaveAmplitude', 0.1)
	setShaderFloat('CheatingBg', 'uFrequency', 5)
	setShaderFloat('CheatingBg', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('CheatingBg', 'uTime', os.clock())
	end