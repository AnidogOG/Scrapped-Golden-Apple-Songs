local allowCountdown = false
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.012 then
        setProperty('health', health- 0.012);
    end
end