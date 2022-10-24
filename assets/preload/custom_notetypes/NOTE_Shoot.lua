function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Shoot Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'NOTE_Shoot' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_Shoot'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
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
	if noteType == 'NOTE_Shoot' then
		characterPlayAnim('boyfriend', 'dodge', true);
		characterPlayAnim('dad', 'shoot', true);
		setProperty('dad.specialAnim', true);
		if gfName == 'chloe' then
			characterPlayAnim('gf', 'scared', true);
			setProperty('gf.specialAnim', true);
		end
		if not lowQuality then
        triggerEvent('Screen Shake',"0.04,0.008","0.04,0.001")            
		end
	end
end

function noteMiss(id, direction,  noteType, isSustainNote)
	if noteType == "NOTE_Shoot" then
		characterPlayAnim('dad', 'shoot', true);
		setProperty('dad.specialAnim', true);
		setProperty('health', -500);
		if not lowQuality then
			triggerEvent('Screen Shake',"0.04,0.004","0.04,0.001")     
		end
	end
end