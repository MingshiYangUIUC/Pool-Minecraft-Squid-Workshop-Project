data merge storage minecraft:swpool {whitelist:1}
execute if entity @s[tag=!swPool_whitelisted] run tag @s add swPool_whitelisted
tellraw @s[tag=swPool_EN] [{"text":"➇ Enabled Whitelist.","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 白名单已开启。","color":"white"}]