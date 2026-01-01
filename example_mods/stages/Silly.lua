

function onCreate()
	-- background shit
	makeLuaSprite('nature', 'backgrounds/ocs/nature', -400, -300);
	setLuaSpriteScrollFactor('nature', 0.6, 0.6);
	scaleObject('nature', 1, 1)
	addLuaSprite('nature', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('nature', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('nature', 'uWaveAmplitude', 0.1)
	setShaderFloat('nature', 'uFrequency', 5)
	setShaderFloat('nature', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('nature', 'uTime', os.clock())
	end