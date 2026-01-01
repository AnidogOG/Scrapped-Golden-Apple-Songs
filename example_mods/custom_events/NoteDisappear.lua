local FadePosition = 500
luaDebugMode = true

function onEvent(name, value1, value2)
if name == 'NoteDisappear' then
FadePosition = value1
end
end

function onCreate()
copyAlpha = false
FadePosition = 500
end

function onUpdatePost()
for i = 0, getProperty('notes.length')-1 do
if getSongPosition() >= getProperty('notes.members['..i..'].strumTime') - FadePosition then
setProperty('notes.members['..i..'].alpha', 0)
end
end
end