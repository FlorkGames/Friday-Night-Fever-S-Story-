function onCreatePost()
	if dadName == 'x' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/x')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/x'); --Change texture
			end
		end
	end
	if dadName == 'demonx' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/x')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/x'); --Change texture
			end
		end
	end
    if dadName == 'scorp' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/scorp')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/scorp'); --Change texture
			end
		end
	end
    if dadName == 'stadic' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/stadic')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/stadic'); --Change texture
			end
		end
	end
    if dadName == 'theeslnew' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/theesl')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/theesl'); --Change texture
			end
		end
	end
	if dadName == 'berserktheesl' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/theesl')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/theesl'); --Change texture
			end
		end
	end
	if dadName == 'fever-enemy' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/fever')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/fever'); --Change texture
			end
		end
	end
	if dadName == 'mayuka' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/mayuka')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/mayuka'); --Change texture
			end
		end
	end
	if dadName == 'hauntermayuka' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/mayuka')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/mayuka'); --Change texture
			end
		end
	end
	if dadName == 'eli' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/eli')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/eli'); --Change texture
			end
		end
	end
	if dadName == 'bf-enemy' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/NOTE_assets')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/NOTE_assets'); --Change texture
			end
		end
	end
	if dadName == 'winkel-enemy' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/winkel')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/winkel'); --Change texture
			end
		end
	end
end

function onEvent(n,v1,v2)
	if n == 'eventTrigger' then
		if v1 == 'noteskin' then
			onCreatePost()
		end
	end
end