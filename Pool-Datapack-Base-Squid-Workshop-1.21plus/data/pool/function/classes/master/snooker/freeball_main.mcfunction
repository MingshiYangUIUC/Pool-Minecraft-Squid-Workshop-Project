execute if entity @s[scores={swPool_firsthit=1}] run tag @e[tag=swPool_pool,tag=swPool_red] add swPool_freeball_check
execute if entity @s[scores={swPool_firsthit=2}] run tag @e[tag=swPool_pool,tag=swPool_yellow] add swPool_freeball_check
execute if entity @s[scores={swPool_firsthit=3}] run tag @e[tag=swPool_pool,tag=swPool_green] add swPool_freeball_check
execute if entity @s[scores={swPool_firsthit=4}] run tag @e[tag=swPool_pool,tag=swPool_brown] add swPool_freeball_check
execute if entity @s[scores={swPool_firsthit=5}] run tag @e[tag=swPool_pool,tag=swPool_blue] add swPool_freeball_check
execute if entity @s[scores={swPool_firsthit=6}] run tag @e[tag=swPool_pool,tag=swPool_pink] add swPool_freeball_check
execute if entity @s[scores={swPool_firsthit=7}] run tag @e[tag=swPool_pool,tag=swPool_black] add swPool_freeball_check

execute as @e[tag=swPool_pool,tag=swPool_cue,limit=1] at @s run function pool:classes/master/read_tmppos

scoreboard players operation #xcue swMath_V = @e[tag=swPool_pool,tag=swPool_cue,limit=1] swPool_tmpposx
scoreboard players operation #zcue swMath_V = @e[tag=swPool_pool,tag=swPool_cue,limit=1] swPool_tmpposz

# assume snookered until one target is found with both edges clear
scoreboard players set #blocked_all_pairs swMath_V 1

execute as @e[tag=swPool_pool,tag=swPool_freeball_check] at @s run function pool:classes/master/snooker/freeball_pair

tag @e[tag=swPool_freeball_check] remove swPool_freeball_check

execute if score #blocked_all_pairs swMath_V matches 1 run tag @s add swPool_freeball_turn
