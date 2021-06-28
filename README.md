# _Squid Workshop's_ Pool Datapack (Evolved) Version
Play pool (cue sports) in Minecraft, like in real life!

- [Abstract](#Abstract)
- [Installation](#Installation)
- [Usage](#Usage)
- [How It Works](#How-It-Works)
- [Project Tree](#Project-Tree)
- [Terms of Use](#Terms-of-Use)
- [More About Squid Workshop](#More-About-Squid-Workshop)

# Abstract


# Installation
- Step 1 Download this repository as a zip and unpack.
- Step 2 Go to minecraft saves directory, usually "C:/Users/youUserName/AppData/Roaming/.minecraft/saves".
- Step 3 Choose the world folder in which you want to install the packs.
- Step 4 Go to .../world/datapacks folder.
- Step 5 Move your "Pool-Datapack-Squid-Workshop-1.16.5" folder(not the root folder) into .../world/datapacks folder.
- Step 6 Open Minecraft and open the world.
- Step 7 Type "/reload" command then press enter.
- Step 8 Enjoy

PS: If not working, check whether the datapack is enabled by:

	/datapack list
Enable it by:

	/datapack enable "datapackname"
  
# Usage
You will be displayed a piece of <<ins>Clickable text</ins>> to open "command window" after (re)loaded the datapack, try clicking on the texts and explore, or wait for the writeup.

Note: problems may occur if this datapack is enabled together with [the original pool datapack](https://github.com/MingshiYangUIUC/Pool-Minecraft-Squid-Workshop-Project).

# How it Works
Conservation of momentum and angular momentum. Neglected deformations, and interactions with edge of pockets. Assumed constant coefficients of friction.

I have not cited any specific references while making it work. Wait for the writeup or try search "not so simple billiards physics" online.

The [rules](https://en.wikipedia.org/wiki/Rules_of_snooker) of snooker and [rules](https://en.wikipedia.org/wiki/Blackball_(pool)) of 8 ball have been simplified to meet popular common sense.

I suggest you try the [simpler version](https://github.com/MingshiYangUIUC/Pool-Minecraft-Squid-Workshop-Project) if the game is slow!

# Project Tree

	PackName-Datapack-Squid-Workshop-GameVersion
	│  pack.mcmeta
	│  pack.png
	│
	└─data
	    ├─app
	    │  └─functions
	    │      ├─get
	    │      │  └─pool
	    │      │          cueball.mcfunction
	    │      │          cuestick.mcfunction
	    │      │          
	    │      ├─help
	    │      │  └─pool
	    │      │          commandwindow.mcfunction
	    │      │          
	    │      ├─setting
	    │      │  └─pool
	    │      │      ├─cheating
	    │      │      │      allow.mcfunction
	    │      │      │      disallow.mcfunction
	    │      │      │      
	    │      │      ├─friction
	    │      │      │      rolling.mcfunction
	    │      │      │      sliding.mcfunction
	    │      │      │      this as storage, also change load.mcfunction
	    │      │      │      
	    │      │      └─reload
	    │      │              cleanongoingsession.mcfunction
	    │      │              keepongoingsession.mcfunction
	    │      │              
	    │      └─unload
	    │              pool.mcfunction
	    │              
	    ├─minecraft
	    │  │  .DS_Store
	    │  │  
	    │  └─tags
	    │      │  .DS_Store
	    │      │  
	    │      └─functions
	    │              load.json
	    │              tick.json
	    │              
	    └─pool
		└─functions
		    └─classes
			├─collision
			│      collide.mcfunction
			│      join.mcfunction
			│      main.mcfunction
			│      snooker_hitball.mcfunction
			│      uk8ball_hitball.mcfunction
			│      
			├─cue
			│  │  aim.mcfunction
			│  │  initialize.mcfunction
			│  │  main.mcfunction
			│  │  map.mcfunction
			│  │  reset.mcfunction
			│  │  shoot.mcfunction
			│  │  
			│  └─points
			│          p-2000_-2000.mcfunction
			│          p-2000_-4000.mcfunction
			│          p-2000_-6000.mcfunction
			│          p-2000_-8000.mcfunction
			│          p-2000_0.mcfunction
			│          p-2000_2000.mcfunction
			│          p-2000_4000.mcfunction
			│          p-2000_6000.mcfunction
			│          p-2000_8000.mcfunction
			│          p-4000_-2000.mcfunction
			│          p-4000_-4000.mcfunction
			│          p-4000_-6000.mcfunction
			│          p-4000_-8000.mcfunction
			│          p-4000_0.mcfunction
			│          p-4000_2000.mcfunction
			│          p-4000_4000.mcfunction
			│          p-4000_6000.mcfunction
			│          p-4000_8000.mcfunction
			│          p-6000_-2000.mcfunction
			│          p-6000_-4000.mcfunction
			│          p-6000_-6000.mcfunction
			│          p-6000_0.mcfunction
			│          p-6000_2000.mcfunction
			│          p-6000_4000.mcfunction
			│          p-6000_6000.mcfunction
			│          p-8000_-2000.mcfunction
			│          p-8000_-4000.mcfunction
			│          p-8000_0.mcfunction
			│          p-8000_2000.mcfunction
			│          p-8000_4000.mcfunction
			│          p0_-2000.mcfunction
			│          p0_-4000.mcfunction
			│          p0_-6000.mcfunction
			│          p0_-8000.mcfunction
			│          p0_0.mcfunction
			│          p0_2000.mcfunction
			│          p0_4000.mcfunction
			│          p0_6000.mcfunction
			│          p0_8000.mcfunction
			│          p2000_-2000.mcfunction
			│          p2000_-4000.mcfunction
			│          p2000_-6000.mcfunction
			│          p2000_-8000.mcfunction
			│          p2000_0.mcfunction
			│          p2000_2000.mcfunction
			│          p2000_4000.mcfunction
			│          p2000_6000.mcfunction
			│          p2000_8000.mcfunction
			│          p4000_-2000.mcfunction
			│          p4000_-4000.mcfunction
			│          p4000_-6000.mcfunction
			│          p4000_-8000.mcfunction
			│          p4000_0.mcfunction
			│          p4000_2000.mcfunction
			│          p4000_4000.mcfunction
			│          p4000_6000.mcfunction
			│          p4000_8000.mcfunction
			│          p6000_-2000.mcfunction
			│          p6000_-4000.mcfunction
			│          p6000_-6000.mcfunction
			│          p6000_0.mcfunction
			│          p6000_2000.mcfunction
			│          p6000_4000.mcfunction
			│          p6000_6000.mcfunction
			│          p8000_-2000.mcfunction
			│          p8000_-4000.mcfunction
			│          p8000_0.mcfunction
			│          p8000_2000.mcfunction
			│          p8000_4000.mcfunction
			│          
			├─cushion
			│      bounce.mcfunction
			│      compare.mcfunction
			│      join.mcfunction
			│      main.mcfunction
			│      
			├─freeball
			│  ├─practice
			│  │      main.mcfunction
			│  │      main_obj.mcfunction
			│  │      tp.mcfunction
			│  │      tp_obj.mcfunction
			│  │      
			│  ├─snooker
			│  │      main.mcfunction
			│  │      tp.mcfunction
			│  │      
			│  └─uk8ball
			│          main.mcfunction
			│          tp.mcfunction
			│          
			├─main
			│      clean.mcfunction
			│      load.mcfunction
			│      tick.mcfunction
			│      
			├─master
			│  │  idle.mcfunction
			│  │  main.mcfunction
			│  │  record.mcfunction
			│  │  redo.mcfunction
			│  │  redo_run.mcfunction
			│  │  select.mcfunction
			│  │  
			│  ├─practice
			│  │      progression.mcfunction
			│  │      
			│  ├─snooker
			│  │      endgame.mcfunction
			│  │      hidename.mcfunction
			│  │      mpfeedback.mcfunction
			│  │      progression.mcfunction
			│  │      spfeedback.mcfunction
			│  │      
			│  └─uk8ball
			│          progression.mcfunction
			│          switch.mcfunction
			│          
			├─motion
			│      drag.mcfunction
			│      main.mcfunction
			│      move.mcfunction
			│      moved.mcfunction
			│      move_comb.mcfunction
			│      move_evolved.mcfunction
			│      retreat.mcfunction
			│      
			├─physics
			│      cosdeg.mcfunction
			│      distance1.mcfunction
			│      distancexz.mcfunction
			│      relativedist.mcfunction
			│      sindeg.mcfunction
			│      sqrt.mcfunction
			│      sqrt_operation.mcfunction
			│      target.mcfunction
			│      vacrossvb.mcfunction
			│      vamagnitude.mcfunction
			│      vcombine.mcfunction
			│      vcombine_1.mcfunction
			│      vcombine_2.mcfunction
			│      vseparate.mcfunction
			│      vseparate_1.mcfunction
			│      
			├─pocketing
			│  ├─practice
			│  │      main.mcfunction
			│  │      
			│  ├─snooker
			│  │      main.mcfunction
			│  │      replace.mcfunction
			│  │      
			│  └─uk8ball
			│          main.mcfunction
			│          
			├─practice
			│      place.mcfunction
			│      start.mcfunction
			│      
			├─snooker
			│      balls.mcfunction
			│      place.mcfunction
			│      start.mcfunction
			│      startsp.mcfunction
			│      
			├─spin
			│      change_of_motion.mcfunction
			│      change_of_state.mcfunction
			│      getamagt_tilend.mcfunction
			│      getatalpha_tilroll.mcfunction
			│      geta_tilend.mcfunction
			│      getcontactv.mcfunction
			│      gett_tilend.mcfunction
			│      gett_tilroll.mcfunction
			│      getw_tilend.mcfunction
			│      getw_tilroll.mcfunction
			│      gridtov.mcfunction
			│      gridtow.mcfunction
			│      modifyv.mcfunction
			│      rotate_separate.mcfunction
			│      testsetting.mcfunction
			│      test_fromsetting.mcfunction
			│      vtow.mcfunction
			│      
			├─table
			│      check.mcfunction
			│      clear.mcfunction
			│      loop.mcfunction
			│      set.mcfunction
			│      start.mcfunction
			│      
			├─test
			│      place.mcfunction
			│      setfood.mcfunction
			│      
			└─uk8ball
				balls.mcfunction
				place.mcfunction
				start.mcfunction
				startsp.mcfunction
				test.mcfunction

# Terms of Use
Feel free to play around with this datapack. \
As developer, feel free to use this datapack as a module to develop free datapacks. \
But you **must** add the link to this github page! \
**NO COMMERCIAL USE**
## License
[Mozilla Public License 2.0](https://github.com/MingshiYangUIUC/Autoaim-Minecraft-Squid-Workshop-Project/blob/main/LICENSE)


# More About Squid Workshop
See more datapacks developed by us [here](https://github.com/Squid-Workshop/MinecraftDatapacksProject) \
Watch our videos on bilibili [here](https://space.bilibili.com/649645265?from=search&seid=778816111336987286) \
Join our QQ group: 74681732 \
Subscribe on wechat: 鱿鱼MC工作室 
