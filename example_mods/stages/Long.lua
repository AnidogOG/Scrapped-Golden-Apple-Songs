

function onCreate()
	makeLuaSprite('phonebg', 'backgrounds/iykyk/long run/phonebg', -200, -100);
	setLuaSpriteScrollFactor('phonebg', 0.6, 0.6);
	scaleObject('phonebg', 1.0, 1.3)
	addLuaSprite('phonebg', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('phonebg', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('phonebg', 'uWaveAmplitude', 0.1)
	setShaderFloat('phonebg', 'uFrequency', 5)
	setShaderFloat('phonebg', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('phonebg', 'uTime', os.clock())
	end