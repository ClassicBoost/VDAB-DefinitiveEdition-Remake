--I wouldn't really need to use lua for this but I'm using it anyway lol
function onStepHit()
    if curStep == 640 then
        setProperty('cheatingModchart', true)
        if flashingLights then
        cameraFlash('hud', 'FFFFFF', 1, true)
        end
    end
    if curStep == 1151 then
        setProperty('cheatingModchart', false)
        if flashingLights then
            cameraFlash('hud', 'FFFFFF', 1, true)
            end
    end
    if curStep == 1152 then
        noteTweenX('moveNoteX0', 0, defaultOpponentStrumX0, 0.5, 'ease');
        noteTweenX('moveNoteX1', 1, defaultOpponentStrumX1, 0.5, 'ease');
        noteTweenX('moveNoteX2', 2, defaultOpponentStrumX2, 0.5, 'ease');
        noteTweenX('moveNoteX3', 3, defaultOpponentStrumX3, 0.5, 'ease');
    
        noteTweenX('moveNoteX4', 4, defaultPlayerStrumX0, 0.5, 'ease');
        noteTweenX('moveNoteX5', 5, defaultPlayerStrumX1, 0.5, 'ease');
        noteTweenX('moveNoteX6', 6, defaultPlayerStrumX2, 0.5, 'ease');
        noteTweenX('moveNoteX7', 7, defaultPlayerStrumX3, 0.5, 'ease');
    end
    if curStep == 1920 then
        if flashingLights then
        cameraFlash('hud', 'FFFFFF', 1, true)
        end
        setProperty('unfairModchart', true)
        setProperty('forceDisableGhost', true)
    end
    if curStep == 2432 then
        if flashingLights then
        cameraFlash('other', 'FFFFFF', 1, true)
        end
        setProperty('forceDisableGhost', false)
        setProperty('health', 2)
        setProperty('camHUD.alpha', 0)
    end
end