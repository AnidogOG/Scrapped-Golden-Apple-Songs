

function onCreate()
	-- background shit
	makeLuaSprite('metal', 'backgrounds/ocs/metal', -400, -300);
	setLuaSpriteScrollFactor('metal', 0.6, 0.6);
	scaleObject('metal', 1, 1)
	addLuaSprite('metal', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('metal', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('metal', 'uWaveAmplitude', 0.1)
	setShaderFloat('metal', 'uFrequency', 5)
	setShaderFloat('metal', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('metal', 'uTime', os.clock())
	end