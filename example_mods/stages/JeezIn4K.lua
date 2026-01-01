

function onCreate()
	-- background shit
	makeLuaSprite('garleak', 'backgrounds/iykyk/gary_leak', -800, -400);
	scaleObject('garleak', 1.8, 1.8)
	addLuaSprite('garleak', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('garleak', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('garleak', 'uWaveAmplitude', 0.1)
	setShaderFloat('garleak', 'uFrequency', 5)
	setShaderFloat('garleak', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('garleak', 'uTime', os.clock())
	end