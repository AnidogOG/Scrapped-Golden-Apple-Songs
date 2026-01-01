

function onCreate()
	makeLuaSprite('tosus', 'backgrounds/joke/tosus', -700, -200);
	setLuaSpriteScrollFactor('tosus', 0.6, 0.6);
	scaleObject('tosus', 1.4, 1.4)
	addLuaSprite('tosus', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('tosus', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('tosus', 'uWaveAmplitude', 0.1)
	setShaderFloat('tosus', 'uFrequency', 5)
	setShaderFloat('tosus', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('tosus', 'uTime', os.clock())
	end