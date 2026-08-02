# cue commands
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",tag:{swPool_cuestick:1b}}}] at @s as @e[type=arrow,distance=..5] store result score @s swPool_player run data get entity @s Owner[1]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",tag:{swPool_cuestick:1b}}}] at @s run function pool:classes/cue/main


# ball-in-hand commands
scoreboard players set #holdingcue swMath_V 0
execute if entity @s[tag=swPool_ballinhand,nbt={SelectedItem:{tag:{CustomModelData:99},id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set #holdingcue swMath_V 1
execute if entity @s[tag=swPool_ballinhand,nbt={SelectedItem:{tag:{CustomModelData:100},id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set #holdingcue swMath_V 1


# cn8ball: two ball-in-hand scenarios:
# behind headstring (UK 8-ball style) or everywhere (practice style)
scoreboard players set #headstring swPool_var00 0
execute if score #breakshot swPool_v matches 1 run scoreboard players set #headstring swPool_var00 1
execute if score Stroke swPool_hidScore matches 1 run scoreboard players set #headstring swPool_var00 1
# execute if first ball in hand after break set run scoreboard players set #headstring swPool_var00 1

execute if score #holdingcue swMath_V matches 1 if score swPool_cn8ballmode swMath_V matches 1 unless score #headstring swPool_var00 matches 1 at @s run function pool:classes/ballinhand/practice/main
execute if score #holdingcue swMath_V matches 1 if score swPool_cn8ballmode swMath_V matches 1 if score #headstring swPool_var00 matches 1 at @s run function pool:classes/ballinhand/uk8ball/main


# 9-ball: two ball-in-hand scenarios:
# break behind headstring or everywhere
scoreboard players set #headstring swPool_var00 0
execute if score #breakshot swPool_v matches 1 run scoreboard players set #headstring swPool_var00 1

execute if score #holdingcue swMath_V matches 1 if score swPool_9ballmode swMath_V matches 1 unless score #headstring swPool_var00 matches 1 at @s run function pool:classes/ballinhand/practice/main
execute if score #holdingcue swMath_V matches 1 if score swPool_9ballmode swMath_V matches 1 if score #headstring swPool_var00 matches 1 at @s run function pool:classes/ballinhand/uk8ball/main


# standard snooker, UK 8-ball, and practice ball-in-hand
execute if score #holdingcue swMath_V matches 1 if score swPool_snookermode swMath_V matches 1 at @s run function pool:classes/ballinhand/snooker/main
execute if score #holdingcue swMath_V matches 1 if score swPool_uk8ballmode swMath_V matches 1 at @s run function pool:classes/ballinhand/uk8ball/main
execute if score #holdingcue swMath_V matches 1 if score swPool_practicemode swMath_V matches 1 at @s run function pool:classes/ballinhand/practice/main


# object-ball-in-hand logic
scoreboard players set #holdingobj swMath_V 0
execute if score swPool_practicemode swMath_V matches 1 if entity @s[tag=swPool_ballinhand_obj,nbt={SelectedItem:{tag:{swPool_obj:1b},id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set #holdingobj swMath_V 1
execute if score swPool_snookermode swMath_V matches 1 if entity @s[tag=swPool_ballinhand_obj,nbt={SelectedItem:{tag:{swPool_obj:1b},id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set #holdingobj swMath_V 1
execute if score #holdingobj swMath_V matches 1 store result score #rot1 swMath_V run data get entity @s Rotation[1] 100
execute if score #holdingobj swMath_V matches 1 if score #rot1 swMath_V matches ..999 run scoreboard players set #holdingobj swMath_V 0
execute if score #holdingobj swMath_V matches 1 unless score 000c2be1-0001-414d-0000-000000000000 swPool_lifetime matches 1 at @s run function pool:classes/ballinhand/practice/main_obj
