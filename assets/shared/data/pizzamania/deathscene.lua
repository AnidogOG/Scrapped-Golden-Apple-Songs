function onGameOverStart()
    setPropertyFromClass('substates.GameOverSubstate', 'instance.isEnding', true)
    startVideo('pizza_adventure_3', true)
    runHaxeCode([[
        import backend.MusicBeatState;
        game.videoCutscene.finishCallback = function() {
            MusicBeatState.resetState();
        }
    ]])
end