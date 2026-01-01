package states;

import backend.WeekData;
import backend.Highscore;
import backend.Song;
import backend.CoolUtil;

import objects.HealthIcon;
import objects.MusicPlayer;

import options.GameplayChangersSubstate;
import substates.ResetScoreSubState;

import flixel.math.FlxMath;
import flixel.util.FlxDestroyUtil;

import openfl.utils.Assets;

import haxe.Json;

class FreeplayState extends MusicBeatState
{
	var songs:Array<SongMetadata> = [];

	var selector:FlxText;
	private static var curSelected:Int = 0;
	var lerpSelected:Float = 0;
	var curDifficulty:Int = -1;
	private static var lastDifficultyName:String = Difficulty.getDefault();

	var scoreBG:FlxSprite;
	var scoreText:FlxText;
	var diffText:FlxText;
	var lerpScore:Int = 0;
	var lerpRating:Float = 0;
	var intendedScore:Int = 0;
	var intendedRating:Float = 0;

	var curCategory:FlxText;

	private var grpSongs:FlxTypedGroup<Alphabet>;
	private var curPlaying:Bool = false;

	private var iconArray:Array<HealthIcon> = [];

	var bg:FlxSprite;
	var intendedColor:Int;

	var missingTextBG:FlxSprite;
	var missingText:FlxText;

	var bottomString:String;
	var bottomText:FlxText;
	var bottomBG:FlxSprite;

	var player:MusicPlayer;

	var logos:Array<FlxSprite> = [];

	var logoNames:Array<String> = ['SonicExe', 'HypnosLullaby', 'HypnosLullaby', 'SonicExe', 'TheBoss', 'SpongebobParodies', 'Crunchin', 'Afton'];

