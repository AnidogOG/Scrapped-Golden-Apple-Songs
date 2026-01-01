

function onCreate()
	-- background shit
	makeLuaSprite('ohungi skybox', 'backgrounds/extras/decimal/ohungi skybox', -400, -300);
	setLuaSpriteScrollFactor('ohungi skybox', 0.6, 0.6);
	scaleObject('ohungi skybox', 1, 1)
	addLuaSprite('ohungi skybox', false);
end


local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('ohungi skybox', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('ohungi skybox', 'uWaveAmplitude', 0.1)
	setShaderFloat('ohungi skybox', 'uFrequency', 5)
	setShaderFloat('ohungi skybox', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('ohungi skybox', 'uTime', os.clock())
	end