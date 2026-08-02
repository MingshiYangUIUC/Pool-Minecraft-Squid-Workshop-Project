scoreboard players set #nsnake swMath_V 15
tag 000c2be1-0001-414d-0000-000000000000 add swPool_vsnake

execute as 000c2be1-0001-414d-0000-000000000000 at @s run function pool:classes/practice/balls/check_table

execute if score #nsnake swMath_V matches 15.. if score TABLE swPool_ds matches ..23749 if score C_r swPool_C matches 875.. run tellraw @s[tag=swPool_EN] [{"text":"Short side too short, cannot rack balls as a straight line.","color":"red"}]
execute if score #nsnake swMath_V matches 15.. if score TABLE swPool_ds matches ..23749 if score C_r swPool_C matches 875.. run tellraw @s[tag=swPool_CN] [{"text":"球桌短边太短！无法按直线摆球。","color":"red"}]

function pool:classes/practice/start_helper