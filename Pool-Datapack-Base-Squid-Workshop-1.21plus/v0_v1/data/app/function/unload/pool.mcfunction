function pool:classes/main/clean

tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"[Pool Datapack]: Successfully uninstalled, to install again please use /reload or reboot the world. ","italic":true,"color":"red"},{"italic":false,"underlined":true,"text":"<Click here to choose>","color":"gray","clickEvent":{"action":"run_command","value":"/function app:help/pool/settings/_help_version"}}]
tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"text":"[台球数据包]: 成功卸载，再次安装请使用 /reload 或重启世界。 ","italic":true,"color":"red"},{"italic":false,"underlined":true,"color":"gray","text":"<点此处选择>","clickEvent":{"action":"run_command","value":"/function app:help/pool/settings/_help_version"}}]


tag @a remove swPool_CN
tag @a remove swPool_EN
tag @a remove swPool_welcomed
data remove storage minecraft:swpool displayscore
data merge storage minecraft:swpool {unloaded:1}
