# _鱿鱼MC工作室_ 台球数据包（进化版）
在Minecraft里体验最真实的台球游戏！

- [Abstract](#Abstract)
- [安装](#安装)
- [使用](#使用)
- [原理](#原理)
- [Notes](#Notes)
- [Project Tree](#Project-Tree)
- [使用条款](#使用条款)
- [更多关于鱿鱼MC工作室](#更多关于鱿鱼MC工作室)

# Abstract
略

# 安装
- Step 01 下载代码压缩包并解压；
- Step 02 打开Minecraft路径，通常是 "C:/Users/youUserName/AppData/Roaming/.minecraft"；
- Step 03 将资源包压缩文件 "Pool-Resourcepack-Squid-Workshop-1.16.5" 放入 .../resourcepacks 文件夹；
- Step 04 选择一个世界安装数据包，进入 .../saves/world/datapacks 文件夹；
- Step 05 将数据包文件夹 "Pool-Evolved-Datapack-Squid-Workshop-1.16-1.17" folder(not the root folder) 放入 .../saves/world/datapacks 文件夹；
- Step 06 打开Minecraft，进入对应世界；
- Step 07 按下Esc，进入设置...\资源包...，将资源包压缩文件移动到界面右上角；
- Step 08 输入运行 "/reload" 指令；
- Step 09 开始游玩。

PS: 如果不能正常运行，以下指令可检查数据包是否被开启：

	/datapack list
以下指令可以开启数据包：

	/datapack enable "datapackname"
  
# 使用
大部分互动不需要主动输入大量文本，您只需要点击<<ins>此格式的文字</ins>>或者选取指令和游戏自动提示的函数。

安装（reload）数据包后，聊天框中会出现 <<ins>可点击的文字</ins>> ，点击它可以打开“命令窗口”，一个多功能控制台。试着点击其中的文字进行探索吧。

如果第一次在世界中加载数据包，请点击文字选择语言和游戏版本，打开并补全提示指令设置摩擦系数，您之后也可以通过在游戏中补全以下命令调整：

	/function app:settings/pool/friction/
建议值: Impact:100-200, Rolling:150-300, Sliding:1500-3000。过于极端的值可能会使计分板溢出。

多个设置可以修改：作用力的参数，以及是否允许撤销上一次击球。

	/function app:settings/
注意：[旧版台球数据包](https://github.com/MingshiYangUIUC/Pool-Minecraft-Squid-Workshop-Project)和本数据包不兼容；暂不支持多个球桌同时运行；请关闭强制Unicode字体功能后体验。

# 原理
基础的牛顿力学。省略了袋角和球之间的摩擦力，以及所有物体的形变等。

让这个数据包运行，编写时我没有引用文献。您可以参考基础物理课本或者在互联网搜索“台球物理”。

为了方便游玩，简化后的斯诺克[规则](https://en.wikipedia.org/wiki/Rules_of_snooker)和英式八球[规则](https://en.wikipedia.org/wiki/Blackball_(pool))被加入了数据包。 _英式八球的规则还在完善中，汉化会在完成后进行。_ 球桌袋口的规格近似于2005年的斯诺克标准，它可以在资源包贴图文件中找到。

由于代码量较多，如果游戏卡顿，可以考虑换电脑，或者玩[原始版本](https://github.com/MingshiYangUIUC/Pool-Minecraft-Squid-Workshop-Project)。

# Notes
略

# Project Tree
## 设置目录
	+---cheating
	|       allow.mcfunction
	|       disallow.mcfunction
	|       
	+---friction
	|       clear.mcfunction
	|       default.mcfunction
	|       impact.mcfunction
	|       rolling.mcfunction
	|       sliding.mcfunction
	|       
	+---language
	|       chinese_simplified.mcfunction
	|       english.mcfunction
	|       
	+---reload
	|       cleanongoingsession.mcfunction
	|       keepongoingsession.mcfunction
	|       
	\---version
		1_16.mcfunction
		1_17.mcfunction
		reset.mcfunction

# 使用条款
如与其它内容有冲突，请参照此条款下内容。 \
请随意游玩此数据包，您也可以用它开发新的数据包。但是您 **必须** 在文件中提供并明显地引用此GitHub页面。\
**请勿用作商用** \
**若未经允许，禁止潜在的 (由我裁决) 商用行为，此行为可能被追究。** 
## 协议
[Mozilla Public License 2.0](https://github.com/MingshiYangUIUC/Autoaim-Minecraft-Squid-Workshop-Project/blob/main/LICENSE)


# 更多关于鱿鱼MC工作室
我们开发的更多[数据包](https://github.com/Squid-Workshop/MinecraftDatapacksProject) \
我们的[B站主页](https://space.bilibili.com/649645265?from=search&seid=778816111336987286) \
QQ群: 74681732 \
微信公众号: 鱿鱼MC工作室 

*本文件转录自README.md
