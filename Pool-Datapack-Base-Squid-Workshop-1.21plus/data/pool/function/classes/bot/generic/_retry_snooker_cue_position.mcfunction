# random retry between green and yellow
#tellraw @a [{"text":"retry cue ball placement"}]
scoreboard players add #cue_retry swMath_V 1

# yellow 
execute as @e[tag=swPool_yellow,tag=swPool_pin,limit=1] store result score #cue_x swMath_V run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_yellow,tag=swPool_pin,limit=1] store result score #cue_z swMath_V run data get entity @s Pos[2] 10000

# green 
execute as @e[tag=swPool_green,tag=swPool_pin,limit=1] store result score #cue_x2 swMath_V run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_green,tag=swPool_pin,limit=1] store result score #cue_z2 swMath_V run data get entity @s Pos[2] 10000

scoreboard players operation #cue_x2 swMath_V -= #cue_x swMath_V
scoreboard players operation #cue_z2 swMath_V -= #cue_z swMath_V

# random interpolation
function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= #C_100 swMath_C


scoreboard players operation #cue_x2 swMath_V *= #vOut swMath_V
scoreboard players operation #cue_x2 swMath_V /= #C_100 swMath_C
scoreboard players operation #cue_x swMath_V += #cue_x2 swMath_V
scoreboard players operation #cue_z2 swMath_V *= #vOut swMath_V
scoreboard players operation #cue_z2 swMath_V /= #C_100 swMath_C
scoreboard players operation #cue_z swMath_V += #cue_z2 swMath_V

# update cue ball pos
execute store result entity @e[tag=swPool_cue,tag=swPool_free,limit=1] Pos[0] double 0.0001 run scoreboard players get #cue_x swMath_V
execute store result entity @e[tag=swPool_cue,tag=swPool_free,limit=1] Pos[2] double 0.0001 run scoreboard players get #cue_z swMath_V

# retry if obstructed, up to 20 attempts
execute if score #cue_retry swMath_V matches ..19 at @e[tag=swPool_cue,tag=swPool_free,limit=1] if entity @e[tag=swPool_pool,tag=!swPool_cue,distance=..0.25] run function pool:classes/bot/generic/_retry_snooker_cue_position
