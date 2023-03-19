drainShit = false

function onUpdate(elapsed)
    if drainShit then
        if getPropertyFromClass('ClientPrefs', 'mechanicsDifficulty') == 'HELL' then
        if getProperty('health') > 0.1 then
        setProperty('health', getProperty('health') - 0.003)
        end
    end
        if getPropertyFromClass('ClientPrefs', 'mechanicsDifficulty') == 'Normal' then
        if getProperty('health') > 0.4 then
        setProperty('health', getProperty('health') - 0.001)
        end
    end
    end
end

function goodNoteHit()
    setProperty('health', getProperty('health') + 0.025)
end

function onStepHit()
    if curStep == 383 or curStep == 1664 then
        drainShit = true
    end
    if curStep == 1408 then
        drainShit = false
    end
end