tag 000c2be1-0001-414d-0000-000000000000 add swPool_pocketing

# FREE BALL:
# check if this potted ball is the nominated free ball
scoreboard players set #potted_freeball swMath_V 0
execute if entity @e[tag=swPool_pooltable,tag=swPool_freeball_turn] if score @s swPool_rank = #freeball_nom swMath_V run scoreboard players set #potted_freeball swMath_V 1
execute if score #potted_freeball swMath_V matches 1 run tag 000c2be1-0001-414d-0000-000000000000 add swPool_freeball_potted

# normal ball type count, unless this is the nominated free ball
execute if score #potted_freeball swMath_V matches 0 if entity @s[tag=swPool_red] run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_nred 1
execute if entity @s[tag=swPool_red] unless entity @e[tag=swPool_pool,tag=swPool_red,distance=0.1..] run tag 000c2be1-0001-414d-0000-000000000000 add swPool_lastred
execute if score #potted_freeball swMath_V matches 0 unless entity @s[tag=swPool_red] unless entity @s[tag=swPool_cue] run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_ncolor 1

# FREE BALL:
# nominated free ball behaves as the actual ball on
execute if score #potted_freeball swMath_V matches 1 if score #freeball_target swMath_V matches 1 run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_nred 1
execute if score #potted_freeball swMath_V matches 1 if score #freeball_target swMath_V matches 2..7 run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_ncolor 1


execute unless entity @e[tag=swPool_pool,tag=swPool_red] unless entity @s[tag=swPool_cue] if entity @e[tag=swPool_pooltable,limit=1,scores={swPool_firsthit=8}] run tag 000c2be1-0001-414d-0000-000000000000 add swPool_firstcolor


# normal score, unless this is the nominated free ball
execute if score #potted_freeball swMath_V matches 0 if entity @s[tag=swPool_red] run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_var05 1
execute if score #potted_freeball swMath_V matches 0 if entity @s[tag=swPool_yellow] run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_var05 2
execute if score #potted_freeball swMath_V matches 0 if entity @s[tag=swPool_green] run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_var05 3
execute if score #potted_freeball swMath_V matches 0 if entity @s[tag=swPool_brown] run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_var05 4
execute if score #potted_freeball swMath_V matches 0 if entity @s[tag=swPool_blue] run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_var05 5
execute if score #potted_freeball swMath_V matches 0 if entity @s[tag=swPool_pink] run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_var05 6
execute if score #potted_freeball swMath_V matches 0 if entity @s[tag=swPool_black] run scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_var05 7

# FREE BALL:
# nominated ball scores the value of the actual ball on
execute if score #potted_freeball swMath_V matches 1 run scoreboard players operation 000c2be1-0001-414d-0000-000000000000 swPool_var05 += #freeball_target swMath_V


execute if entity @s[scores={swPool_rank=2..7}] if score @s swPool_rank > 000c2be1-0001-414d-0000-000000000000 swPool_foul run scoreboard players operation 000c2be1-0001-414d-0000-000000000000 swPool_foul = @s swPool_rank


#playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1
#playsound minecraft:block.barrel.close ambient @a ~ ~ ~ 1 1
execute unless score #muteall swPool_C matches 1 run playsound swpool:custom.pool.pocket ambient @a ~ ~ ~ 1 1
#kill @s
function pool:classes/pocketing/animation/main