	override function create()
	{
		
		if (FreeplaySelectState.freeplayCats[FreeplaySelectState.curCategory].toLowerCase() == 'covers')
			logos = [for (i in logoNames) new FlxSprite().loadGraphic(Paths.image('logos/$i'))];

		switch (FreeplaySelectState.freeplayCats[FreeplaySelectState.curCategory].toLowerCase())
			{
				case 'extras':
					addWeek(['Origin V3'], 0, 0xff00c3ff, ['extras/bandu-origin']);
					addWeek(['Unhinged V2'], 0, 0xff00c3ff, ['extras/manic']);
					addWeek(['Unhinged V3'], 0, 0xff00c3ff, ['extras/manic']);
					addWeek(['Chippy'], 0, 0xff00c3ff, ['extras/chipper']);
					addWeek(['Pool Party'], 0, 0xff00c3ff, ['extras/bambi']);
					addWeek(['Apples'], 0, 0xff00c3ff, ['extras/bandu']);
					addWeek(['Hiccup'], 0, 0xff00c3ff, ['extras/bandu']);
					addWeek(['Expunger'], 0, 0xff00c3ff, ['extras/expunged']);
					addWeek(['Schooled'], 0, 0xff00c3ff, ['extras/og-dave']);
					addWeek(['Ages 7 to 10'], 0, 0xff00c3ff, ['extras/playrobot']);
					addWeek(['USB'], 0, 0xff00c3ff, ['extras/playrobot']);
					addWeek(['Gotta Sleep'], 0, 0xff00c3ff, ['extras/gotta']);
					addWeek(['Snoozefest V1'], 0, 0xff00c3ff, ['extras/gotta']);
					addWeek(['Snoozefest V2'], 0, 0xff00c3ff, ['extras/gotta']);
					addWeek(['Free Exclusive'], 0, 0xff00c3ff, ['extras/dave']);
					addWeek(['Underscore'], 0, 0xff00c3ff, ['extras/underscore']);
					addWeek(['Decimal V1'], 0, 0xff00c3ff, ['extras/ohungi']);
					addWeek(['Decimal V2'], 0, 0xff00c3ff, ['extras/ohungi']);
					addWeek(['CornDog'], 0, 0xff00c3ff, ['extras/dab']);
					addWeek(['Funny'], 0, 0xff00c3ff, ['extras/garrett-animal']);
					addWeek(['Magicality'], 0, 0xff00c3ff, ['extras/wizard']);
					addWeek(['Jumpman25\'s discord server'], 0, 0xff00c3ff, ['extras/garrett-animal']);
					addWeek(['Ataefull'], 0, 0xff00c3ff, ['extras/atae']);
					addWeek(['Scared'], 0, 0xff00c3ff, ['extras/scared']);
					addWeek(['Cval'], 0, 0xff00c3ff, ['extras/cval']);
					addWeek(['Servant'], 0, 0xff00c3ff, ['extras/bandu']);
					addWeek(['The Dream'], 0, 0xff00c3ff, ['extras/og-dave']);
					addWeek(['Genocidal'], 0, 0xff00c3ff, ['extras/sart-producer']);
					addWeek(['Production'], 0, 0xff00c3ff, ['extras/sart']);
					addWeek(['Ringtone'], 0, 0xff00c3ff, ['extras/machine']);
					addWeek(['Teachers Lounge'], 0, 0xff00c3ff, ['extras/marcello']);
					addWeek(['Bambi Bass'], 0, 0xff00c3ff, ['extras/kekker']);
					addWeek(['Vs. The Good'], 0, 0xff00c3ff, ['extras/good']);
					addWeek(['2D Bandu Level'], 0, 0xff00c3ff, ['extras/bandu-2d']);
				case 'ocs':
					addWeek(['Metallic V2'], 1, 0xff00c3ff, ['oc/ringi']);
					addWeek(['Sillier V1'], 1, 0xff00c3ff, ['oc/blogblez']);
					addWeek(['High Heels'], 1, 0xff00c3ff, ['oc/blogblez-new']);
					addWeek(['Peanut Vendor'], 1, 0xff00c3ff, ['oc/krunkli']);
					addWeek(['Krunker'], 1, 0xff00c3ff, ['oc/smartass']);
					addWeek(['Grand'], 1, 0xff00c3ff, ['oc/grand']);
					addWeek(['Speedo'], 1, 0xff00c3ff, ['oc/swimhead']);
					addWeek(['Seatbelt'], 1, 0xff00c3ff, ['oc/linbi']);
					addWeek(['Beef V1'], 1, 0xff00c3ff, ['oc/glomgrajbi']);
					addWeek(['Beef V2'], 1, 0xff00c3ff, ['oc/glog']);
					addWeek(['Beef V3'], 1, 0xff00c3ff, ['oc/glog']);
					addWeek(['Bambi 666 Level'], 1, 0xff00c3ff, ['oc/damber']);
				case 'if you know you know':
				    addWeek(['Galactic V2'], 3, 0xff00c3ff, ['iykyk/bambi-joke']);
				    addWeek(['Galactic V3'], 3, 0xff00c3ff, ['iykyk/super']);
				    addWeek(['Galactic V4'], 3, 0xff00c3ff, ['iykyk/super']);
				    addWeek(['Sick Tricks V1'], 3, 0xff00c3ff, ['iykyk/roblos']);
				    addWeek(['Sick Tricks V3'], 3, 0xff00c3ff, ['iykyk/roblos']);
				    addWeek(['Sick Tricks V4'], 3, 0xff00c3ff, ['iykyk/roblos']);
				    addWeek(['Curveball V1'], 3, 0xff00c3ff, ['iykyk/faty']);
				    addWeek(['Curveball V2'], 3, 0xff00c3ff, ['iykyk/faty']);
				    addWeek(['Curveball V3'], 3, 0xff00c3ff, ['iykyk/faty']);
				    addWeek(['Curveball V4'], 3, 0xff00c3ff, ['iykyk/faty']);
				    addWeek(['Workaround'], 3, 0xff00c3ff, ['iykyk/john']);
				    addWeek(['Phase 6 V1'], 3, 0xff00c3ff, ['iykyk/tricky']);
				    addWeek(['Phase 6 V2'], 3, 0xff00c3ff, ['iykyk/tricky']);
				    addWeek(['Apple Leak (4K Gary Section)'], 3, 0xff00c3ff, ['iykyk/gary-awful']);
				    addWeek(['Apple Leak (Redhungy Section)'], 3, 0xff00c3ff, ['iykyk/redhungy']);
				    addWeek(['You Cheated V1'], 3, 0xff00c3ff, ['iykyk/cheaty']);
				    addWeek(['You Cheated V2'], 3, 0xff00c3ff, ['iykyk/cheaty']);
				    addWeek(['Creation'], 3, 0xff00c3ff, ['iykyk/moldy']);
				    addWeek(['Long Run V1'], 3, 0xff00c3ff, ['iykyk/longbrob']);
				    addWeek(['Long Run V2'], 3, 0xff00c3ff, ['iykyk/longbrob']);
				    addWeek(['Buttery Sadness'], 3, 0xff00c3ff, ['iykyk/butter']);
				    addWeek(['Buttered'], 3, 0xff00c3ff, ['iykyk/butter']);
				    addWeek(['Filtered'], 3, 0xff00c3ff, ['iykyk/lines']);
				    addWeek(['Bloat'], 3, 0xff00c3ff, ['iykyk/bloat']);
				    addWeek(['Flawless'], 3, 0xff00c3ff, ['iykyk/bandu-flawless']);
				    addWeek(['The Worst'], 3, 0xff00c3ff, ['iykyk/denbi']);
				case 'joke':
					addWeek(['Supernovayyyy'], 2, 0xff00c3ff, ['iykyk/bambi-joke']);
					addWeek(['Wheels V2'], 2, 0xff00c3ff, ['joke/wheels']);
					addWeek(['Cartwheels'], 2, 0xff00c3ff, ['joke/wheels']);
					addWeek(['Poopers V2'], 2, 0xff00c3ff, ['joke/awesome-son']);
					addWeek(['Swagathon V1'], 2, 0xff00c3ff, ['joke/dave-swagathon']);
					addWeek(['Swagathon V2'], 2, 0xff00c3ff, ['joke/dave-swagathon']);
					addWeek(['Awesome'], 2, 0xff00c3ff, ['joke/zink']);
					addWeek(['Speed'], 2, 0xff00c3ff, ['joke/bormp']);
					addWeek(['Sploinkerz!'], 2, 0xff00c3ff, ['joke/sploinkerz']);
					addWeek(['Retro'], 2, 0xff00c3ff, ['joke/dave-retro']);
					addWeek(['Wasted'], 2, 0xff00c3ff, ['joke/cynda']);
					addWeek(['Screwedathon'], 2, 0xff00c3ff, ['joke/screwedathon/bambi-mad']);
					addWeek(['The Importer'], 2, 0xff00c3ff, ['joke/import']);
					addWeek(['Sky! Sings Cheating'], 2, 0xff00c3ff, ['joke/cheating-sky']);
					addWeek(['Sky! Sings Unfairness'], 2, 0xff00c3ff, ['joke/unfair-sky']);
					addWeek(['Scraped'], 2, 0xff00c3ff, ['joke/pissey']);
				case 'top 10 awesome!!!':
				    addWeek(['Cotton Candy'], 5, 0xff00c3ff, ['tta/badai']);
				case 'secret':
				    addWeek(['Corrupted File V1'], 4, 0xff00c3ff, ['secret/corrupt']);
				    addWeek(['Corrupted File V2'], 4, 0xff00c3ff, ['secret/corrupt']);
				    addWeek(['Corrupted File V3'], 4, 0xff00c3ff, ['secret/corrupt']);
				    addWeek(['Corrupted File V4'], 4, 0xff00c3ff, ['secret/corrupt']);
				    addWeek(['Corrupted File V5'], 4, 0xff00c3ff, ['secret/corrupt']);
				    addWeek(['Super Nostalgia Blast V1'], 4, 0xff00c3ff, ['secret/mario']);
				    addWeek(['Super Nostalgia Blast V2'], 4, 0xff00c3ff, ['secret/mario']);
				    addWeek(['Ripple V1'], 4, 0xff00c3ff, ['secret/rippler']);
				    addWeek(['Ripple V2'], 4, 0xff00c3ff, ['secret/rippler']);
				    addWeek(['Cheating Not Cute V1'], 4, 0xff00c3ff, ['secret/dwb']);
				    addWeek(['Cheating Not Cute V2'], 4, 0xff00c3ff, ['secret/dwb']);
				    addWeek(['Boingin\''], 4, 0xff00c3ff, ['secret/bing']);
				    addWeek(['Squashathon'], 4, 0xff00c3ff, ['secret/ruby-feral']);
				    addWeek(['FNF Vs My Dave V1'], 4, 0xff00c3ff, ['secret/mydave']);
				    addWeek(['FNF Vs My Dave V2'], 4, 0xff00c3ff, ['secret/mydave']);
				    addWeek(['FNF Vs My Dave V3'], 4, 0xff00c3ff, ['secret/mydave']);
				    addWeek(['Flipper'], 4, 0xff00c3ff, ['secret/flipper']);
				case 'peanut paywall':
				    addWeek(['Clown'], 6, 0xff00c3ff, ['peanut paywall/peensum']);
				    addWeek(['Pizzamania'], 6, 0xff00c3ff, ['peanut paywall/tabbi']);
				    addWeek(['Stubborn'], 6, 0xff00c3ff, ['peanut paywall/seek']);
				    addWeek(['Mario Paint'], 6, 0xff00c3ff, ['peanut paywall/dude']);
				case 'marcello shop':
				    addWeek(['The Chunes V1'], 6, 0xff00c3ff, ['marcello shop/silly']);
				    addWeek(['The Chunes V2'], 6, 0xff00c3ff, ['marcello shop/silly']);
				case 'minus':
				    addWeek(['Minus Disruption'], 7, 0xff00c3ff, ['minus/disrupt']);
				    addWeek(['Minus Wireframe V1'], 7, 0xff00c3ff, ['minus/decdave']);
				    addWeek(['Minus Wireframe V2'], 7, 0xff00c3ff, ['minus/decdave']);
				    addWeek(['Minus Wireframe V3'], 7, 0xff00c3ff, ['minus/decdave']);
				    addWeek(['Minus Recovered Project'], 7, 0xff00c3ff, ['minus/recovered']);
				case 'covers':
				    addWeek(['Sunshine V2'], 6, 0xff00c3ff, ['covers/doll']);
				    addWeek(['Left Unchecked V2'], 6, 0xff00c3ff, ['covers/dave-unchecked']);
				    addWeek(['Monochrome'], 6, 0xff00c3ff, ['extras/dave']);
				    addWeek(['Triple Trouble'], 6, 0xff00c3ff, ['covers/butch']);
				    addWeek(['The Boss'], 6, 0xff00c3ff, ['covers/bossdu']);
				    addWeek(['Get Him Back'], 6, 0xff00c3ff, ['covers/getspunged']);
				    addWeek(['Legacy'], 6, 0xff00c3ff, ['extras/dave']);
				    addWeek(['Midnight'], 6, 0xff00c3ff, ['extras/sart']);
			};

		//Paths.clearStoredMemory();
		//Paths.clearUnusedMemory();
		
		persistentUpdate = true;
		PlayState.isStoryMode = false;

		#if DISCORD_ALLOWED
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end

		bg = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		bg.antialiasing = ClientPrefs.data.antialiasing;
		add(bg);
		bg.screenCenter();

		grpSongs = new FlxTypedGroup<Alphabet>();
		add(grpSongs);

		for (i in 0...songs.length)
		{
			var songText:Alphabet = new Alphabet(90, 320, songs[i].songName, true);
			songText.targetY = i;
			grpSongs.add(songText);

			songText.scaleX = Math.min(1, 980 / songText.width);
			songText.snapToPosition();

			Mods.currentModDirectory = songs[i].folder;
			var icon:HealthIcon = new HealthIcon(songs[i].songCharacter);
			icon.sprTracker = songText;

			
			// too laggy with a lot of songs, so i had to recode the logic for it
			songText.visible = songText.active = songText.isMenuItem = false;
			icon.visible = icon.active = false;

			// using a FlxGroup is too much fuss!
			iconArray.push(icon);
			add(icon);

			// songText.x += 40;
			// DONT PUT X IN THE FIRST PARAMETER OF new ALPHABET() !!
			// songText.screenCenter(X);
		}

		scoreText = new FlxText(FlxG.width * 0.7, 5, 0, "", 32);
		scoreText.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, RIGHT);

