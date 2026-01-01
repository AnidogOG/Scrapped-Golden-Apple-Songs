function onBeatHit()
if curBeat >= 96 then
	makeLuaSprite('bing', 'backgrounds/secret/boingin/bing', -600, -300);
	scaleObject('bing', 1.2, 1.2);
	addLuaSprite('bing', false);
	
	makeAnimatedLuaSprite('old_ost_guys', 'backgrounds/secret/boingin/old_ost_guys', 150, 300)
	addAnimationByPrefix('old_ost_guys', 'old_ost_guys', 'bombom fixed', 24, true);
	scaleObject('old_ost_guys', 1.2, 1.2);
	addLuaSprite('old_ost_guys', false)
	
	makeAnimatedLuaSprite('old_ost_guys2', 'backgrounds/secret/boingin/old_ost_guys2', 500, 250)
	addAnimationByPrefix('old_ost_guys2', 'old_ost_guys2', 'look at the fatbutt fixed', 24, true);
	scaleObject('old_ost_guys2', 1.2, 1.2);
	addLuaSprite('old_ost_guys2', false)
	
	makeAnimatedLuaSprite('old_ost_guys3', 'backgrounds/secret/boingin/old_ost_guys3', 800, 200)
	addAnimationByPrefix('old_ost_guys3', 'old_ost_guys3', 'rip man fixed', 24, true);
	scaleObject('old_ost_guys3', 1.2, 1.2);
	addLuaSprite('old_ost_guys3', false)
end
end