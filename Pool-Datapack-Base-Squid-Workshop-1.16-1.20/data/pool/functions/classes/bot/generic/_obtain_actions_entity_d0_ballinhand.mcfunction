# place at several random locations, find max 2 S for two balls (if there is two balls), then place, then normal eval.
say trying ball in hand
kill @e[tag=swPool_cue]
# summon a cue ball
# add random shift to pool table location
scoreboard players set #nt swMath_V 0
function pool:classes/bot/generic/_rand_place

execute at @e[tag=swPool_rhp1,limit=1] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1}
#execute if entity @e[tag=swPool_cue,tag=swPool_free] run scoreboard players set @e[tag=swPool_pooltable] swPool_lifetime 0
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var00 run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var01 run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var02 run data get entity @e[tag=swPool_pooltable,limit=1] Pos[1] 10000

execute if entity @e[tag=swPool_cue,tag=swPool_pool] as @e[tag=swPool_pooltable,limit=1] run function pool:classes/cue/reset

#execute at @e[tag=swPool_rhp1,limit=1] run particle minecraft:campfire_signal_smoke ~ ~1 ~ 0 0 0 0 1 force
#execute if entity @e[tag=swPool_cue,tag=swPool_pool] run say placed!!!

function pool:classes/practice/place

function pool:classes/bot/generic/_obtain_actions_entity_d0_ballinhand_eval

# s1 + s2 averaged
tellraw @a [{"text":"max_S_place 2 average, "},{"score":{"objective":"swMath_V","name":"#placescore"}}]

# if not early game (~in kitchen placement and break), retry placement if score not high enough
execute if score Stroke swPool_hidScore matches 2.. unless score #placescore swMath_V matches 7500.. run function pool:classes/bot/generic/_obtain_actions_entity_d0_ballinhand
