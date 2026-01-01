package states;

import flixel.util.typeLimit.OneOfTwo;
import flixel.group.FlxGroup;
import flixel.input.gamepad.FlxGamepad;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import openfl.Assets;
import haxe.xml.Access;
import hxvlc.flixel.FlxVideoSprite;

class IntroState extends MusicBeatState
{
	public var videoCutscene:FlxVideoSprite;
	override public function create():Void
	{
        	startVideo('startupIntro'); // change this boi

		super.create();
	}

   	public function startVideo(name:String)
	{
		videoCutscene = new FlxVideoSprite(0, 0);
		add(videoCutscene);
		videoCutscene.load(Paths.video(name));
		videoCutscene.play();
		videoCutscene.alpha = 1;
		videoCutscene.visible = true;
		videoCutscene.bitmap.onEndReached.add(function()
		{
            		new FlxTimer().start(0.1, function(tmr:FlxTimer)
            		{
				MusicBeatState.switchState(new TitleState());
            		});
		});
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}