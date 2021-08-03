# _Squid Workshop's_ Pool Datapack (Evolved) Version
Play pool (cue sports) in Minecraft, like in real life!

- [Abstract](#Abstract)
- [Installation](#Installation)
- [Usage](#Usage)
- [How It Works](#How-It-Works)
- [Notes](#Notes)
- [Project Tree](#Project-Tree)
- [Terms of Use](#Terms-of-Use)
- [More About Squid Workshop](#More-About-Squid-Workshop)

# Abstract


# Installation
- Step 01 Download this repository as a zip and unpack.
- Step 02 Go to minecraft directory, usually "C:/Users/youUserName/AppData/Roaming/.minecraft".
- Step 03 Move your "Pool-Resourcepack-Squid-Workshop-1.16.5" folder(not the root folder) into .../resourcepacks folder.
- Step 04 Choose the world folder in which you want to install the packs. Go to .../saves/world/datapacks folder.
- Step 05 Move your "Pool-Evolved-Datapack-Squid-Workshop-1.16.5" folder(not the root folder) into .../saves/world/datapacks folder.
- Step 06 Open Minecraft and open the world.
- Step 07 Press Esc, click options... and resourcepacks... and move Pool-Resourcepack-Squid-Workshop-1.16.5 to the upper right.
- Step 08 Type "/reload" command then press enter.
- Step 09 Enjoy

PS: If not working, check whether the datapack is enabled by:

	/datapack list
Enable it by:

	/datapack enable "datapackname"
  
# Usage
You will be displayed a piece of <<ins>Clickable text</ins>> to open "command window" after (re)loaded the datapack, try clicking on the texts and explore, or wait for the writeup.

If the pack is loaded for the first time, please follow the instruction, or set the coefficients manually by filling the following command. Otherwise, there will be zero friction (not a bad thing to try)!

	/function app:settings/pool/friction/
Suggested values: Impact:100-200, Rolling:150-300, Sliding:1500-3000.

Beside the coefficients, other settings such as redoing the stroke and reloading can be modified.

Note: problems may occur if this datapack is enabled together with [the original pool datapack](https://github.com/MingshiYangUIUC/Pool-Minecraft-Squid-Workshop-Project). Please turn off "Force Unicode" while playing.

# How it Works
Conservation of momentum and angular momentum, recently added interactions with edge of pockets (friction is neglected there). Neglected deformations.

I have not cited any specific references while making the physics work. Wait for the writeup or try search "not so simple billiards physics" online.

The [rules](https://en.wikipedia.org/wiki/Rules_of_snooker) of snooker and [rules](https://en.wikipedia.org/wiki/Blackball_(pool)) of 8 ball have been simplified to meet popular common sense. _The rule enforcement of 8 ball is still under development._ The 2005 dimension of pockets on a snooker table is included in the resourcepack as images.

I suggest you try the [simpler version](https://github.com/MingshiYangUIUC/Pool-Minecraft-Squid-Workshop-Project) if the game is slow!

# Notes
1. I am aware of that everything looks amplified, while comparing to reality. This also affects the physics as the radii of balls are one of the most closely related parameters to the physical behaviors. However, the common setting of mouse sensitivity does not provide enough fineness of controlling the cuestick, and it will be much harder to play the game if the balls size are reduced to mimic the real pool experience. Sorry for any "unrealistic concerns" brought to you by my "disloyalty" to the reality.\
However, making the change is not hard, but will make the game run considerably slower. We'll see.

# Project Tree

Please wait for the update.
	
# Terms of Use
This section shall be honored when in conflict with the license or other documents. \
Feel free to play around with this datapack. \
As developer, feel free to use this datapack as a module to develop free datapacks. \
But you **must** add the link to this github page! \
**NO COMMERCIAL USE** \
**POTENTIALLY (AT MY DISCRETION) COMMERTIAL USE WITHOUT PROMISSION IS PROHIBITED AND MAY BE PROSECUTED** 
## License
[Mozilla Public License 2.0](https://github.com/MingshiYangUIUC/Autoaim-Minecraft-Squid-Workshop-Project/blob/main/LICENSE)


# More About Squid Workshop
See more datapacks developed by us [here](https://github.com/Squid-Workshop/MinecraftDatapacksProject) \
Watch our videos on bilibili [here](https://space.bilibili.com/649645265?from=search&seid=778816111336987286) \
Join our QQ group: 74681732 \
Subscribe on wechat: 鱿鱼MC工作室 
