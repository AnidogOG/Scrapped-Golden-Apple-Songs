function onBeatHit()
if curBeat >= 956 then
makeLuaSprite('brobgonallight','backgrounds/story/jambino/brobgonallight',180, 120)
addLuaSprite('brobgonallight',false)
scaleObject('brobgonallight', 0.5, 0.5);
end
end