		scoreBG = new FlxSprite(scoreText.x - 6, 0).makeGraphic(1, 44, 0xFF000000);
		scoreBG.alpha = 0.6;
		add(scoreBG);

		add(scoreText);

		curCategory = new FlxText(0, scoreText.y, 0, FreeplaySelectState.freeplayCats[FreeplaySelectState.curCategory], 32);
		curCategory.font = scoreText.font;
		curCategory.screenCenter(X);

		missingTextBG = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		missingTextBG.alpha = 0.6;
		missingTextBG.visible = false;
		add(missingTextBG);
		
		missingText = new FlxText(50, 0, FlxG.width - 100, '', 24);
		missingText.setFormat(Paths.font("vcr.ttf"), 24, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		missingText.scrollFactor.set();
		missingText.visible = false;
		add(missingText);

		if(curSelected >= songs.length) curSelected = 0;
		bg.color = songs[curSelected].color;
		intendedColor = bg.color;
		lerpSelected = curSelected;

		curDifficulty = Math.round(Math.max(0, Difficulty.defaultList.indexOf(lastDifficultyName)));

		bottomBG = new FlxSprite(0, FlxG.height - 26).makeGraphic(FlxG.width, 26, 0xFF000000);
		bottomBG.alpha = 0.6;
		add(bottomBG);

		var leText:String = Language.getPhrase("freeplay_tip", "Press SPACE to listen to the Song / Press CTRL to open the Gameplay Changers Menu / Press RESET to Reset your Score and Accuracy.");
		bottomString = leText;
		var size:Int = 16;
		bottomText = new FlxText(bottomBG.x, bottomBG.y + 4, FlxG.width, leText, size);
		bottomText.setFormat(Paths.font("vcr.ttf"), size, FlxColor.WHITE, CENTER);
		bottomText.scrollFactor.set();
		add(bottomText);
		
		player = new MusicPlayer(this);
		add(player);

		for (i in logos)  {
			i.setGraphicSize(450);
			i.screenCenter();
			i.x += 380;
			i.y += -100;
			add(i);
		}
		
		changeSelection();
		updateDiffies();
		updateTexts();
		super.create();
	}

