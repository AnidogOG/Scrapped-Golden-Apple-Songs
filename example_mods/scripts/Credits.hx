import flixel.text.FlxText;

var overlay:FlxSprite;
var txt:FlxText;

function onCountdownTick(tick:Countdown, counter:Int)
{
	switch(tick)
	{
		case Countdown.THREE:
			overlay = new FlxSprite(-480,0).makeGraphic(Std.int(FlxG.width / 3 + 50), FlxG.height, FlxColor.BLACK);
			overlay.updateHitbox();
			overlay.alpha = 0.6;
			overlay.camera = game.camOther;
			add(overlay);
		
			txt = new FlxText(-420, 40, FlxG.width, 'Placeholder');
			txt.wordWrap = true;
			txt.fieldWidth = Std.int(FlxG.width / 3 - 10);
			txt.textField.height = FlxG.height;
			txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE);
			txt.camera = game.camOther;
		
			var infoArray:Array<String> = [];
		
			infoArray = switch(PlayState.SONG.song.toLowerCase())
			{
				//STORY MODE SONGS
				case 'jambino v1':['TH3R34LD34L', 'R34LD34L', 'Anidog'];
				case 'jambino v2':['TH3R34LD34L', 'R34LD34L', 'Sky! and Anidog'];
				case 'jambino v3':['TH3R34LD34L', 'R34LD34L  and Lancey', 'Sky! and Anidog'];
				case 'memory leak':['Ruby and TH3R34LD34L', 'R34LD34L', 'Anidog'];
				case 'kirbathon':['Gorbini', 'Willow', 'Anidog' + '\n\nBased off VS. Kirby Dave by HeartlessWillow'];


				//EXTRAS SONGS
				case 'origin v3':['Cup', 'Lancey', 'Anidog'];
				case 'unhinged v2':['Cynda and Ruby', 'R34LD34L and Aadsta', 'Ruby and Anidog'];
				case 'unhinged v3':['Ruby and Dexiedoo', 'R34LD34L and Aadsta', 'BarGames'];
				case 'chippy':['MoldyGH', 'Osp', 'N/A'];
				case 'pool party':['Cynda and Aadsta', 'Anidog', 'N/A'];
				case 'apples':['That Pizza Tower Fan', 'Lancey', 'Anidog'];
				case 'hiccup':['Gelzazz', 'Lancey', 'Anidog'];
				case 'expunger':['Rareblin, Cynda and That Pizza Tower Fan', 'Lancey and Rapparep', 'Anidog'];
				case 'schooled':['Cynda', 'Lancey', 'Anidog'];
				case 'ages 7 to 10':['Cynda', 'Lancey', 'Anidog'];
				case 'usb':['Cynda', 'Lancey', 'Anidog'];
				case 'gotta sleep':['Lexicord', 'Lancey', 'Anidog'];
				case 'snoozefest v1':['Lexicord', 'Lancey', 'Anidog'];
				case 'snoozefest v2':['Lexicord', 'Lancey', 'Anidog'];
				case 'free exclusive':['Cynda', 'Rapparep', 'Anidog' + '\n\nBased off Dave\'s House Free Exclusive Edition'];
				case 'underscore':['Ruby', 'Rapparep and Ruby', 'N/A' + '\n\nBased off of an image someone made for Ruby'];
				case 'decimal v1':['Cynda', 'N/A', 'Anidog'];
				case 'decimal v2':['ImpyBoo', 'N/A', 'N/A'];
				case 'corndog':['Gelzazz', 'Rapparep', 'N/A'];
				case 'funny':['Ruby', 'Lancey', 'Anidog'];
				case 'magicality':['Ruby', 'Lancey', 'Anidog'];
				case 'jumpman25\'s discord server':['Sky!', 'Lancey', 'Anidog' + '\n\nBased off a Jumpman image from 2020'];
				case 'ataefull':['TH3R34LD34L', 'SAMMYPIGZY', 'Log Man'];
				case 'scared':['Cynda', 'SAMMYPIGZY', 'Cynda' + '\n\nBased off of instructions for making a song from a chatbot'];
				case 'cval':['Cynda', 'FlanTheMan', 'Anidog'];
				case 'servant':['Cynda', 'Lancey', 'Anidog'];
				case 'the dream':['Cynda', 'Lancey', 'Anidog'];
				case 'genocidal':['Cynda', 'Lancey', 'N/A'];
				case 'production':['Aadsta', 'Lancey', 'Log Man'];
				case 'ringtone':['Cynda', 'Lancey', 'Anidog'];
				case 'teachers lounge':['Bmv277', 'Lancey', 'Anidog'];
				case 'bambi bass':['Biddle3', 'R34LD34L and Wugalex', 'Log Man' + '\n\nBased off Twitter.com'];
				case 'vs the good':['Lexicord', 'N/A', 'Anidog'];
				case '2d bandu level':['Sky!', 'Lancy and Anidog', 'Anidog'];
				case 'cotton candy':['Cynda', 'Lancey and Cynda', 'Anidog'];


				//OCS SONGS
				case 'metallic v2':['Cynda', 'Lancey', 'Cynda'];
				case 'sillier v1':['Bmv277', 'Bmv277', 'Anidog'];
				case 'high heels':['Bmv277', 'Bmv277', 'Project Tea'];
				case 'peanut vendor':['Cynda', 'Lancey', 'Anidog'];
				case 'krunker':['Cynda', 'Lancey', 'Cynda and Anidog'];
				case 'grand':['Cynda', 'Woodmango', 'Anidog'];
				case 'speedo':['YourAverageMental', 'Lancey and tabi ck', 'BarGames'];
				case 'seatbelt':['Aadsta', 'SAMMYPIGZY and Aadsta', 'Aadsta'];
				case 'beef v1':['Ruby', 'Ruby', 'BarGames'];
				case 'beef v2':['Ruby', 'Ruby', 'BarGames and Anidog'];
				case 'beef v3':['Ruby', 'Ruby', 'Anidog'];
				case 'bambi 666 level':['Sky!', 'OWAKCX', 'Anidog'];


				//IYKYK SONGS
				case 'galactic v2':['Cynda','Devianator', 'Anidog' + '\n\nBased off Joke Bambi'];
				case 'galactic v3':['.xml', 'Devianator', 'Log Man' + '\n\nBased off Joke Bambi'];
				case 'galactic v4':['.xml', 'Devianator', 'Anidog' + '\n\nBased off Joke Bambi'];
				case 'sick tricks v1':['Cynda', 'Devianator', 'N/A' + '\n\nBased off a GIF of Dave in Robloxian High School'];
				case 'sick tricks v3':['T5mpler', 'Devianator', 'Anidog' + '\n\nBased off a GIF of Dave in Robloxian High School'];
				case 'sick tricks v4':['Lexicord', 'Devianator', 'Anidog' + '\n\nBased off a GIF of Dave in Robloxian High School'];
				case 'curveball v1':['Cynda', 'Devianator', 'Anidog'];
				case 'curveball v2':['Lexicord', 'Devianator', 'Anidog'];
				case 'curveball v3':['Lexicord','Devianator, Kumori, 1up, Lancey, R34LD34L and Aadsta','Lexicord and Anidog' + '\n\nBased off the Marcello Interview by T5mpler'];
				case 'curveball v4':['Lexicord','Devianator, Kumori, 1up, Lancey, R34LD34L and Aadsta','Anidog' + '\n\nBased off the Marcello Interview by T5mpler'];
				case 'workaround':['YourAverageMental', 'Lancey, TecheVent and xernexx', 'Log Man' + '\n\nBased off John\'s Bean Factory by xernexx'];
				case 'phase 6 v1':['Bmv277', 'Devianator', 'Anidog' + '\n\nBased off Tricky Phase 6'];
				case 'phase 6 v2':['Bmv277', 'Devianator', 'Log Man' + '\n\nBased off Tricky Phase 6'];
				case 'apple leak (4k gary section)':['.xml', 'TecheVent', 'Anidog' + '\n\nBased off JEEZ IN 4K???'];
				case 'apple leak (redhungy section)':['YourAverageMental', 'N/A', 'Anidog' + '\n\nBased off GOLDEN APPLE EXCLUSIVE LEAKS V1'];
				case 'you cheated v1':['Cynda', 'N/A', 'Anidog' + '\n\nBased off the "You Cheated" screen from Vs Dave and Bambi'];
				case 'you cheated v2':['T5mpler', 'N/A', 'Anidog' + '\n\nBased off the "You Cheated" screen from Vs Dave and Bambi'];
				case 'creation':['Cynda', 'Rapparep', 'Anidog' + '\n\nBased off the Dave and Bambi developer team'];
				case 'long run v1':['Cynda', 'Lancey', 'N/A' + '\n\nBased off Brobgonal and Bandu singing Run'];
				case 'long run v2':['Cynda', 'Lancey', 'Anidog' + '\n\nBased off Brobgonal and Bandu singing Run'];
				case 'buttery sadness':['Lexicord', 'Devianator', 'Anidog'];
				case 'buttered':['Cynda', 'Devianator', 'Anidog' + '\n\nBased off It\'s Bambi with butter on his head'];
				case 'filtered':['Cynda', 'Devianator', 'Anidog' + '\n\nBased off Dave\'s oldest appearance in Furiosity'];
				case 'bloat':['TH3R34LD34L', 'Devianator', 'Anidog'];
				case 'flawless':['Cynda', 'N/A', 'Anidog' + '\n\nBased off Mayz\' Basics'];
				case 'the worst':['Cynda', 'AngryPoke', 'Anidog' + '\n\nBased off 5 bad dave and bambi mods'];


				//JOKE SONGS
				case 'supernovayyyy':['Sky!', 'Rapparep', 'Anidog'];
				case 'wheels v2':['Ruby', 'Lancey', 'Ruby'];
				case 'cartwheels':['Ruby and Dexiedoo', 'Lancey', 'Anidog'];
				case 'poopers v2':['Ruby', 'Lancey', 'Ruby'];
				case 'swagathon v1':['Ruby', 'Lancey and SAMMYPIGZY', 'PointyyESM'];
				case 'swagathon v2':['Ruby, Dexiedoo and BezieAnims', 'Lancey', 'PointyyESM and Anidog'];
				case 'awesome':['Ruby and Aadsta', 'Lancey', 'Ruby'];
				case 'speed':['Ruby', 'Lancey', 'N/A'];
				case 'sploinkerz':['Cynda', 'Anidog', 'Anidog'];
				case 'retro':['MoldyPIXEL', 'Shigeru Miyamoto', 'RETROREPLOL' + '\n\nBased off Super Mario Brothers'];
				case 'wasted':['Cynda', 'TecheVent, Sky, Lancey and Cynda', 'Cynda'];
				case 'screwedathon':['Lexicord', 'N/A', 'N/A' + '\n\nBased off Screwed from Vs Dave and Bambi'];
				case 'the importer':['Lexicord', 'Lancey', 'N/A'];
				case 'sky sings cheating':['MoldyGH (Cover by Sky!)', 'Anidog', 'N/A'];
				case 'sky sings unfairness':['MoldyGH (Cover by Sky!)', 'Lancey', 'MoldyGH'];
				case 'scraped':['Cynda, Aadsta and YourAverageMental', 'Cynda', 'Anidog' + '\n\nBased off Scrapped Dave and Bambi 3.0 Content'];


				//COVERS SONGS
				case 'sunshine v2':['MarStarBro, Uptaunt and Squeak' + '\n\nCover by Cynda', 'Lancey, Cynda and TecheVent', 'Sandplanet, Wildy and Cynda'];
				case 'left unchecked v2':['Madame McHummus' + '\n\nCover by Lexicord', 'Lancey', 'N/A'];
				case 'monochrome':['Madame McHummus and SimplyCrispy' + '\n\nCover by Cynda', 'Rapparep', 'N/A'];
				case 'triple trouble':['MarStarBro, Uptaunt and Punkett' + '\n\nCover by Cynda', 'Lancey', 'Anidog'];
				case 'the boss':['Pastel' + '\n\nCover by Sky!', 'Lancey', 'Zmac'];
				case 'get him back':['Bubbledoodle' + '\n\nCover by Lexicord', 'Lancey', 'Project Tea'];
				case 'legacy':['Sturm' + '\n\nCover by Lexicord', 'Rapparep', 'N/A'];
				case 'midnight':['Punkett' + '\n\nCover by Cynda', 'Lancey', 'Gonk'];
			

				//SECRET SONGS
				case 'corrupted file v1':['Cynda', 'Lancey', 'Anidog'];
				case 'corrupted file v2':['Cynda', 'Lancey', 'Anidog'];
				case 'corrupted file v3':['YourAverageMental', 'Lancey', 'Anidog'];
				case 'corrupted file v4':['YourAverageMental', 'Lancey, TecheVent, Kendon, Billy Animates, 1up, SAMMYPIGZY, Stev, Ruby, Wugalex and Cynda', 'Log Man'];
				case 'corrupted file v5':['YourAverageMental', 'Lancey', 'Anidog'];
				case 'super nostalgia blast v1':['Lexicord', 'ajj309, DragonFlame42 and Smeekles', 'Lexicord and Anidog'];
				case 'super nostalgia blast v2':['Lexicord', 'ajj309, DragonFlame42 and Smeekles', 'Anidog'];
				case 'ripple v1':['Cynda and BezieAnims', 'Lancey', 'N/A'];
				case 'ripple v2':['Cynda and BezieAnims', 'Lancey', 'N/A'];
				case 'cheating not cute v1':['Cynda', 'MoldyGH, Rapparep and Anidog', 'Anidog'];
				case 'cheating not cute v2':['Aadsta', 'MoldyGH, Rapparep and Anidog', 'Anidog'];
				case 'boingin':['Cynda', 'Cynda, Lancey, R34LD34L and Devianator', 'Cynda'];
				case 'squashathon':['Ruby', 'Ruby and TecheVent', 'BarGames'];
				case 'fnf vs my dave v1':['Ruby', 'Ruby', 'Ruby'];
				case 'fnf vs my dave v2':['Ruby', 'Ruby', 'Ruby'];
				case 'fnf vs my dave v3':['Ruby', 'Ruby', 'Log Man'];
				case 'flipper':['Sky!', 'T5mpler and Anidog', 'Anidog' + '\n\nBased off Flipper\'s Colorful Mansion'];


				//MARCELLO SHOP SONGS
				case 'the chunes v1':['Sky!', 'Lancey', 'Sky!' + '\n\nBased off My Silly Game 2 by Sky! and Lancey'];
				case 'the chunes v2':['Sky!', 'Lancey', 'Sky!' + '\n\nBased off My Silly Game 2 by Sky! and Lancey'];


				//PEANUT PAYWALL SONGS
				case 'clown':['Sky!', 'Lancey', 'Sky!'];
				case 'mario paint':['Ruby', 'Ruby', 'Project Tea' + '\n\nBased off a Golden Apple hoax'];
				case 'stubborn':['TH3R34LD34L', 'R34LD34L', 'Log Man' + '\n\nBased off DOORS by LSPLASH & "Lancey expose doc" by @EggsPrince'];
				case 'pizzamania':['YourAverageMental', 'Lancey and tabbi ck', 'Billy Animates' + '\n\nBased off I have a pizza (Bad Ending)'];


				//MINUS SONGS
				case 'minus disruption':['Sky!', 'Lancey and LagoAnims', 'Anidog'];
				case 'minus wireframe v1':['Cynda', 'Lancey', 'Cynda'];
				case 'minus wireframe v2':['Cynda', 'Lancey', 'Anidog'];
				case 'minus wireframe v3':['Cynda', 'Lancey', 'Anidog'];
				case 'minus recovered project':['Sky!', 'Lancey', 'Anidog'];

				default:['my','penis','aces'];
			}
		
			txt.text = 'Song by ' + infoArray[0] + '\n\nVisuals by ' + infoArray[1] + '\n\nChart by ' + infoArray[2];
		
			add(txt);
		
		case Countdown.START:
			for(i in [overlay,txt])
			{
				FlxTween.tween(i, {x: i.x + 430}, 1, {ease: FlxEase.backOut, onComplete: function(tweeen:FlxTween)
				{
					FlxTween.tween(i, {x: i.x - 430} , 1, {ease: FlxEase.backIn, startDelay: 3});
				}});
			}
	}
}