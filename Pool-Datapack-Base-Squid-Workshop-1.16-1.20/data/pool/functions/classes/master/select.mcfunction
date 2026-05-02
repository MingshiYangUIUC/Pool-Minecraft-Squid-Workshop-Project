tag @s add swPool_a2
# record temporary score
scoreboard players operation a2_self swPool_var01 = @s swPool_tmpposx
scoreboard players operation a2_self swPool_var02 = @s swPool_tmpposz
execute as @e[type=armor_stand,tag=swPool_a1,limit=1] at @s run function pool:classes/physics/target
tag @e[type=armor_stand,tag=swPool_a1,limit=1] remove swPool_tgt
tag @s remove swPool_a2