	override function closeSubState()
	{
		changeSelection(0, false);
		persistentUpdate = true;
		super.closeSubState();
	}

	public function addSong(songName:String, weekNum:Int, songCharacter:String, color:Int)
	{
		songs.push(new SongMetadata(songName, weekNum, songCharacter, color));
	}

	public function addWeek(songs:Array<String>, weekNum:Int, weekColor:Int, ?songCharacters:Array<String>)
	{
		if (songCharacters == null)
			songCharacters = ['bf'];
		var num:Int = 0;
		for (song in songs)
		{
			addSong(song, weekNum, songCharacters[num], weekColor);
			if (songCharacters.length != 1)
				num++;
		}
	}

	var instPlaying:Int = -1;
	public static var vocals:FlxSound = null;
	public static var opponentVocals:FlxSound = null;
	var holdTime:Float = 0;

	var stopMusicPlay:Bool = false;
	override function update(elapsed:Float)
	{
		if (FlxG.sound.music.volume < 0.7)
			FlxG.sound.music.volume += 0.5 * elapsed;

		lerpScore = Math.floor(FlxMath.lerp(intendedScore, lerpScore, Math.exp(-elapsed * 24)));
		lerpRating = FlxMath.lerp(intendedRating, lerpRating, Math.exp(-elapsed * 12));

		if (Math.abs(lerpScore - intendedScore) <= 10)
			lerpScore = intendedScore;
		if (Math.abs(lerpRating - intendedRating) <= 0.01)
			lerpRating = intendedRating;

		var ratingSplit:Array<String> = Std.string(CoolUtil.floorDecimal(lerpRating * 100, 2)).split('.');
		if(ratingSplit.length < 2) //No decimals, add an empty space
			ratingSplit.push('');
		
		while(ratingSplit[1].length < 2) //Less than 2 decimals in it, add decimals then
			ratingSplit[1] += '0';

		var shiftMult:Int = 1;
		if(FlxG.keys.pressed.SHIFT) shiftMult = 3;

		if (!player.playingMusic)
		{
			scoreText.text = Language.getPhrase('personal_best', 'Highscore: {1} ({2}%)', [lerpScore, ratingSplit.join('.')]);
			positionHighscore();
			
			if(songs.length > 1)
			{
				if(FlxG.keys.justPressed.HOME)
				{
					curSelected = 0;
					changeSelection();
					holdTime = 0;	
				}
				else if(FlxG.keys.justPressed.END)
				{
					curSelected = songs.length - 1;
					changeSelection();
					holdTime = 0;	
				}
				if (controls.UI_UP_P)
				{
					changeSelection(-shiftMult);
					holdTime = 0;
				}
				if (controls.UI_DOWN_P)
				{
					changeSelection(shiftMult);
					holdTime = 0;
				}

				if(controls.UI_DOWN || controls.UI_UP)
				{
					var checkLastHold:Int = Math.floor((holdTime - 0.5) * 10);
					holdTime += elapsed;
					var checkNewHold:Int = Math.floor((holdTime - 0.5) * 10);

					if(holdTime > 0.5 && checkNewHold - checkLastHold > 0)
						changeSelection((checkNewHold - checkLastHold) * (controls.UI_UP ? -shiftMult : shiftMult));
				}

				if(FlxG.mouse.wheel != 0)
				{
					FlxG.sound.play(Paths.sound('scrollMenu'), 0.2);
					changeSelection(-shiftMult * FlxG.mouse.wheel, false);
				}
			}

			if (controls.UI_LEFT_P)
			{
				changeDiff(-1);
				_updateSongLastDifficulty();
			}
			else if (controls.UI_RIGHT_P)
			{
				changeDiff(1);
				_updateSongLastDifficulty();
			}
		}

		if (controls.BACK)
		{
			if (player.playingMusic)
			{
				FlxG.sound.music.stop();
				destroyFreeplayVocals();
				FlxG.sound.music.volume = 0;
				instPlaying = -1;

				player.playingMusic = false;
				player.switchPlayMusic();

				FlxG.sound.playMusic(Paths.music('freakyMenu'), 0);
				FlxTween.tween(FlxG.sound.music, {volume: 1}, 1);
			}
			else 
			{
				persistentUpdate = false;
				FlxG.sound.play(Paths.sound('cancelMenu'));
				MusicBeatState.switchState(new FreeplaySelectState());
			}
		}

		if(FlxG.keys.justPressed.CONTROL && !player.playingMusic)
		{
			persistentUpdate = false;
			openSubState(new GameplayChangersSubstate());
		}
		else if(FlxG.keys.justPressed.SPACE)
		{
			if(instPlaying != curSelected && !player.playingMusic)
			{
				destroyFreeplayVocals();
				FlxG.sound.music.volume = 0;

				Mods.currentModDirectory = songs[curSelected].folder;
				var poop:String = Highscore.formatSong(songs[curSelected].songName.toLowerCase(), curDifficulty);
				Song.loadFromJson(poop, songs[curSelected].songName.toLowerCase());
				if (PlayState.SONG.needsVoices)
				{
					vocals = new FlxSound();
					try
					{
						var playerVocals:String = getVocalFromCharacter(PlayState.SONG.player1);
						var loadedVocals = Paths.voices(PlayState.SONG.song, (playerVocals != null && playerVocals.length > 0) ? playerVocals : 'Player');
						if(loadedVocals == null) loadedVocals = Paths.voices(PlayState.SONG.song);
						
						if(loadedVocals != null && loadedVocals.length > 0)
						{
							vocals.loadEmbedded(loadedVocals);
							FlxG.sound.list.add(vocals);
							vocals.persist = vocals.looped = true;
							vocals.volume = 0.8;
							vocals.play();
							vocals.pause();
						}
						else vocals = FlxDestroyUtil.destroy(vocals);
					}
					catch(e:Dynamic)
					{
						vocals = FlxDestroyUtil.destroy(vocals);
					}
					
					opponentVocals = new FlxSound();
					try
					{
						//trace('please work...');
						var oppVocals:String = getVocalFromCharacter(PlayState.SONG.player2);
						var loadedVocals = Paths.voices(PlayState.SONG.song, (oppVocals != null && oppVocals.length > 0) ? oppVocals : 'Opponent');
						
						if(loadedVocals != null && loadedVocals.length > 0)
						{
							opponentVocals.loadEmbedded(loadedVocals);
							FlxG.sound.list.add(opponentVocals);
							opponentVocals.persist = opponentVocals.looped = true;
							opponentVocals.volume = 0.8;
							opponentVocals.play();
							opponentVocals.pause();
							//trace('yaaay!!');
						}
						else opponentVocals = FlxDestroyUtil.destroy(opponentVocals);
					}
					catch(e:Dynamic)
					{
						//trace('FUUUCK');
						opponentVocals = FlxDestroyUtil.destroy(opponentVocals);
					}
				}

				FlxG.sound.playMusic(Paths.inst(PlayState.SONG.song), 0.8);
				FlxG.sound.music.pause();
				instPlaying = curSelected;

				player.playingMusic = true;
				player.curTime = 0;
				player.switchPlayMusic();
				player.pauseOrResume(true);
			}
			else if (instPlaying == curSelected && player.playingMusic)
			{
				player.pauseOrResume(!player.playing);
			}
		}
		else if (controls.ACCEPT && !player.playingMusic)
		{
			persistentUpdate = false;
			var songLowercase:String = Paths.formatToSongPath(songs[curSelected].songName);
			var poop:String = Highscore.formatSong(songLowercase, curDifficulty);

			try
			{
				Song.loadFromJson(poop, songLowercase);
				PlayState.isStoryMode = false;
				PlayState.storyDifficulty = curDifficulty;
			}
			catch(e:haxe.Exception)
			{
				trace('ERROR! ${e.message}');

				var errorStr:String = e.message;
				if(errorStr.contains('There is no TEXT asset with an ID of')) errorStr = 'Missing file: ' + errorStr.substring(errorStr.indexOf(songLowercase), errorStr.length-1); //Missing chart
				else errorStr += '\n\n' + e.stack;

				missingText.text = 'ERROR WHILE LOADING CHART:\n$errorStr';
				missingText.screenCenter(Y);
				missingText.visible = true;
				missingTextBG.visible = true;
				FlxG.sound.play(Paths.sound('cancelMenu'));

				updateTexts(elapsed);
				super.update(elapsed);
				return;
			}

			@:privateAccess
			if(PlayState._lastLoadedModDirectory != Mods.currentModDirectory)
			{
				trace('CHANGED MOD DIRECTORY, RELOADING STUFF');
				Paths.freeGraphicsFromMemory();
			}
			LoadingState.prepareToSong();
			LoadingState.loadAndSwitchState(new PlayState());
			#if !SHOW_LOADING_SCREEN FlxG.sound.music.stop(); #end
			stopMusicPlay = true;

			destroyFreeplayVocals();
			#if (MODS_ALLOWED && DISCORD_ALLOWED)
			DiscordClient.loadModRPC();
			#end
		}
		else if(controls.RESET && !player.playingMusic)
		{
			persistentUpdate = false;
			openSubState(new ResetScoreSubState(songs[curSelected].songName, curDifficulty, songs[curSelected].songCharacter));
			FlxG.sound.play(Paths.sound('scrollMenu'));
		}

		updateTexts(elapsed);
		super.update(elapsed);
	}
	
