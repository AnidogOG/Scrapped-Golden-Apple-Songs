

function onCreate()
	-- background shit
	makeLuaSprite('heaven', 'backgrounds/extras/heaven', -400, -300);
	setLuaSpriteScrollFactor('heaven', 0.6, 0.6);
	scaleObject('heaven', 1, 1)
	addLuaSprite('heaven', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('heaven', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('heaven', 'uWaveAmplitude', 0.1)
	setShaderFloat('heaven', 'uFrequency', 5)
	setShaderFloat('heaven', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('heaven', 'uTime', os.clock())
	end