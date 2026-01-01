local hotdogPhase = 'hotdogs_uncooked';

function onCreate()
	makeLuaSprite('sky1', 'backgrounds/peanut paywall/clown/deepfried_1648852737886', -600, -825);
	scaleObject('sky1', 2, 2);
	setScrollFactor('sky1', 0.5,0.5);
	addLuaSprite('sky1');

	setSpriteShader('sky1', 'WiggleShader');
	setShaderFloat('sky1', 'effectType', 0);
	setShaderFloat('sky1', 'uSpeed', 0.75);
	setShaderFloat('sky1', 'uFrequency', 15);
	setShaderFloat('sky1', 'uWaveAmplitude', 0.05);

	makeLuaSprite('sky', 'backgrounds/peanut paywall/clown/skybox', -1500, -750);

	scaleObject('sky', 1.1, 1.1);
	setScrollFactor('sky', 0.75, 0.75);
	addLuaSprite('sky');
	--doTweenAlpha('byebye2342', 'sky', 0, 0.1, 'linear');


	makeLuaSprite('mc', 'backgrounds/peanut paywall/clown/yard', -1500, -1500);
	
	scaleObject('mc', 1.1, 1.1);
	addLuaSprite('mc');

	makeLuaSprite('girl', 'backgrounds/peanut paywall/clown/bestest_gf', 450, -300);
	scaleObject('girl', 0.75, 0.75);
	addLuaSprite('girl');

	makeAnimatedLuaSprite('hotdogs_uncooked', 'backgrounds/peanut paywall/clown/hotdooooog', 1275, -300);
    addAnimationByPrefix('hotdogs_uncooked', '0', 'flip', 24, false);
    addAnimationByPrefix('hotdogs_uncooked', '1', 'flop', 24, false);

	makeAnimatedLuaSprite('hotdogs_cooked', 'backgrounds/peanut paywall/clown/hotdooooog', 1275, -300);
    addAnimationByPrefix('hotdogs_cooked', '0', 'glip', 24, false);
	addAnimationByPrefix('hotdogs_cooked', '1', 'glop', 24, false);

	makeAnimatedLuaSprite('hotdogs_burnt', 'backgrounds/peanut paywall/clown/hotdooooog', 1265, -300);
    addAnimationByPrefix('hotdogs_burnt', '0', 'slip', 24, false);
	addAnimationByPrefix('hotdogs_burnt', '1', 'slop', 24, false);

	scaleObject('hotdogs_cooked', 0, 0);
	scaleObject('hotdogs_burnt', 0, 0);

	addOffset('hotdogs_burnt', '0', -11, 0);
	addOffset('hotdogs_burnt', '1', 0, 0);

    addLuaSprite('hotdogs_cooked', true);
	addLuaSprite('hotdogs_uncooked', true);
	addLuaSprite('hotdogs_burnt', true);
end

function onBeatHit()
	if curBeat % 4 == 0 then
		playAnim('hotdogs_uncooked', '0');
		playAnim('hotdogs_cooked', '0');
		playAnim('hotdogs_burnt', '0');
	elseif curBeat % 2 == 0 then
		playAnim('hotdogs_uncooked', '1');
		playAnim('hotdogs_cooked', '1');
		playAnim('hotdogs_burnt', '1');
	end
end

function onCountdownTick(counter)
	if counter % 4 == 0 then
		playAnim('hotdogs_uncooked', '0');
	elseif counter % 2 == 0 then
		playAnim('hotdogs_uncooked', '1');
	end
end

elapsedTime = 0;
function onUpdate(elapsed)
  elapsedTime = elapsedTime + elapsed
    setShaderFloat('sky1', 'uTime', elapsedTime);
end

function onEvent(name, v1, v2)
	if (name == 'Change Character') then
		setScrollFactor('gf', 1, 1);
	end
end

-- makeAnimatedLuaSprite('image', 'backgrounds/peanut paywall/clown/hotdooooog', 1275, -300);
--addAnimationByPrefix('image', '0', 'glip', 24, false);
--addAnimationByPrefix('image', '1', 'glop', 24, false);
--addLuaSprite('image', true);