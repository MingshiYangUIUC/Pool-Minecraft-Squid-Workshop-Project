#say fakecntr
#set uuuuuuuuuuuuup
tag @s add swPool_colliding

#tp to col2 and done

execute if score C_r swPool_C matches ..124 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^
execute if score C_r swPool_C matches ..124 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^

execute if score C_r swPool_C matches 125..249 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.03
execute if score C_r swPool_C matches 125..249 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.01

execute if score C_r swPool_C matches 250..374 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.06
execute if score C_r swPool_C matches 250..374 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.02

execute if score C_r swPool_C matches 375..499 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.09
execute if score C_r swPool_C matches 375..499 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.03

execute if score C_r swPool_C matches 500..624 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.12
execute if score C_r swPool_C matches 500..624 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.04

execute if score C_r swPool_C matches 625..749 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.15
execute if score C_r swPool_C matches 625..749 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.05

execute if score C_r swPool_C matches 750..874 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.18
execute if score C_r swPool_C matches 750..874 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.06

execute if score C_r swPool_C matches 875..999 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.21
execute if score C_r swPool_C matches 875..999 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.07

execute if score C_r swPool_C matches 1000..1124 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.24
execute if score C_r swPool_C matches 1000..1124 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.08

execute if score C_r swPool_C matches 1125..1249 as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.27
execute if score C_r swPool_C matches 1125..1249 as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.09

execute if score C_r swPool_C matches 1250.. as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.3
execute if score C_r swPool_C matches 1250.. as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.1

scoreboard players set @s swPool_v 1


playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1

tag @s add swPool_inpocket