	function getVocalFromCharacter(char:String)
	{
		try
		{
			var path:String = Paths.getPath('characters/$char.json', TEXT);
			#if MODS_ALLOWED
			var character:Dynamic = Json.parse(File.getContent(path));
			#else
			var character:Dynamic = Json.parse(Assets.getText(path));
			#end
			return character.vocals_file;
		}
		catch (e:Dynamic) {}
		return null;
	}

	public static function destroyFreeplayVocals() {
		if(vocals != null) vocals.stop();
		vocals = FlxDestroyUtil.destroy(vocals);

		if(opponentVocals != null) opponentVocals.stop();
		opponentVocals = FlxDestroyUtil.destroy(opponentVocals);
	}

	function changeDiff(change:Int = 0)
	{
		if (player.playingMusic)
			return;

		#if !switch
		intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
		intendedRating = Highscore.getRating(songs[curSelected].songName, curDifficulty);
		#end

		lastDifficultyName = Difficulty.getString(curDifficulty, false);

		positionHighscore();
		missingText.visible = false;
		missingTextBG.visible = false;

		updateDiffies();
	}

	var difficultyImg:FlxSprite;

	function updateDiffies()
	{
		if(difficultyImg != null)
		{
			remove(difficultyImg);
		}
		difficultyImg = new FlxSprite();
		difficultyImg.loadGraphic(Paths.image('diff/' + backend.CoolUtil.songDiffRating(songs[curSelected].songName.toLowerCase())));
		difficultyImg.scale.set(0.5, 0.5);
		difficultyImg.setPosition(FlxG.width - ((546 / 1.4) + 40), FlxG.height - ((497 / 1.4) + 40));
		difficultyImg.scrollFactor.set(0, 0);
		add(difficultyImg);
	}

