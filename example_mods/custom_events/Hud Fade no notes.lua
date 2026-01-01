local tweenedHud = {
    'timeBar',
    'timeBarBG',
    'healthBar',
    'healthBarBG',
    'iconP1',
    'iconP2',
    'timeTxt',
    'scoreTxt'
}

function onEvent(name, value1, value2)
    if name == 'Hud Fade no notes' then
        for i, specHud in ipairs(tweenedHud) do
            doTweenAlpha('tween' .. i, specHud, tonumber(value2), tonumber(value1), 'linear')
        end
    end
end