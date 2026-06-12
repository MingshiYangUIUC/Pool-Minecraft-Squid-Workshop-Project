execute if entity @s[tag=!swPool_fake] run scoreboard players operation #r1r2_sqr swMath_V += C_r swPool_C

execute if entity @s[tag=swPool_pktedge_c] run scoreboard players operation #r1r2_sqr swMath_V += C_r2_edge_c swPool_C

execute if entity @s[tag=swPool_pktedge_s] run scoreboard players operation #r1r2_sqr swMath_V += C_r2_edge_s swPool_C

execute if entity @s[tag=swPool_pktcntr_c] run scoreboard players operation #r1r2_sqr swMath_V += C_r2_cntr_c swPool_C

execute if entity @s[tag=swPool_pktcntr_s] run scoreboard players operation #r1r2_sqr swMath_V += C_r2_cntr_s swPool_C