	function changeSelection(change:Int = 0, playSound:Bool = true)
	{
		if (player.playingMusic)
			return;

		curSelected = FlxMath.wrap(curSelected + change, 0, songs.length-1);
		_updateSongLastDifficulty();
		if(playSound) FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);

		var newColor:Int = songs[curSelected].color;
		if(newColor != intendedColor)
		{
			intendedColor = newColor;
			FlxTween.cancelTweensOf(bg);
			FlxTween.color(bg, 1, bg.color, intendedColor);
		}

		for (num => item in grpSongs.members)
		{
			var icon:HealthIcon = iconArray[num];
			item.alpha = 0.6;
			icon.alpha = 0.6;
			if (item.targetY == curSelected)
			{
				item.alpha = 1;
				icon.alpha = 1;
			}
		}
		
		Mods.currentModDirectory = songs[curSelected].folder;
		PlayState.storyWeek = songs[curSelected].week;
		
		var savedDiff:String = songs[curSelected].lastDifficulty;
		var lastDiff:Int = Difficulty.list.indexOf(lastDifficultyName);
		if(savedDiff != null && !Difficulty.list.contains(savedDiff) && Difficulty.list.contains(savedDiff))
			curDifficulty = Math.round(Math.max(0, Difficulty.list.indexOf(savedDiff)));
		else if(lastDiff > -1)
			curDifficulty = lastDiff;
		else if(Difficulty.list.contains(Difficulty.getDefault()))
			curDifficulty = Math.round(Math.max(0, Difficulty.defaultList.indexOf(Difficulty.getDefault())));
		else
			curDifficulty = 0;

