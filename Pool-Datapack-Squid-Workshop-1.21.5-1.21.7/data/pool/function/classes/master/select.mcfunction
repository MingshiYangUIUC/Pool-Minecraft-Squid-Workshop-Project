tag @s add swPool_a2
#execute if entity @s[scores={swPool_v=0..}] run tag @e[tag=swPool_a1,limit=1] add swPool_tgt
#execute as @e[tag=swPool_a1,limit=1] if entity @s[scores={swPool_v=0..}] run tag @s add swPool_tgt
execute as @e[type=armor_stand,tag=swPool_a1,limit=1] at @s run function pool:classes/physics/target
tag @e[type=armor_stand,tag=swPool_a1,limit=1] remove swPool_tgt
tag @s remove swPool_a2