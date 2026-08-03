scoreboard players operation #groundrefresh swMath_V = #accumulator swMath_V
scoreboard players operation #groundrefresh swMath_V %= C_4 swPool_C

execute if score #groundrefresh swMath_V matches 1 run tag @s remove swPool_offground
execute if score #groundrefresh swMath_V matches 1 if entity @s[nbt={OnGround:0b}] run tag @s add swPool_offground

execute if entity @s[tag=swPool_offground] as @e[type=arrow,distance=..2] if score @s swPool_player = @p[tag=swPool_offground] swPool_player run kill @s

# if any balls are moving, reset the sneaktime to 0
execute if entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..}] run scoreboard players set @s swPool_sneaktime 0

# aim at cue ball
execute as @s[scores={swPool_sneaktime=1..}] unless data storage minecraft:swpool {version:[1205]} at @s run function pool:classes/cue/aim
execute as @s[scores={swPool_sneaktime=1..}] if data storage minecraft:swpool {version:[1205]} at @s run function pool:classes/cue/aim_1205

execute if entity @e[tag=swPool_cue,limit=1] at @s if score @e[type=arrow,distance=..2,limit=1] swPool_player = @s swPool_player run function pool:classes/cue/shoot
