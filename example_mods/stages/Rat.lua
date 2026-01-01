

function onCreate()
	-- background shit
	makeLuaSprite('bloatbg', 'backgrounds/iykyk/bloatbg', -600, -300);
	setLuaSpriteScrollFactor('bloatbg', 0.6, 0.6);
	scaleObject('bloatbg', 5.0, 5.0)
	addLuaSprite('bloatbg', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('bloatbg', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('bloatbg', 'uWaveAmplitude', 0.1)
	setShaderFloat('bloatbg', 'uFrequency', 5)
	setShaderFloat('bloatbg', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('bloatbg', 'uTime', os.clock())
	end