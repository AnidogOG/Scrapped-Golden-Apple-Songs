function onEvent(name, value1, value2)
    if name == 'swapHotdogs' then
        if luaSpriteExists(value1) then
            scaleObject(value1, 0, 0);
        end
        if luaSpriteExists(value2) then
            scaleObject(value2, 1, 1);
        end
    end
end 