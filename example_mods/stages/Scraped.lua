

function onCreate()
	-- background shit
	makeLuaSprite('unfunny', 'backgrounds/joke/scraped/unfunny', -400, -300);
	setLuaSpriteScrollFactor('unfunny', 0.6, 0.6);
	scaleObject('unfunny', 1, 1)
	addLuaSprite('unfunny', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('unfunny', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('unfunny', 'uWaveAmplitude', 0.1)
	setShaderFloat('unfunny', 'uFrequency', 5)
	setShaderFloat('unfunny', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('unfunny', 'uTime', os.clock())
	end