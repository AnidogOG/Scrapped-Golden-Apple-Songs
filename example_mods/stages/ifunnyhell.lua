function onCreate()
	makeLuaSprite('abyss', 'backgrounds/covers/legacy/abyss', -750, -300);
	scaleObject('abyss', 2.1, 1.6);
	addLuaSprite('abyss', false);
	
	makeLuaSprite('closepillar', 'backgrounds/covers/legacy/closepillar', -400, -600);
	scaleObject('closepillar', 1.0, 1.2);
	addLuaSprite('closepillar', false);
	
	makeLuaSprite('farpillar', 'backgrounds/covers/legacy/farpillar', -400, -600);
	scaleObject('farpillar', 1.0, 1.0);
	addLuaSprite('farpillar', false);
	
	makeLuaSprite('humorbindings', 'backgrounds/covers/legacy/humorbindings', -750, -300);
	scaleObject('humorbindings', 2.1, 1.6);
	addLuaSprite('humorbindings', false);
	
	makeLuaSprite('legacy_platform', 'backgrounds/covers/legacy/legacy_platform', 0, 620);
	scaleObject('legacy_platform', 1.8, 1.8);
	addLuaSprite('legacy_platform', false);
	
	makeLuaSprite('legacy_platform_2', 'backgrounds/covers/legacy/legacy_platform', 1400, 620);
	scaleObject('legacy_platform_2', 1.8, 1.8);
	addLuaSprite('legacy_platform_2', false);
	
	makeLuaSprite('brimstone', 'backgrounds/covers/legacy/brimstone', -750, -300);
	scaleObject('brimstone', 2.1, 1.6);
	addLuaSprite('brimstone', true);
	
end

local shadname = "WavyBg"

	function onCreatePost()
		initLuaShader("WavyBg")
		setSpriteShader('abyss', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('abyss', 'uWaveAmplitude', 0.1)
	setShaderFloat('abyss', 'uFrequency', 5)
	setShaderFloat('abyss', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('abyss', 'uTime', os.clock())
end