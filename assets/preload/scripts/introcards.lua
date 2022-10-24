function onCreate()
	makeAnimatedLuaSprite('introcard','introcard/introcards',-305,200)
	addAnimationByPrefix('introcard','name',songName,24,true)
	setObjectCamera('introcard', 'other')
	scaleObject('introcard',0.45,0.45)
end

function onStartCountdown()
	card()
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'moveOut' then
		doTweenX('tweenOut', 'introcard', -600, 1.5, 'CircIn')
		doTweenAlpha('introcardalph','introcard',0,1.4,'linear')
	end
end

function onTweenCompleted(tag)
    if tag == 'tweenOut' then
        removeLuaSprite('introcard',false)
    end
end

function onEvent(n,v1,v2)
	if n == 'eventTrigger' then
		if v1 == 'introcard' then
			onStartCountdown()
		end
	end
end

function card()
	if not getPropertyFromClass('flixel.FlxG', 'save.data.dialogueDone') then

	elseif getPropertyFromClass('flixel.FlxG', 'save.data.dialogueDone') then
		addLuaSprite('introcard', true)
		doTweenAlpha('introcardalph','introcard',0.7,0.01,'linear')
		doTweenX('tweenIn', 'introcard', -5, 1, 'CircOut')
		runTimer('moveOut', 3, 1)
	end
end