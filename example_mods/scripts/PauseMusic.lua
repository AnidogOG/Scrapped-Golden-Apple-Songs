--[[
    loads custom pause music per song

    make a music file titled "songname-pause.ogg" in the music folder
    replacing songname with your song, here are some base-game examples:

    "Tutorial"
    tutorial-pause.ogg

    "Blammed"
    blammed-pause.ogg

    "Winter Horrorland"
    winter-horrorland-pause.ogg
]]

---@param song string
---@return string
local function encodeSongPath(song)
    if song == nil then
        return ''
    end
    return song:gsub('%s', '-')
end

local originalSong = ''

local clientPrefsClass = 'backend.ClientPrefs'
local pauseMusicData = 'data.pauseMusic'

function onCreatePost()
    if version < '0.7.0' then
        clientPrefsClass = 'ClientPrefs'
        pauseMusicData = 'pauseMusic'
    end

    local newPauseMusic = encodeSongPath(songName:lower()) .. '-pause.ogg'

    originalSong = getPropertyFromClass(clientPrefsClass, pauseMusicData)
    if originalSong ~= 'None' and (
    checkFileExists('music/' .. newPauseMusic, false)
    or checkFileExists('mods/music/' .. newPauseMusic, true)) then
        newPauseMusic = newPauseMusic:sub(1, #newPauseMusic - 4)
        if version < '0.7.3' then
            precacheMusic(newPauseMusic)
        end

        setPropertyFromClass(clientPrefsClass, pauseMusicData, newPauseMusic)
    else
        close(false)
    end
end

function onDestroy()
    setPropertyFromClass(clientPrefsClass, pauseMusicData, originalSong)
end