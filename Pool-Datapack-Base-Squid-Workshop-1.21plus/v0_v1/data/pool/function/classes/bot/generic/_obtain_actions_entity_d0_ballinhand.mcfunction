# place at several random locations, find max 2 S for two balls (if there is two balls), then place, then normal eval.
#say trying ball in hand
kill @e[tag=swPool_cue]
# summon a cue ball
# add random shift to pool table location
scoreboard players set #nt swMath_V 0
function pool:classes/bot/generic/_rand_place

execute at @e[tag=swPool_rhp1,limit=1] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.727f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
#execute if entity @e[tag=swPool_cue,tag=swPool_free] run scoreboard players set @e[tag=swPool_pooltable] swPool_lifetime 0
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var00 run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var01 run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var02 run data get entity @e[tag=swPool_pooltable,limit=1] Pos[1] 10000

execute if entity @e[tag=swPool_cue,tag=swPool_pool] as @e[tag=swPool_pooltable,limit=1] run function pool:classes/cue/reset

#execute at @e[tag=swPool_rhp1,limit=1] run particle minecraft:campfire_signal_smoke ~ ~1 ~ 0 0 0 0 1 force
#execute if entity @e[tag=swPool_cue,tag=swPool_pool] run  sayplaced!!!

tag @a[tag=swPool_spec] add swPool_spec_tmp
tag @a[tag=swPool_spec_tmp] remove swPool_spec
function pool:classes/practice/place
tag @a[tag=swPool_spec_tmp] add swPool_spec
tag @a[tag=swPool_spec] remove swPool_spec_tmp

function pool:classes/bot/generic/_obtain_actions_entity_d0_ballinhand_eval

# s1 + s2 averaged
tellraw @a[tag=swPool_debug] [{"text":"max_S_place 2 average, "},{"score":{"objective":"swMath_V","name":"#placescore"}}]
# default fallback score
execute unless score #placescore swMath_V matches -10000..10000 run scoreboard players set #placescore swMath_V 0

# if not early game (~in kitchen placement and break), retry placement if score not high enough and lower bar a bit
#scoreboard players set #try_threshold swMath_V 9000 defined before calling this function
execute if score Stroke swPool_hidScore matches 2.. if score #placescore swMath_V < #try_threshold swMath_V run scoreboard players remove #try_threshold swMath_V 300
execute if score Stroke swPool_hidScore matches 2.. if score #placescore swMath_V < #try_threshold swMath_V run function pool:classes/bot/generic/_obtain_actions_entity_d0_ballinhand

