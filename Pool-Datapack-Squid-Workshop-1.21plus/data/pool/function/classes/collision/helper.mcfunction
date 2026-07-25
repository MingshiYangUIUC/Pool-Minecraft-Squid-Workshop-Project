scoreboard players set @e[type=item_display,tag=swPool_col2] swPool_v 0
scoreboard players set @s swPool_v 0

execute if entity @e[limit=1,tag=swPool_col2,tag=!swPool_fake] at @s run function pool:classes/collision/collide_new


execute if entity @e[limit=1,tag=swPool_col2,tag=swPool_cntr] at @s run function pool:classes/collision/collide_fakecntr
execute if entity @e[limit=1,tag=swPool_col2,tag=swPool_edge] at @s run function pool:classes/collision/collide_fakeedge