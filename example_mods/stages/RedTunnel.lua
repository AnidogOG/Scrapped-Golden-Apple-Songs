function onCreate()
	makeLuaSprite('box', 'backgrounds/tta/thisismybox', 0, -500)
	scaleObject('box', 100, 100)
	addLuaSprite('box', false)
	
	makeLuaSprite('tunnel', 'backgrounds/tta/redTunnel', -750, -500)
	addLuaSprite('tunnel', false)
end


function onStartCountdown()
	doTweenAngle('spinnie', 'tunnel', 600, 210)
end