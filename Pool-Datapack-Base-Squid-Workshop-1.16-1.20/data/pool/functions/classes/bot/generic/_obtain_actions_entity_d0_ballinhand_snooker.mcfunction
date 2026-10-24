# for snooker, just place the cue ball between brown and yellow pins.
#say trying ball in hand
kill @e[tag=swPool_cue]

# get brown pin position
execute as @e[tag=swPool_brown,tag=swPool_pin,limit=1] store result score #cue_x swMath_V run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_brown,tag=swPool_pin,limit=1] store result score #cue_z swMath_V run data get entity @s Pos[2] 10000

# get yellow pin position
execute as @e[tag=swPool_yellow,tag=swPool_pin,limit=1] store result score #cue_x2 swMath_V run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_yellow,tag=swPool_pin,limit=1] store result score #cue_z2 swMath_V run data get entity @s Pos[2] 10000

# midpoint
#scoreboard players operation #cue_x swMath_V += #cue_x2 swMath_V
#scoreboard players operation #cue_z swMath_V += #cue_z2 swMath_V
#scoreboard players operation #cue_x swMath_V /= #C_2 swMath_C
#scoreboard players operation #cue_z swMath_V /= #C_2 swMath_C

execute at 000c2be1-0001-414d-0000-000000000000 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1}

execute store result entity @e[tag=swPool_cue,tag=swPool_free,limit=1] Pos[0] double 0.0001 run scoreboard players get #cue_x swMath_V
execute store result entity @e[tag=swPool_cue,tag=swPool_free,limit=1] Pos[2] double 0.0001 run scoreboard players get #cue_z swMath_V

scoreboard players set #cue_retry swMath_V 0
execute at @e[tag=swPool_cue,tag=swPool_free,limit=1] if entity @e[tag=swPool_pool,tag=!swPool_cue,distance=..0.25] run function pool:classes/bot/generic/_retry_snooker_cue_position

# postprocessing same as other modes
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var00 run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var01 run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var02 run data get entity 000c2be1-0001-414d-0000-000000000000 Pos[1] 10000

execute if entity @e[tag=swPool_cue,tag=swPool_pool] as 000c2be1-0001-414d-0000-000000000000 run function pool:classes/cue/reset

#execute at 000c2be1-0006-a619-0000-000000000004 run particle minecraft:campfire_signal_smoke ~ ~1 ~ 0 0 0 0 1 force
#execute if entity @e[tag=swPool_cue,tag=swPool_pool] run  sayplaced!!!

tag @a[tag=swPool_spec] add swPool_spec_tmp
tag @a[tag=swPool_spec_tmp] remove swPool_spec
function pool:classes/practice/place
tag @a[tag=swPool_spec_tmp] add swPool_spec
tag @a[tag=swPool_spec] remove swPool_spec_tmp

tag @e[tag=swPool_poolplay] remove swPool_ballinhand
tag @e[tag=swPool_poolplay] remove swPool_given