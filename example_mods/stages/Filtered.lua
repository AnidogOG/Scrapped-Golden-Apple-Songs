

function onCreate()
	-- background shit
	makeLuaSprite('redsky', 'backgrounds/iykyk/redsky', -400, -300);
	setLuaSpriteScrollFactor('redsky', 0.6, 0.6);
	scaleObject('redsky', 1, 1)
	addLuaSprite('redsky', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('redsky', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('redsky', 'uWaveAmplitude', 0.1)
	setShaderFloat('redsky', 'uFrequency', 5)
	setShaderFloat('redsky', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('redsky', 'uTime', os.clock())
	end