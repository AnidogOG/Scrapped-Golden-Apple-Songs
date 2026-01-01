function onCreate()
	makeLuaSprite('farBuildings','backgrounds/extras/unhinged/farBuildings', -2680, 270)
	addLuaSprite('farBuildings',false)
	
	makeLuaSprite('floor','backgrounds/extras/unhinged/floor', -3000, 0)
	addLuaSprite('floor',false)
		
	makeLuaSprite('clouds','backgrounds/extras/unhinged/clouds', -3000, 0)
	addLuaSprite('clouds',false)
	
	makeLuaSprite('closeBuildings','backgrounds/extras/unhinged/closeBuildings', -3000, 0)
	addLuaSprite('closeBuildings',false)

	makeAnimatedLuaSprite('unhinged_dumpsta','backgrounds/extras/unhinged/unhinged_dumpsta',-300,1000)
	addAnimationByPrefix('unhinged_dumpsta', 'unhinged_dumpsta', 'Dump instance 1', 24, true);
	addLuaSprite('unhinged_dumpsta',false)
	scaleObject('hi', 0.6, 0.6)
	
	makeLuaSprite('hat','backgrounds/extras/unhinged/hat', -2000, 300)
	addLuaSprite('hat',false)
	
	makeLuaSprite('shadows','backgrounds/extras/unhinged/shadows', -3000, 20)
	addLuaSprite('shadows',false)
end