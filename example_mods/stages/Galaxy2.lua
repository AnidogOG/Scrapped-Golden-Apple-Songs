

function onCreate()
	-- background shit
	makeLuaSprite('galaxy2', 'backgrounds/iykyk/galactic/galaxy2', -400, -300);
	setLuaSpriteScrollFactor('galaxy2', 0.6, 0.6);
	scaleObject('galaxy2', 1, 1)
	addLuaSprite('galaxy2', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('galaxy2', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('galaxy2', 'uWaveAmplitude', 0.1)
	setShaderFloat('galaxy2', 'uFrequency', 5)
	setShaderFloat('galaxy2', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('galaxy2', 'uTime', os.clock())
	end