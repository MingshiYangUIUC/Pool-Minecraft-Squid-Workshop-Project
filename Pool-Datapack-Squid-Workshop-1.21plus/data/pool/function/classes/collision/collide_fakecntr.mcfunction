#say fakecntr
#set uuuuuuuuuuuuup
tag @s add swPool_colliding

#tp to col2 and done

execute as @e[tag=swPool_col2,tag=swPool_pktcntr_c,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.3
execute as @e[tag=swPool_col2,tag=swPool_pktcntr_s,limit=1] at @s run tp @e[tag=swPool_colliding,limit=1] ^ ^ ^0.1

scoreboard players set @s swPool_v 1


playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1

tag @s add swPool_inpocket