		for (i in logos) {
			i.visible = logos.indexOf(i) == curSelected;
		}

		changeDiff();
		_updateSongLastDifficulty();
	}

	inline private function _updateSongLastDifficulty()
		songs[curSelected].lastDifficulty = Difficulty.getString(curDifficulty, false);

	private function positionHighscore()
	{
		scoreText.x = FlxG.width - scoreText.width - 6;
		scoreBG.scale.x = FlxG.width - scoreText.x + 6;
		scoreBG.x = FlxG.width - (scoreBG.scale.x / 2);
	}

	var _drawDistance:Int = 4;
	var _lastVisibles:Array<Int> = [];
	public function updateTexts(elapsed:Float = 0.0)
	{
		lerpSelected = FlxMath.lerp(curSelected, lerpSelected, Math.exp(-elapsed * 9.6));
		for (i in _lastVisibles)
		{
			grpSongs.members[i].visible = grpSongs.members[i].active = false;
			iconArray[i].visible = iconArray[i].active = false;
		}
		_lastVisibles = [];

		var min:Int = Math.round(Math.max(0, Math.min(songs.length, lerpSelected - _drawDistance)));
		var max:Int = Math.round(Math.max(0, Math.min(songs.length, lerpSelected + _drawDistance)));
		for (i in min...max)
		{
			var item:Alphabet = grpSongs.members[i];
			item.visible = item.active = true;
			item.x = ((item.targetY - lerpSelected) * item.distancePerItem.x) + item.startPosition.x;
			item.y = ((item.targetY - lerpSelected) * 1.3 * item.distancePerItem.y) + item.startPosition.y;

			var icon:HealthIcon = iconArray[i];
			icon.visible = icon.active = true;
			_lastVisibles.push(i);
		}
	}

	override function destroy():Void
	{
		super.destroy();

		FlxG.autoPause = ClientPrefs.data.autoPause;
		if (!FlxG.sound.music.playing && !stopMusicPlay)
			FlxG.sound.playMusic(Paths.music('freakyMenu'));
	}	
}

class SongMetadata
{
	public var songName:String = "";
	public var week:Int = 0;
	public var songCharacter:String = "";
	public var color:Int = -7179779;
	public var folder:String = "";
	public var lastDifficulty:String = null;

	public function new(song:String, week:Int, songCharacter:String, color:Int)
	{
		this.songName = song;
		this.week = week;
		this.songCharacter = songCharacter;
		this.color = color;
		this.folder = Mods.currentModDirectory;
		if(this.folder == null) this.folder = '';
	}
}