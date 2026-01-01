function onCreate()
	makeAnimatedLuaSprite('phoneslol','backgrounds/iykyk/long run/phoneslol', -400, 100)
	addAnimationByPrefix('phoneslol', 'phoneslol', 'phoneanim', 24, true);
	addLuaSprite('phoneslol',false)
	scaleObject('phoneslol', 1.3, 1.3);
end