

function onCreate()
	makeLuaSprite('blob', 'backgrounds/ocs/beef/this', -1000, -300);
	scaleObject('blob', 1.4, 1.4)
	addLuaSprite('blob', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('blob', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('blob', 'uWaveAmplitude', 0.1)
	setShaderFloat('blob', 'uFrequency', 5)
	setShaderFloat('blob', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('blob', 'uTime', os.clock())
	end