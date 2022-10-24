local stageDefaultZoom = 0.9

function onCreate()
    stageDefaultZoom = getProperty('defaultCamZoom');
end

function onEvent(n,v1,v2)
    if n == "cameraZoomIn" then
        doTweenZoom('zoomtween', 'camGame', v1, v2, 'circOut')
        if v1 == '' then
            doTweenZoom('zoomtween', 'camGame', stageDefaultZoom, v2, 'sineOut')
        end
	end
end

function onTweenCompleted(tag)
    if tag == 'zoomtween' then
        setProperty('defaultCamZoom',getProperty('camGame.zoom'))
    end
end