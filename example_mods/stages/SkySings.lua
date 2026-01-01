

function onCreate()
	-- background shit
	makeLuaSprite('scarybg', 'backgrounds/joke/scarybg', -300, -100);
	setLuaSpriteScrollFactor('scarybg', 0.6, 0.6);
	scaleObject('scarybg', 0.8, 0.8)
	addLuaSprite('scarybg', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('scarybg', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('scarybg', 'uWaveAmplitude', 0.1)
	setShaderFloat('scarybg', 'uFrequency', 5)
	setShaderFloat('scarybg', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('scarybg', 'uTime', os.clock())
	end