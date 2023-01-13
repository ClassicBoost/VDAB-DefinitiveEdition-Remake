--I wouldn't really need to use lua for this but I'm using it anyway lol
smoothZoomIG = false
function onUpdate(elapsed)
    if smoothZoomIG then
        cameraThingy = cameraThingy - 0.003

        setProperty('defaultCamZoom', cameraThingy)
    end


end
function onStepHit()
    if curStep == 128 or curStep == 752 then
        smoothZoomIG = true
    end
    if curStep == 384 or curStep == 1040 then
        smoothZoomIG = false
    end
end
function onBeatHit()
    cameraThingy = 1.1
end