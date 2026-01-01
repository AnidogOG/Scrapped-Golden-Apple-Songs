package backend;

import openfl.utils.Assets;
import lime.utils.Assets as LimeAssets;

class CoolUtil
{
	public static function checkForUpdates(url:String = null):String {
		if (url == null || url.length == 0)
			url = "https://raw.githubusercontent.com/ShadowMario/FNF-PsychEngine/main/gitVersion.txt";
		var version:String = states.MainMenuState.psychEngineVersion.trim();
		if(ClientPrefs.data.checkForUpdates) {
			trace('checking for updates...');
			var http = new haxe.Http(url);
			http.onData = function (data:String)
			{
				var newVersion:String = data.split('\n')[0].trim();
				trace('version online: $newVersion, your version: $version');
				if(newVersion != version) {
					trace('versions arent matching! please update');
					version = newVersion;
					http.onData = null;
					http.onError = null;
					http = null;
				}
			}
			http.onError = function (error) {
				trace('error: $error');
			}
			http.request();
		}
		return version;
	}
	inline public static function quantize(f:Float, snap:Float){
		// changed so this actually works lol
		var m:Float = Math.fround(f * snap);
		//trace(snap);
		return (m / snap);
	}

	inline public static function capitalize(text:String)
		return text.charAt(0).toUpperCase() + text.substr(1).toLowerCase();

	inline public static function songDiffRating(song:String)
	{
		var diff:String = 'unknown';
		switch(song.toLowerCase())
		{
			case 'bambi 666 level' | 'retro' | 'screwedathon' | 'get him back':
				diff = 'extreme';

			case 'jambino v2' | 'jambino v3' | 'unhinged v2' | 'unhinged v3' | 'apples' | 'usb' | 'free exclusive' | 'underscore' | 'funny' | 'magicality' | 'ataefull' | 'teachers lounge' | '2d bandu level' | 'sillier v1' | 'speedo' | 'galactic v4' | 'curveball v3' | 'apple leak (redhungy section)' | 'you cheated v1' | 'you cheated v2' | 'supernovayyyy' | 'poopers v2' | 'sploinkerz!' | 'sky! sings cheating' | 'sky! sings unfairness' | 'cotton candy' | 'corrupted file v4' | 'corrupted file v5' | 'super nostalgia blast v1' | 'cheating not cute v2' | 'fnf vs my dave v1' | 'fnf vs my dave v2' | 'fnf vs my dave v3' | 'pizzamania' | 'minus disruption' | 'minus wireframe v1' | 'minus wireframe v2' | 'minus wireframe v3' | 'ripple v1' | 'ripple v2' | 'triple trouble' | 'left unchecked v2':
				diff = 'hard';

			case 'kirbathon' | 'pool party' | 'expunger' | 'schooled' | 'gotta sleep' | 'snoozefest v1' | 'snoozefest v2' | 'decimal v2' | 'corndog' | 'scared' | 'servant' | 'production' | 'bambi bass' | 'metallic v2' | 'high heels' | 'peanut vendor' | 'krunker' | 'seatbelt' | 'beef v1' | 'beef v2' | 'beef v3' | 'galactic v2' | 'sick tricks v2' | 'sick tricks v3' | 'workaround' | 'phase 6 v2' | 'creation' | 'buttered' | 'bloat' | 'flawless' | 'swagathon v1' | 'swagathon v2' | 'speed' | 'the importer' | 'scraped' | 'corrupted file v2' | 'corrupted file v3' | 'super nostalgia blast v2' | 'cheating not cute v1' | 'boingin\'' | 'squashathon' | 'flipper' | 'clown' | 'stubborn' | 'minus recovered project' | 'chippy' | 'sunshine v2' | 'monochrome' | 'legacy':
				diff = 'normal';

			case 'jambino v1' | 'origin v3' | 'hiccup' | 'ages 7 to 10' | 'decimal v1' | 'jumpman25\'s discord server' | 'cval' | 'the dream' | 'genocidal' | 'ringtone' | 'vs. the good' | 'grand' | 'galactic v3' | 'sick tricks v4' | 'curveball v1' | 'curveball v2' | 'curveball v4' | 'ugh' | 'corrupted file v1' | 'sick tricks v1' | 'galactic' | 'phase 6 v1' | 'apple leak (4k gary section)' | 'long run v1' | 'long run v2' | 'buttery sadness' | 'filtered' | 'the worst' | 'wheels v2' | 'cartwheels' | 'awesome' | 'wasted' | 'mario paint' | 'the chunes v1' | 'the chunes v2' | 'the boss' | 'midnight':
				diff = 'easy';

			case '':
				diff = 'none';

			default:
				diff = 'unknown';
		}
		return diff;
	}

