function onCreate()
	-- background shit
	makeLuaSprite('image1', 'backgrounds/story/jambino/image1', -600, -300);
	setLuaSpriteScrollFactor('image1', 0.6, 0.6);
	scaleObject('image1', 2.2, 2.2)
	addLuaSprite('image1', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('image1', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('image1', 'uWaveAmplitude', 0.1)
	setShaderFloat('image1', 'uFrequency', 5)
	setShaderFloat('image1', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('image1', 'uTime', os.clock())
	end