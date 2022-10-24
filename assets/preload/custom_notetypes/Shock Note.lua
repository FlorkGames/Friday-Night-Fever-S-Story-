function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Shoot Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Shock Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SHOCKNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'noteshockSplashes'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
	--debugPrint('Script started!')
	addLuaScript('scripts/zCameraFix')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Shock Note' then
		setProperty('boyfriend.stunned', true)
		runTimer('stunEnd',2);
		for i = 0, 8 do
            noteTweenAlpha('stunnedNotes'..i, i, 0.5, 0.1, 'linear')
        end
		if not lowQuality then
		triggerEvent('Screen Shake',"0.04,0.004","0.04,0.001")	
		end
	end
end

function onTimerCompleted(tag,loops,loopsLeft)
	if tag == 'stunEnd' then
		setProperty('boyfriend.stunned', false)
		for i = 0, 8 do
            noteTweenAlpha('notStunnedNotes'..i, i, 1, 0.1, 'linear')
        end
	end
end