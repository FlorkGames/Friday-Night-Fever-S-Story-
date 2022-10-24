local xx = 580;
local yy = 420;
local xx2 = 740;
local yy2 = 420;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreatePost(elapsed)
    if getProperty('dad.curCharacter') == 'x' then
	    xx = 580
        yy = 420
        xx2 = 740
        yy2 = 420
        followchars = true
    elseif getProperty('dad.curCharacter') == 'demonx' then
	    xx = 600
        yy = 500
        xx2 = 1020
        yy2 = 600
        local ofs = 40;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'scorp' then
	    xx = 340
        yy = 440
        xx2 = 860
        yy2 = 660
        ofs = 30;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'stadic' then
	    xx = 260
        yy = 400
        xx2 = 820
        yy2 = 660
        ofs = 40;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'mayuka' then
	    xx = 820
        yy = 480
        xx2 = 1050
        yy2 = 500
        ofs = 25;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'hauntermayuka' then
	    xx = 820
        yy = 420
        xx2 = 1050
        yy2 = 500
        ofs = 25;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'fever-enemy' then
	    xx = 820
        yy = 480
        xx2 = 1050
        yy2 = 500
        ofs = 28;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'theeslnew' then
	    xx = 600
        yy = 640
        xx2 = 1400
        yy2 = 650
        ofs = 40;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'berserktheesl' then
	    xx = 600
        yy = 640
        xx2 = 1400
        yy2 = 650
        ofs = 40;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'eli' then
	    xx = 900
        yy = 460
        xx2 = 1340
        yy2 = 490
        ofs = 40;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'shadow' then
	    xx = 1000
        yy = 460
        xx2 = 1340
        yy2 = 460
        ofs = 20;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'bf-enemy' then
	    xx = 340
        yy = 500
        xx2 = 860
        yy2 = 680
        ofs = 30;
        followchars = true
    elseif getProperty('dad.curCharacter') == 'winkel-enemy' then
	    xx = 260
        yy = 400
        xx2 = 860
        yy2 = 660
        ofs = 30;
        followchars = true
    else
        followchars = false
    end
end

function onUpdatePost()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        elseif mustHitSection == true then

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'dodgeLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'dodgeRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'dodgeUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'dodgeDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onStartCountdown()
    onCreatePost()
end