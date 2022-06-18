
execute as @e[tag=swPool_pool,tag=!swPool_placed] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_var00
execute as @e[tag=swPool_pool,tag=!swPool_placed] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_var01
execute as @e[tag=swPool_cue,tag=swPool_free] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s swPool_var02
item replace entity @e[tag=swPool_cue,tag=!swPool_placed] armor.head with minecraft:acacia_button{CustomModelData:1}
item replace entity @e[tag=swPool_red,tag=!swPool_placed] armor.head with minecraft:acacia_button{CustomModelData:2}
item replace entity @e[tag=swPool_yellow,tag=!swPool_placed] armor.head with minecraft:acacia_button{CustomModelData:3}
item replace entity @e[tag=swPool_green,tag=!swPool_placed] armor.head with minecraft:acacia_button{CustomModelData:4}
item replace entity @e[tag=swPool_brown,tag=!swPool_placed] armor.head with minecraft:acacia_button{CustomModelData:5}
item replace entity @e[tag=swPool_blue,tag=!swPool_placed] armor.head with minecraft:acacia_button{CustomModelData:6}
item replace entity @e[tag=swPool_pink,tag=!swPool_placed] armor.head with minecraft:acacia_button{CustomModelData:7}
item replace entity @e[tag=swPool_black,tag=!swPool_placed] armor.head with minecraft:acacia_button{CustomModelData:8}
scoreboard players reset @e[tag=swPool_pool] swPool_var00
scoreboard players reset @e[tag=swPool_pool] swPool_var01
scoreboard players set @e[tag=swPool_pool] swPool_D100 100000
scoreboard players set @e[tag=swPool_pool] swPool_DXX 99000
tag @s add swPool_moved


execute at @e[tag=swPool_pool,tag=swPool_yellow,tag=!swPool_placed] run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pin","swPool_yellow"],Duration:99999999}
execute at @e[tag=swPool_pool,tag=swPool_green,tag=!swPool_placed] run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pin","swPool_green"],Duration:99999999}

execute if entity @s[tag=swPool_z] if score TABLE swPool_ds matches 13750 at @e[tag=swPool_pool,tag=swPool_yellow,tag=!swPool_placed] run tp @e[type=area_effect_cloud,limit=1,tag=swPool_pin,tag=swPool_yellow] ~-0.1 ~ ~
execute if entity @s[tag=swPool_z] if score TABLE swPool_ds matches 13750 at @e[tag=swPool_pool,tag=swPool_green,tag=!swPool_placed] run tp @e[type=area_effect_cloud,limit=1,tag=swPool_pin,tag=swPool_green] ~0.1 ~ ~
execute if entity @s[tag=swPool_x] if score TABLE swPool_ds matches 13750 at @e[tag=swPool_pool,tag=swPool_yellow,tag=!swPool_placed] run tp @e[type=area_effect_cloud,limit=1,tag=swPool_pin,tag=swPool_yellow] ~ ~ ~0.1
execute if entity @s[tag=swPool_x] if score TABLE swPool_ds matches 13750 at @e[tag=swPool_pool,tag=swPool_green,tag=!swPool_placed] run tp @e[type=area_effect_cloud,limit=1,tag=swPool_pin,tag=swPool_green] ~ ~ ~-0.1


execute at @e[tag=swPool_pool,tag=swPool_brown,tag=!swPool_placed] run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pin","swPool_brown"],Duration:99999999}
execute at @e[tag=swPool_pool,tag=swPool_blue,tag=!swPool_placed] run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pin","swPool_blue"],Duration:99999999}
execute at @e[tag=swPool_pool,tag=swPool_pink,tag=!swPool_placed] run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pin","swPool_pink"],Duration:99999999}
execute at @e[tag=swPool_pool,tag=swPool_black,tag=!swPool_placed] run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pin","swPool_black"],Duration:99999999}

#cue placement needs revisement
#execute at @e[tag=swPool_pool,tag=swPool_cue,tag=!swPool_placed] run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pin","swPool_cue"],Duration:99999999}

#execute at @e[tag=swPool_pool,tag=swPool_] run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pin",""]}
#execute at @e[tag=swPool_pool,tag=swPool_] run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pin",""]}

execute unless entity @e[tag=swPool_free] run scoreboard players set @s swPool_firsthit 1
scoreboard players set @s swPool_var05 0
execute unless entity @e[tag=swPool_free] run execute if entity @e[tag=swPool_pool] run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_freeball]"},{"text":"may place the cueball and target Red."}]
execute unless entity @e[tag=swPool_free] run execute if entity @e[tag=swPool_pool] run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"请"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_freeball]"},{"text":"放置母球，目标球为红球。"}]

scoreboard players set @e[tag=swPool_pool] swPool_v 0

tag @e[tag=swPool_cue,tag=swPool_free] remove swPool_free
tag @e[tag=swPool_pool] add swPool_placed
tag @e[tag=swPool_start] remove swPool_start

scoreboard players set @e[tag=swPool_yellow,tag=swPool_pool] swPool_rank 2
scoreboard players set @e[tag=swPool_green,tag=swPool_pool] swPool_rank 3
scoreboard players set @e[tag=swPool_brown,tag=swPool_pool] swPool_rank 4
scoreboard players set @e[tag=swPool_blue,tag=swPool_pool] swPool_rank 5
scoreboard players set @e[tag=swPool_pink,tag=swPool_pool] swPool_rank 6
scoreboard players set @e[tag=swPool_black,tag=swPool_pool] swPool_rank 7

execute as @e[scores={swPool_rank=2}] run data merge entity @s {CustomName:"\"2 Pts\""}
execute as @e[scores={swPool_rank=3}] run data merge entity @s {CustomName:"\"3 Pts\""}
execute as @e[scores={swPool_rank=4}] run data merge entity @s {CustomName:"\"4 Pts\""}
execute as @e[scores={swPool_rank=5}] run data merge entity @s {CustomName:"\"5 Pts\""}
execute as @e[scores={swPool_rank=6}] run data merge entity @s {CustomName:"\"6 Pts\""}
execute as @e[scores={swPool_rank=7}] run data merge entity @s {CustomName:"\"7 Pts\""}

function pool:classes/master/record

tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]
tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"<调整下一次击球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]