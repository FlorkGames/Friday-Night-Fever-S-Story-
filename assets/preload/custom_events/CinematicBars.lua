local cineIn = false;

function onCreate()
    cineIn = false;

    makeAnimatedLuaSprite('cineBars','cinematicbars',-100,-80)
    addAnimationByPrefix('cineBars','in','cine in',24,false)
    addAnimationByPrefix('cineBars','out','cine out',24,false)
    setObjectCamera('cineBars','hud')
    scaleObject('cineBars',1.12,1.12)
    addLuaSprite('cineBars',false)
    setLuaSpriteScrollFactor('cineBars',0.0,0.0)
    doTweenAlpha('cineHide','cineBars',0,0.01,'linear')
end

function onEvent(n,v1,v2)
    if n == "CinematicBars" then
        if v1 == 'out' then
            objectPlayAnimation('cineBars','out',false)
            cineIn = false;
            runTimer('cineHideTimer',3)
        elseif v1 == 'in' then
            doTweenAlpha('cineShow','cineBars',1,0.01,'linear')
            objectPlayAnimation('cineBars','in',false)
            cineIn = true;
        end
	end
end

function onTimerCompleteed(tag,loops,loopsLeft)
    if tag == 'cineHideTimer' then
        doTweenAlpha('cineHide','cineBars',0,0.01,'linear')
    end
end