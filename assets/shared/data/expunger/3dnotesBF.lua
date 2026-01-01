function onBeatHit()
	if curBeat >= 408 then
	for i = 0, getProperty('playerStrums.length')-1 do
		setPropertyFromGroup('playerStrums', i, 'texture', 'noteSkins/NOTE_assets_3D');
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/NOTE_assets_3D');
			end
		end
	end
end