	inline public static function coolTextFile(path:String):Array<String>
	{
		var daList:String = null;
		#if (sys && MODS_ALLOWED)
		if(FileSystem.exists(path)) daList = File.getContent(path);
		#else
		if(Assets.exists(path)) daList = Assets.getText(path);
		#end
		return daList != null ? listFromString(daList) : [];
	}

	inline public static function colorFromString(color:String):FlxColor
	{
		var hideChars = ~/[\t\n\r]/;
		var color:String = hideChars.split(color).join('').trim();
		if(color.startsWith('0x')) color = color.substring(color.length - 6);

		var colorNum:Null<FlxColor> = FlxColor.fromString(color);
		if(colorNum == null) colorNum = FlxColor.fromString('#$color');
		return colorNum != null ? colorNum : FlxColor.WHITE;
	}

	inline public static function listFromString(string:String):Array<String>
	{
		var daList:Array<String> = [];
		daList = string.trim().split('\n');

		for (i in 0...daList.length)
			daList[i] = daList[i].trim();

		return daList;
	}

	public static function floorDecimal(value:Float, decimals:Int):Float
	{
		if(decimals < 1)
			return Math.floor(value);

		return Math.floor(value * Math.pow(10, decimals)) / Math.pow(10, decimals);
	}

	inline public static function dominantColor(sprite:flixel.FlxSprite):Int
	{
		var countByColor:Map<Int, Int> = [];
		for(col in 0...sprite.frameWidth)
		{
			for(row in 0...sprite.frameHeight)
			{
				var colorOfThisPixel:FlxColor = sprite.pixels.getPixel32(col, row);
				if(colorOfThisPixel.alphaFloat > 0.05)
				{
					colorOfThisPixel = FlxColor.fromRGB(colorOfThisPixel.red, colorOfThisPixel.green, colorOfThisPixel.blue, 255);
					var count:Int = countByColor.exists(colorOfThisPixel) ? countByColor[colorOfThisPixel] : 0;
					countByColor[colorOfThisPixel] = count + 1;
				}
			}
		}

		var maxCount = 0;
		var maxKey:Int = 0; //after the loop this will store the max color
		countByColor[FlxColor.BLACK] = 0;
		for(key => count in countByColor)
		{
			if(count >= maxCount)
			{
				maxCount = count;
				maxKey = key;
			}
		}
		countByColor = [];
		return maxKey;
	}

	inline public static function numberArray(max:Int, ?min = 0):Array<Int>
	{
		var dumbArray:Array<Int> = [];
		for (i in min...max) dumbArray.push(i);

		return dumbArray;
	}

	inline public static function browserLoad(site:String) {
		#if linux
		Sys.command('/usr/bin/xdg-open', [site]);
		#else
		FlxG.openURL(site);
		#end
	}

	inline public static function openFolder(folder:String, absolute:Bool = false) {
		#if sys
			if(!absolute) folder =  Sys.getCwd() + '$folder';

			folder = folder.replace('/', '\\');
			if(folder.endsWith('/')) folder.substr(0, folder.length - 1);

			#if linux
			var command:String = '/usr/bin/xdg-open';
			#else
			var command:String = 'explorer.exe';
			#end
			Sys.command(command, [folder]);
			trace('$command $folder');
		#else
			FlxG.error("Platform is not supported for CoolUtil.openFolder");
		#end
	}

	/**
		Helper Function to Fix Save Files for Flixel 5

		-- EDIT: [November 29, 2023] --

		this function is used to get the save path, period.
		since newer flixel versions are being enforced anyways.
		@crowplexus
	**/
	@:access(flixel.util.FlxSave.validate)
	inline public static function getSavePath():String {
		final company:String = FlxG.stage.application.meta.get('company');
		// #if (flixel < "5.0.0") return company; #else
		return '${company}/${flixel.util.FlxSave.validate(FlxG.stage.application.meta.get('file'))}';
		// #end
	}

	public static function setTextBorderFromString(text:FlxText, border:String)
	{
		switch(border.toLowerCase().trim())
		{
			case 'shadow':
				text.borderStyle = SHADOW;
			case 'outline':
				text.borderStyle = OUTLINE;
			case 'outline_fast', 'outlinefast':
				text.borderStyle = OUTLINE_FAST;
			default:
				text.borderStyle = NONE;
		}
	}
}
