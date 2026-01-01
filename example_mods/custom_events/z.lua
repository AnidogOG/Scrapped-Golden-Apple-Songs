local zoop = false;
local swag = true;

function onEvent(name, value1, value2)
    if name == 'z' then

    end
end 

function onTweenCompleted(tag)
    if tag == 'byebye' then
        if swag == true then
            removeLuaSprite('image', true);
        else
            removeLuaSprite('img2', true);
        end
    end
end

function onBeatHit()
    if swag == true then
        if curBeat == 752 then
            doTweenAlpha('byebye2342', 'sky', 0, 1, 'linear');
        end
    end
end