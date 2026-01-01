function onCreate()
	makeLuaSprite('MeatBack', 'backgrounds/ocs/beef/MeatBack', -800, -200);
	scaleObject('MeatBack', 1.2, 1.2);
	addLuaSprite('MeatBack', false);	
	
	makeLuaSprite('MeatFront', 'backgrounds/ocs/beef/MeatFront', -900, -200);
	scaleObject('MeatFront', 1.2, 1.2);
	addLuaSprite('MeatFront', false);
	
	makeAnimatedLuaSprite('GF','characters/GF_assets', 400, 130)
	addAnimationByPrefix('GF', 'characters/GF_assets', 'GF Dancing Beat0', 30, true);
	addLuaSprite('GF',false)
	scaleObject('GF', 1, 1);
end