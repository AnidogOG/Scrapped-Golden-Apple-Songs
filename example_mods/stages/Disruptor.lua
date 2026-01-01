

function onCreate()
	-- background shit
	makeLuaSprite('disruptor', 'backgrounds/minus/disruptor', -400, -300);
	setLuaSpriteScrollFactor('disruptor', 0.6, 0.6);
	scaleObject('disruptor', 1, 1)
	addLuaSprite('disruptor', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('disruptor', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('disruptor', 'uWaveAmplitude', 0.1)
	setShaderFloat('disruptor', 'uFrequency', 5)
	setShaderFloat('disruptor', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('disruptor', 'uTime', os.clock())
	end