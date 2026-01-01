

function onCreate()
	-- background shit
	makeLuaSprite('galaxy', 'backgrounds/iykyk/galactic/galaxy', -400, -300);
	setLuaSpriteScrollFactor('galaxy', 0.6, 0.6);
	scaleObject('galaxy', 1, 1)
	addLuaSprite('galaxy', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('galaxy', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('galaxy', 'uWaveAmplitude', 0.1)
	setShaderFloat('galaxy', 'uFrequency', 5)
	setShaderFloat('galaxy', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('galaxy', 'uTime', os.clock())
	end