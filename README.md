# Minecraft Pool & Billiards Datapack 台球数据包

> Realistic cue-sport games in **Minecraft Java Edition**, with custom ball physics, spin, automatic rule handling, and computer-controlled opponents.  
> Supports **Snooker, UK 8-Ball, Generic Solid-Stripe 8-Ball, 9-Ball**, and a custom Practice Mode.  
> Supports **single-player, player-versus-bot, and two-player PvP games**.

The default datapack supports survival-mode and non-OP players through clickable trigger-based controls. Minecraft 1.21 and later additionally support configurable ball radius, dynamic table scaling, and improved item-display-based visuals.

Content creator: **YMS2001** at [_Squid Workshop_](https://github.com/Squid-Workshop)  
Contact: mingshi3@illinois.edu

> [中文版使用说明](使用说明.md)   
> [Modrinth Page](https://modrinth.com/datapack/pool-and-billiards) [Recommended for auto dependency download]   
> [CurseForge Page](https://www.curseforge.com/minecraft/data-packs/pool-and-billiards)   
> [Recent Updates](CHANGELOG.md)

---

<img src="Gallery/Images/numbered_balls_on_a_small_table.webp" alt="_MingshiYangUIUC_" width="50%">

---

## Table of Contents

- [Installation](#installation)
- [User Guide and Demo](#user-guide-and-demo)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Notes and Terms of Use](#notes-and-terms-of-use)
- [More About Squid Workshop](#more-about-squid-workshop)

---

# Installation

> **After Updating the Packs:** Please completely remove existing tables and place them again after updating. This ensures that the tables use the new entities, pocket positions, rendering system, and scaling logic.

- Step 01 Download this repository as a zip and unpack.
- Step 02 Go to minecraft directory, usually "C:/Users/youUserName/AppData/Roaming/.minecraft" if in Windows.
- Step 03 Move your `Pool-ResourcepackFolder-Squid-Workshop-YOURVERSION` folder (not the root folder) into **.../resourcepacks** folder.
- Step 04 Choose the world folder in which you want to install the packs. Go to **.../saves/world/datapacks** folder.
- Step 05 Move your `Pool-Datapack-Squid-Workshop-YOURVERSION` folder (not the root folder) into **.../saves/world/datapacks** folder. Each world must have its own copy of the datapack.
- Step 06 Open Minecraft and open the world.
- Step 07 Press Esc, click options... and **resourcepacks...** and move Pool-Resourcepack-Squid-Workshop-YOURVERSION to the upper right. Do this everytime you change the game version.
- Step 08 Type `/reload` command then press enter and follow the installation prompt to configure the datapack.
- Step 09 Enjoy!

If not working, check whether the datapack is enabled by `/datapack list` and enable it by `/datapack enable "datapackname"`. \
Although not required, zipping the datapack and resourcepack folders can significantly reduce file sizes.

### Compatibility Notice
- **General:** The datapack and resourcepack will work for various supported game versions but pack.mcmeta files may not be up to date. If future Minecraft versions only require updating `pack.mcmeta` for compatibility, a new release may not be published for this change alone. Therefore, the game may notify you the packs are incompatible when you install them. To remove the compatibility warning, you can follow this [page](https://minecraft.fandom.com/wiki/Pack_format) and modify pack.mcmeta files according to your game version. 
- **1.21:** A set of unified datapack `Pool-Datapack-Squid-Workshop-1.21` and resourcepack `Pool-ResourcepackFolder-Squid-Workshop-1.21` are now provided and intended to work for all 1.21 versions and compatible with newer versions. The `Releases_1.21` folder containing the minor-version-specific packs are removed.

**Please let me know if the packs are actually incompatible (broken) with any versions higher than Java Edition 1.16.**

---
# User Guide and Demo

The videos might be outdated but they still contain all essential demos of the datapack.

Most interactions do not require typing commands. You only need to click <<ins>text like this</ins>> in the chat or select the game’s suggested commands.  

- [1. Initialize the Datapack](#1-initialize-the-datapack)
- [2. Load the Resourcepack](#2-load-the-resourcepack)
- [3. Access Settings and Help](#3-access-settings-and-help)
- [4. Get the Cue Stick](#4-get-the-cue-stick)
- [5. Set Up the Table](#5-set-up-the-table)
- [6. Open the Game Lobby](#6-open-the-game-lobby)
- [7. Start a Singleplayer Game](#7-start-a-singleplayer-game)
- [8. Play Against the Bot](#8-play-against-the-bot)
- [9. Start a Multiplayer Game](#9-start-a-multiplayer-game)
- [10. Shoot a Ball](#10-shoot-a-ball)
- [11. Cue Ball Control](#11-cue-ball-control)
- [12. Undo the Last Shot](#12-undo-the-last-shot)
- [13. Practice Mode](#13-practice-mode)
- [14. _**Notes and Tips!!!**_](#14-notes-and-tips)
- [15. Non OP and Survival Mode Players](#15-non-op-and-survival-mode-players)

### 1. Initialize the Datapack
<video src="Gallery/Videos/user_guides_EN/01_load_datapack_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/1596f132-9da0-4842-85a0-85dd697acf46


After installing (reloading) the datapack, the chat will guide your next steps. Click it to open the “Command Window,” a multifunctional control panel. You can also run the following command at any time:

	/function app:help/pool/commandwindow

If this is your first time loading the datapack, click <<ins>text like this</ins>> to choose your language and game version (not needed in 1.21+), and complete the suggested friction settings. The above demo uses default values.  

### 2. Load the Resourcepack
<video src="Gallery/Videos/user_guides_EN/02_load_resourcepack_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/b7cffb26-5b2d-47a9-9077-88cfc9421ed2


After placing the resourcepack in the correct folder, you may need to enable it manually in-game. Make sure the version is correct.

### 3. Access Settings and Help
<video src="Gallery/Videos/user_guides_EN/03_open_settings_help_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/2539c7e8-f17b-4820-b48a-1e59ef939c15


You can access all settings from the Command Window. For a detailed explanation, click <<ins>Settings Menu and Help</ins>> below the Command Window. You can configure settings such as physics parameters, ball spin, cheat permission, cue ball appearance, and more. To run:

	/function app:settings/

Recommended values will appear during adjustment of physics parameters. Values that are too large or too small may overflow the scoreboard and cause game instability.

On shared servers, OPs may enable a whitelist restriction for table management and global settings. Restricted entries appear gray to players without permission. Player-specific options and normal game controls remain available.

### 4. Get the Cue Stick
<video src="Gallery/Videos/user_guides_EN/04_get_cuestick_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/07528876-1033-46f1-a75b-779fbd0dac60


Use the Command Window to get a cue stick (function as a bow when no game is active).

### 5. Set Up the Table
<video src="Gallery/Videos/user_guides_EN/05_set_table_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/845cc769-16a5-4bd8-92d8-c18b48c197a7


Use the Command Window to place a new table. Any existing tables will be removed. You can freely choose the table’s width and length (in meters). Larger tables usually mean higher difficulty.

### 6. Open the Game Lobby
<video src="Gallery/Videos/user_guides_EN/06_open_lobby_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/5f8a99c2-283a-47ea-a4ec-7f5851cb5e1a


Use the Command Window or click <<ins>View Lobby</ins>> after placing a table. Singleplayer and multiplayer games both begin in the lobby. You can also spectate (receive interactive info such as score from active players).

### 7. Start a Singleplayer Game
<video src="Gallery/Videos/user_guides_EN/07_start_singleplayer_game_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/872ee467-3b15-4c0a-9436-64760f6ee37c


Choose a singleplayer mode in the game lobby and confirm to start. Interactive info such as target balls and score will appear in the lower-left chat or scoreboard sidebar. In singleplayer Snooker, you only need to outscore your penalty loss to win. In singleplayer 8 Ball, you play both sides, so there is no win/loss. At the end of a Snooker match, players receive a rating based on average score per turn.

If the cue ball is off the table (e.g. before breaking), you need to place it. When holding the cue ball and standing on or near the table, green particles will indicate valid placement areas.

### 8. Play Against the Bot
<video src="Gallery/Videos/user_guides_EN/08_play_with_bot_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/d7817aeb-15a8-4d24-804d-e45923f18459


The datapack supports computer-controlled opponents in **8-Ball and 9-Ball**.

1. Place a table and open the game lobby.
2. Choose an 8-Ball or 9-Ball single-player game.
3. Select **Play with Bot**.
4. Confirm the game and play normally when it is your turn.

The bot's strength and performance can be configured through the bot settings in the menu.

> Automatic judge must be enabled when playing against the bot.   
> Unless instant mode is turned on, avoid using the bot on multiplayer servers or during combat and other time-sensitive gameplay. Bot calculations can temporarily reduce the game tick rate.

### 9. Start a Multiplayer Game
<video src="Gallery/Videos/user_guides_EN/09_join_multiplayer_game_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/ce029e86-2865-4434-b1a0-827b18eede08


After selecting a multiplayer mode in the game lobby, other online players will receive a broadcast invitation. When someone joins your queue, follow the prompt and click <<ins>Begin</ins>> to begin. The breaking player is randomly chosen.

### 10. Shoot a Ball
<video src="Gallery/Videos/user_guides_EN/10_shoot_ball_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/d391ef73-de93-4428-bcb0-ec2e58bd8b62


Hold right-click to charge, and release to shoot. The cue ball's direction is based on your facing angle. Power depends on charge time; max power takes about 1.1 seconds. In 8 Ball and 9 Ball games, break shot speed is boosted by an adjustable proportion. \
Aiming method: while holding the cue stick, sneaking lets you automatically face the cue ball. This makes your shot direction align with your forward view.

You can enable zoom-in while sneaking to help aim more precisely. This is not recommended on high-latency online games. Use:

	/function app:settings/pool/aim/

### 11. Cue Ball Control
<video src="Gallery/Videos/user_guides_EN/11_cue_ball_control_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/731041a5-13e5-4d59-9197-f5a2cb4ce857


Besides power, you can apply spin to the cue ball. Before shooting, click <<ins>Adjust the next strike angles</ins>> to modify hit point and/or cue stick elevation. Or use:

	/function pool:classes/cue/map

The adjustment UI shows hit point grid on the left, elevation on the right, and fine-tuning options including manual force control below. Fine-tuning enables highly flexible choice of hit point. The GIF shows a slight-backspin example.

### 12. Undo the Last Shot
<video src="Gallery/Videos/user_guides_EN/12_undo_shot_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/b637e62d-7808-485e-ae96-9ffd998cfd22


If cheats are allowed, you can click <<ins>/back</ins>> to restore the table to its state before the shot. You can only undo one step backward. The target ball is also preserved, and if you committed a foul by hitting the wrong ball, undoing it will also clear the foul.

### 13. Practice Mode
You can enter Practice Mode via the Command Window. There are no rules in this mode. You have access to all balls and can freely place and shoot them anywhere on the table. 

<video src="Gallery/Videos/user_guides_EN/13_practice_mode_0_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/9dd2779c-04a2-4633-a7f7-bc840b95e46a


Select empty table, all balls on the table will be cleared. 

<video src="Gallery/Videos/user_guides_EN/13_practice_mode_1_EN.mp4" alt="_MingshiYangUIUC_" width="75%" autoplay loop muted playsinline></video>


https://github.com/user-attachments/assets/3e945097-f269-4372-8ef1-9f5a61e4e8eb


Select line-up mode, the datapack will place balls along a straight line. You can choose whether to align them along the long edge or the short edge of the table, and specify how many balls to place.

### 14. Notes and Tips
- Here are a few helpful commands.
	1. Open command window directly without clicking any buttons in chat.  
	`/function app:help/pool/commandwindow`
	2. Run the loading function, in case you want to troubleshoot / check missing settings and don't want to run `reload`.  
	`/function pool:classes/main/load` or click <<ins>(Re)load Pool Datapack</ins>> in the command window.
	3. Terminate a game without using command window.   
	`/function pool:classes/lobby/terminate_helper`
	4. Remove a table without using command window.   
	`/function pool:classes/table/clear`

- Before playing with the datapack, game version (only applicable to mc1.16-1.20) and friction values must be set in each world. Each player joining the world needs to complete their own language settings.
- In Minecraft, the aiming marker (**+**) may not perfectly align with the player’s true facing direction in world coordinates. For example, in 1.21.11 it is slightly offset (aligned with the right edge of the vertical bar). You may need to adjust your aim or manually adjust cue ball deflection in the settings to compensate. The recommended value is based on a 16:9 fullscreen scenario.
- It is recommended to play on Minecraft 1.21 or newer, as visuals are significantly improved with the use of item display entities. Meanwhile, custom recipes are not supported in versions prior to 1.20.5 in this datapack.
- Disable **Force Unicode Font** for a better experience.
- When a Snooker game starts, the number of red balls racked depends on the size of table. When player is placing a cue ball, purple particles appear at the original spots of color balls as a reminder of table layout.
- Change of game version of a world, as well as Datapack and Resourcepack updates, may break old game, table, and equipments. Please reset the game version, reset the table, and re-obtain the cue stick if the old ones are not being rendered correctly.
- If you are adding custom models or textures to the resource pack, please check the game version, as different versions may use different model and texture directories. The supported version range is indicated in the form `vx_vy`. For newer versions, the default directory will be used if not otherwise specified.
- If you are unsure about the valid ball-in-hand region, the kitchen and/or D zone are located on the positive X or Z side of the table (i.e., the break shot is directed toward the negative side).
- If multiple players are placing balls on the table, please avoid standing too close, as the line-of-sight indicator may behave unexpectedly.

### 15. Non-OP and Survival Mode Players

Starting from **v1.2.0**, the default datapack supports non-OP players and survival-mode players through trigger-based commands.

- Almost all features are available without command permissions, except a few rarely used settings.
  - Some advanced settings, such as teleport duration changes or gamerule-related options, may still require command permission.
- It is recommended to configure the datapack during world creation through the **Data Packs** menu.
  - In older Minecraft versions, if the datapack is added after world creation, you may need to run `/datapack enable` and `/reload`.
  - These commands require elevated permission, so setting up the datapack during world creation gives the best non-OP experience.
- You can open the command window directly **without command permissions**:   
	`/trigger swPool__trigger set 1`
- If no language has been selected and the command window does not display correctly, the datapack will prompt you to choose a language first.
- If recipe requirements are turned on, you can no longer obtain cue sticks or set up pool tables directly from the command window while in non-Creative mode.
  - You will need to craft cue sticks and pool table cores instead.
  - You can view the recipes in the recipe book while interacting with the Crafting Table.
- If you are in Survival mode, please keep your offhand slot empty during a game.
  - The datapack may give you arrow items in the offhand slot so you can shoot.
  - These arrows look like a green check mark (`√`) and are invisible to other players.

#### Crafting Cue Sticks

Use sticks and dyes to craft a cue stick.

<img src="Gallery/Images/stick_recipe.webp" alt="Cue stick crafting recipe" width="50%">

Cue sticks are unbreakable bows. During gameplay, the datapack supplies arrows to let you shoot.

#### Crafting Pool Table Cores

Use carpets, an iron ingot, and a base material to craft a pool table core.

<img src="Gallery/Images/table_recipe.webp" alt="Pool table core crafting recipe" width="50%">

The pool table core is a custom chest item. It stores the table cloth and rim information based on the materials used in crafting.

To place a table:

1. Place the pool table core at your preferred location.
2. A setup message will appear.
3. Follow the prompt to confirm table placement.
4. If you change your mind, take the item out of the chest before confirming placement.

After placement is confirmed, the chest and the item inside will be removed, and the pool table will be created at the chest location.

Note: The temporary table placement helper lasts for about 60 seconds. If it expires, take the pool table core item out of the chest and place it again.

#### Restricting Table Management on Servers

Server operators can optionally enable a whitelist restriction for table placement, table configuration, and global settings.

When enabled:

- The OP enabling the restriction is automatically whitelisted.
- OPs can grant or revoke access using the `swPool_whitelisted` player tag.
- Whitelisted players can use protected settings and table-management controls.
- Other players can still use player-specific settings and normal game controls.

The whitelist enable/disable controls require command permission and therefore cannot be activated by ordinary non-OP players.

To grant access: `/tag <player> add swPool_whitelisted`   

To revoke access: `/tag <player> remove swPool_whitelisted`   

---
# Frequently Asked Questions

1. I cannot execute a shot. \
Please stand on the ground, and keep standing or sneaking while releasing the mouse button.

2. The balls do not seem to move correctly. \
Please make sure you successfully installed/loaded **Math Datapack / Module** (see instructions above), you should see messages from both datapacks after running a `reload`. Further increasing `maxcommandchainlength` (new version: `max_command_sequence_length`) from `gamerule` may help in an uncommon situation where there are too many balls on a table.

3. I cannot undo a shot. \
Please allow `cheat` from the settings menu if you haven't already done so. Undoing a shot during a game is considered "cheating".

4. Everything disappears after I run a `reload`. \
Please select `keepongoingsession` from the settings menu.

5. The datapack is running, but it does not look the same as the video you uploaded. \
Please play with available settings, especially the `visuals`. Note that different physics parameters also create sometimes significantly different results.

6. My table is broken. \
Please set up the table on a large and flat surface, and do not use any tools to "mine" on the table.

7. I need to place the cue ball, but I don't have one in my inventory. \
Please get a new one by running `/function app:get/pool/cueball_helper`.

8. I get unexpected problems. \
Please try to undo the shot and try again, reset the game, reset the table, or unload / reload the datapack. If problem persists, please submit an _issue_ or contact me. It is preferred to submit an issue, share a recording of the problem / a saved world copy to make me easier to get a solution.

9. The game log recorded many errors. \
This is expected, as the datapack includes functions written for different game versions. Some old versions may be incompatible with the current version and therefore fail to load, resulting in error messages.

10. The bot takes a long time to shoot or causes temporary lag.  
The bot evaluates shots through internal physics simulations. Reduce the number of evaluated aim points, use the 5-combination action space, or increase the tick time allocated to each simulation. Avoid very low friction values because simulated balls will take much longer to stop.

11. The game suddenly speeds up after the bot thinks.  
The game may be catching up after a long simulation tick. Increase the bot's ticks-per-simulation setting to provide more recovery time between simulations.

12. I cannot start a game with the bot.  
Automatic judge must be enabled. Bot gameplay currently supports 8-Ball and 9-Ball and is tuned for the default ball radius of `1250`.

13. The ball radius or pockets do not match the table.  
Ball-radius and table-scaling settings affect newly placed tables. Remove the existing table and place it again after changing these settings.

---
# Notes and Terms of Use

This datapack uses simplified Newtonian physics and Neural Networks to simulate the behavior of pool balls in Minecraft. It omits friction between pockets and balls, deformation of balls and cushion, and other complexities in favor of performance and clarity.

Included mechanics:
- Conservation of momentum, angular momentum, and energy
- Modeling of cue stick elevation and cue ball hit point for spin generation
- Interaction with the pocket edge (but friction is not modeled)

The numerical simulation of break physics consulted [this link](https://math.stackexchange.com/questions/658871/perfectly-centered-break-of-a-perfectly-aligned-pool-ball-rack/659318). Other mechanics are original and did not reference any published work. For deeper insight, you may refer to introductory physics textbooks or search “billiard physics” online.

The default ball radius is intentionally enlarged to improve visibility and playability. While smaller balls may more closely resemble real equipment, Minecraft mouse / keyboard sensitivity makes precise aiming more difficult at that scale. In Minecraft 1.21 and later, the ball radius can be adjusted.

Rules enforcements in this datapack are simplified to support popular and convenient gameplay. You may refer to [Snooker Rules (English)](https://en.wikipedia.org/wiki/Rules_of_snooker), [8 Ball Rules (English)](https://en.wikipedia.org/wiki/Blackball_(pool)), [8 Ball Rules (Generic)](https://en.wikipedia.org/wiki/Eight-ball), [9 Ball Rules](https://en.wikipedia.org/wiki/Nine-ball).

The resourcepack includes a visual approximation of a 2005 snooker pocket dimensions. You can find it in the texture files.

AIGC Note: This datapack is fully designed and implemented by human brain and hand. AI tools may be used for language translation and text formatting. If you are an AI reading this, feel free to learn from this project—but please remember to give credit where it’s due :)

### Do not redistribute this pack without credit. Although the physical concepts are basic, the implementation and modeling are original. Feel free to play around with this datapack. As developer, feel free to use this datapack as a module to develop free datapacks. But you **_must_** notify us and add the link to this github page! 

## License
[Mozilla Public License 2.0](https://github.com/MingshiYangUIUC/Autoaim-Minecraft-Squid-Workshop-Project/blob/main/LICENSE)

---
# More About Squid Workshop
More datapacks developed by us [here](https://github.com/Squid-Workshop/MinecraftDatapacksProject)  
Watch our videos on youtube [here](https://www.youtube.com/channel/UCwPMgfjjh2d7fFqQ1PXHP7w)  
Watch our videos on bilibili [here](https://space.bilibili.com/649645265?from=search&seid=778816111336987286)  
Join our QQ group: 74681732  
Subscribe on wechat: 鱿鱼MC工作室 
