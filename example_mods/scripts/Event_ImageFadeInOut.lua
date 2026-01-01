function onEvent(name, v1, v2)
    if name == "Image Fade In" then
        image = tostring(v1)
        time = tonumber(v2)
        makeLuaSprite('newImg'..image, image, 0, 0)
        setObjectCamera('newImg'..image, 'hud')
        setProperty('newImg'..image..'.alpha', 0)
        addLuaSprite('newImg'..image)
        doTweenAlpha('appearing'..image, 'newImg'..image, 1, time, 'linear')
    end
    if name == "Image Fade Out" then
        image2 = tostring(v1)
        time2 = tonumber(v2)
        doTweenAlpha('disappearing'..image2, 'newImg'..image2, 0, time2, 'linear')
    end
end

function onTweenCompleted(tag)
    if tag == "disappearing"..image2 then
        removeLuaSprite('newImg'..image)
    end
end