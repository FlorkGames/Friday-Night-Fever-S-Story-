function onCreatePost()
    if isStoryMode and not getPropertyFromClass('flixel.FlxG', 'save.data.dialogueDone') then
        makeLuaText('skipText', "Press CTRL to skip", 0, 520, 680)
        setTextAlignment('skipText', 'center')
        setTextSize('skipText', 25)
        setObjectCamera('skipText', 'other')
        setTextFont('skipText', 'Coffee Extra.ttf')
        addLuaText('skipText')
        doTweenAlpha('skipTexthide','skipText',0,0.01,'linear')
        doTweenAlpha('skipTextshow','skipText',1,2,'linear')
    end
end

--Some Dialogue Variable stuff--

local bg == '';
local bgSong == '';

--------------------------------

function onStartCountdown()
    dialogueBg()
end

function onEndSong()
    runTimer('enddialbg',2.9);
    if isStoryMode and getPropertyFromClass('flixel.FlxG', 'save.data.endDialogue') and getPropertyFromClass('flixel.FlxG', 'save.data.reloadedDone') then
        doTweenAlpha('dialBghide2','bg',0,0.8,'circOut')
    end
end

function dialogueBg()
    if isStoryMode and not getPropertyFromClass('flixel.FlxG', 'save.data.dialogueDone') then
        makeLuaSprite('bg','dialBgs/' .. bg,0,0)
        setLuaSpriteScrollFactor('bg',0,0)
        setObjectCamera('bg','HUD')
        addLuaSprite('bg',false)
        screenCenter('bg')
    end
    if isStoryMode and getPropertyFromClass('flixel.FlxG', 'save.data.dialogueDone') then
        doTweenAlpha('dialBgBye','bg',0,0.7,'circOut')
        doTweenAlpha('skipTexthide2','skipText',0,0.4,'linear')
    end
end

function endDialogueBg()
    if isStoryMode and getPropertyFromClass('flixel.FlxG', 'save.data.endDialogue') then
        makeLuaSprite('bg','dialBgs/' .. bg,0,0)
        setLuaSpriteScrollFactor('bg',0,0)
        setObjectCamera('bg','HUD')
        addLuaSprite('bg',false)
        screenCenter('bg')
        doTweenAlpha('dialBghide','bg',0,0.01,'linear')
        doTweenAlpha('dialBgshow','bg',1,1,'circIn')
        doTweenAlpha('skipTextshow','skipText',1,1,'linear')
    end
end

function onTweenCompleted(tag)
    if tag == 'dialBgBye' then
        removeLuaSprite('bg',true)a
    end
end

function onTimerCompleted(tag,loops,loopsLeft)
    if tag == 'enddialbg' then
        endDialogueBg()
    end
end