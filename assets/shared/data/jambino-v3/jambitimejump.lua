function onBeatHit()
if curBeat >= 476 then
	runHaxeCode([[
        game.songLength = (427000 + 1000);
    ]])
end
end
--for some reason 42000 will be 42 sec in fnf