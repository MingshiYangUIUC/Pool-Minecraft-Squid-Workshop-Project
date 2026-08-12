# engine tick
function pool:classes/main/run_tick

# low frequency global player detection
scoreboard players add #tick_player swMath_V 1
scoreboard players operation #tick_player swMath_V %= C_5 swPool_C
execute if score #tick_player swMath_V matches 1 unless data storage minecraft:swpool unloaded as @a[tag=!swPool_CN,tag=!swPool_EN,tag=!swPool_welcomed] run function pool:classes/main/welcome_newplayer
execute if score #tick_player swMath_V matches 1 as @a[scores={swPool_chst=1..}] at @s run function pool:classes/table/helpers/chest_detect
