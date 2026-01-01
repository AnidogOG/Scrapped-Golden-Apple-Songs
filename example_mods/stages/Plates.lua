

function onCreate()
	-- background shit
	makeLuaSprite('plah_tay', 'backgrounds/extras/plah_tay', -400, -200);
	setLuaSpriteScrollFactor('plah_tay', 0.6, 0.6);
	scaleObject('plah_tay', 1.4, 1.4)
	addLuaSprite('plah_tay', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('plah_tay', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('plah_tay', 'uWaveAmplitude', 0.1)
	setShaderFloat('plah_tay', 'uFrequency', 5)
	setShaderFloat('plah_tay', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('plah_tay', 'uTime', os.clock())
	end