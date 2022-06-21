
execute as @e[tag=swPool_pool,tag=!swPool_placed,tag=!swPool_free] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_var00
execute as @e[tag=swPool_pool,tag=!swPool_placed,tag=!swPool_free] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_var01
execute as @e[tag=swPool_pool,tag=swPool_free,tag=!swPool_manual] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s swPool_var02
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


execute unless entity @e[tag=swPool_free] run scoreboard players set @s swPool_firsthit 1
scoreboard players set @s swPool_var05 0
scoreboard players set @e[tag=swPool_pool] swPool_v 0


#execute as @e[tag=swPool_free,tag=!swPool_cue] at @s run tp @s ~ ~-1 ~

tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":""},{"underlined":true,"text":"<Command Window>","color":"","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}},{"text":" ","underlined":false},{"underlined":true,"text":"<Replace the last ball>","color":"","clickEvent":{"action":"run_command","value":"/function pool:classes/master/undo"}}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":""},{"underlined":true,"text":"<命令窗口>","color":"","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}},{"text":" ","underlined":false},{"underlined":true,"text":"<撤销本次摆球>","color":"","clickEvent":{"action":"run_command","value":"/function pool:classes/master/undo"}}]

execute if entity @e[tag=swPool_free,tag=swPool_cue] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]
execute if entity @e[tag=swPool_free,tag=swPool_cue] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"<调整下一次击球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]

tag @e[tag=swPool_free] remove swPool_free
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


