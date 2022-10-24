--plays hey animation when you press space and more hud or gameplay shit
function onCreatePost()
    setTextFont('scoreTxt', 'Coffee Extra.ttf')
    setTextFont('timeTxt', 'Coffee Extra.ttf')
    if getPropertyFromClass('ClientPrefs', 'timeBarType') == 'Song Name' then
        setProperty('timeTxt.y', getProperty('timeTxt.y')-3);
    else
        setProperty('timeTxt.y', getProperty('timeTxt.y')-8);
    end
end

function onUpdate()
    
    if keyJustPressed('space') then
            characterPlayAnim('boyfriend', 'hey', true);
	        setProperty('boyfriend.specialAnim', true);
    end

    if getProperty('boyfriend.curCharacter') == 'bf-eli' then
        setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-eli');--Character json file for the death animation
    end
end