--applies a cool rating after you finish a song

local startedEndRating = false
function onCreate()
    if not lowQuality then
    precacheImage('songratings/splashsick')                
    end
end

function onEndSong()
    if not startedEndRating then
        runTimer('startEndRating', 0.1);
        startedEndRating = true;
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'startEndRating' then
        
        if botPlay then
            makeLuaSprite('rating','songratings/songclearbot',600,400)
            playSound('ratingshit',1)
        elseif practice then
            makeLuaSprite('rating','songratings/songclearpractice',600,400)
        elseif rating > 0.9 then
            makeLuaSprite('rating','songratings/songclearsick',600,400)
            playSound('ratingsick',1)
        elseif rating > 0.7 then
            makeLuaSprite('rating','songratings/songcleargood',600,400)
            playSound('ratingok',1)
        elseif rating > 0.5 then
            makeLuaSprite('rating','songratings/songclearbad',600,400)
            playSound('ratingshit',1)
        elseif rating > 0 then
            makeLuaSprite('rating','songratings/songclearshit',600,400)
            playSound('ratingshit',1)
        end
           
            addLuaSprite('rating',true)
            if rating > 0.9 then
                if not lowQuality then
                makeAnimatedLuaSprite('splash','songratings/splashsick',220,50)
                addAnimationByPrefix('splash','splash','splash',24,false)
                setObjectCamera('splash','hud')
                addLuaSprite('splash',true)
                end
            end
            setObjectCamera('rating','hud')
            scaleObject('rating',0.01,0.01)
            setScrollFactor('rating',0,0)
            doTweenX('thetweenx', 'rating.scale', 0.6, 1.5, 'circOut')
            doTweenY('thetweeny', 'rating.scale', 0.6, 1.5, 'circOut')
            if getPropertyFromClass('flixel.FlxG', 'save.data.endDialogue') then
                runTimer('enddialogue',3);
            else
                runTimer('endsong',3);
            end
    end
    if tag == 'endsong' then
        endSong()
    end
    if tag == 'enddialogue' then
        doTweenX('thebtweenx', 'rating.scale', 0, 0.8, 'circOut')
        doTweenY('thebtweeny', 'rating.scale', 0, 0.8, 'circOut')
        if not lowQuality then
        removeLuaSprite('splash',true)           
        end
    end
end