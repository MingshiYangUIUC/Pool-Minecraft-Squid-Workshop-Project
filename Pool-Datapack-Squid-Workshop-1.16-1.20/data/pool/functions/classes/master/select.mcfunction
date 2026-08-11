tag @s add swPool_a2
# record temporary score
scoreboard players operation a2_self swPool_var01 = @s swPool_tmpposx
scoreboard players operation a2_self swPool_var02 = @s swPool_tmpposz
scoreboard players operation a2_selfv swPool_var01 = @s swPool_vex
scoreboard players operation a2_selfv swPool_var02 = @s swPool_vez

execute if entity @s[tag=!swPool_fake] run scoreboard players operation #ontgt_add swPool_var01 = C_r swPool_C
execute if entity @s[tag=swPool_pktedge_c] run scoreboard players operation #ontgt_add swPool_var01 = C_r2_edge_c swPool_C
execute if entity @s[tag=swPool_pktedge_s] run scoreboard players operation #ontgt_add swPool_var01 = C_r2_edge_s swPool_C
execute if entity @s[tag=swPool_pktcntr_c] run scoreboard players operation #ontgt_add swPool_var01 = C_r2_cntr_c swPool_C
execute if entity @s[tag=swPool_pktcntr_s] run scoreboard players operation #ontgt_add swPool_var01 = C_r2_cntr_s swPool_C

execute if entity @s[tag=!swPool_fake] run scoreboard players operation #r1r2_sqr_add swPool_var01 = C_r swPool_C
execute if entity @s[tag=swPool_pktedge_c] run scoreboard players operation #r1r2_sqr_add swPool_var01 = C_r2_edge_c swPool_C
execute if entity @s[tag=swPool_pktedge_s] run scoreboard players operation #r1r2_sqr_add swPool_var01 = C_r2_edge_s swPool_C
execute if entity @s[tag=swPool_pktcntr_c] run scoreboard players operation #r1r2_sqr_add swPool_var01 = C_r2_cntr_c swPool_C
execute if entity @s[tag=swPool_pktcntr_s] run scoreboard players operation #r1r2_sqr_add swPool_var01 = C_r2_cntr_s swPool_C

execute as @e[type=armor_stand,tag=swPool_a1,limit=1,distance=..3] at @s run function pool:classes/physics/target

tag @s remove swPool_a2

tag @s remove swPool_near