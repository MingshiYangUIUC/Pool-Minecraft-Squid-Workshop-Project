execute as @e[tag=swPool_pool,tag=!swPool_placed] at @s run tp @s ~ ~0.02 ~
execute as @e[tag=swPool_pool,tag=swPool_free] run scoreboard players add @s swPool_var02 200


execute as @e[tag=swPool_pool,tag=!swPool_placed,tag=!swPool_free] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_var00
execute as @e[tag=swPool_pool,tag=!swPool_placed,tag=!swPool_free] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_var01
execute as @e[tag=swPool_pool,tag=swPool_free,tag=!swPool_manual] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s swPool_var02
execute if data storage minecraft:swpool cueballreddot run item replace entity @e[tag=swPool_cue,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_cueball"]
execute unless data storage minecraft:swpool cueballreddot run item replace entity @e[tag=swPool_cue,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_cueball_clean"]
item replace entity @e[tag=swPool_red,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_red"]
item replace entity @e[tag=swPool_yellow,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_yellow"]
item replace entity @e[tag=swPool_green,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_green"]
item replace entity @e[tag=swPool_brown,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_brown"]
item replace entity @e[tag=swPool_blue,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_blue"]
item replace entity @e[tag=swPool_pink,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_pink"]
item replace entity @e[tag=swPool_black,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_black"]

item replace entity @e[tag=swPool_01,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_01"]
item replace entity @e[tag=swPool_02,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_02"]
item replace entity @e[tag=swPool_03,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_03"]
item replace entity @e[tag=swPool_04,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_04"]
item replace entity @e[tag=swPool_05,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_05"]
item replace entity @e[tag=swPool_06,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_06"]
item replace entity @e[tag=swPool_07,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_07"]
item replace entity @e[tag=swPool_08,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_08"]
item replace entity @e[tag=swPool_09,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_09"]
item replace entity @e[tag=swPool_10,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_10"]
item replace entity @e[tag=swPool_11,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_11"]
item replace entity @e[tag=swPool_12,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_12"]
item replace entity @e[tag=swPool_13,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_13"]
item replace entity @e[tag=swPool_14,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_14"]
item replace entity @e[tag=swPool_15,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_ball_15"]


scoreboard players reset @e[tag=swPool_pool] swPool_var00
scoreboard players reset @e[tag=swPool_pool] swPool_var01
scoreboard players set @e[tag=swPool_pool] swPool_D100 100000
scoreboard players set @e[tag=swPool_pool] swPool_DXX 99000
tag @s add swPool_moved


execute unless entity @e[tag=swPool_free] run scoreboard players set @s swPool_firsthit 1
scoreboard players set @s swPool_var05 0
scoreboard players set @e[tag=swPool_pool] swPool_v 0


#execute as @e[tag=swPool_free,tag=!swPool_cue] at @s run tp @s ~ ~-1 ~

tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<Command Window>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 11"}},{"text":" ","underlined":false},{"underlined":true,"text":"<Replace the last ball>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 127"}}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<命令窗口>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 11"}},{"text":" ","underlined":false},{"underlined":true,"text":"<撤销本次摆球>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 127"}}]

execute if entity @e[tag=swPool_free,tag=swPool_cue] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 99"}}]
execute if entity @e[tag=swPool_free,tag=swPool_cue] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<调整下一次击球>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 99"}}]

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


