function onStartCountdown()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/NOTE_assets_3D'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false)
		end
	end
end

function onUpdate(elapsed)
	health = getProperty('health')
	if health >= 0 then
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'noteSkins/NOTE_assets_3D')
			setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)
		end
	end
end
