function onCreate()
	makeLuaSprite('3djunk', 'backgrounds/joke/screwedathon/3djunk', -700, -600);
	addLuaSprite('3djunk', false);
	scaleObject('3djunk', 1.5, 1)
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('3djunk', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('3djunk', 'uWaveAmplitude', 0.1)
	setShaderFloat('3djunk', 'uFrequency', 5)
	setShaderFloat('3djunk', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('3djunk', 'uTime', os.clock())
	end