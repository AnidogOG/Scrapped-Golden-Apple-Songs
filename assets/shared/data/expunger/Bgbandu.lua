function onCreate()
	-- background shit
	makeLuaSprite('hi', 'backgrounds/extras/hi', -1000, -600);
	setLuaSpriteScrollFactor('hi', 0.6, 0.6);
	scaleObject('hi', 1.4, 1.4)
	addLuaSprite('hi', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('hi', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('hi', 'uWaveAmplitude', 0.1)
	setShaderFloat('hi', 'uFrequency', 5)
	setShaderFloat('hi', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('hi', 'uTime', os.clock())
	end