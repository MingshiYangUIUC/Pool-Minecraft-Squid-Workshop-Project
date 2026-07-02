summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_shooter"],Duration:1200,Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}
# assign shooting tag based on self tag
# cn 8 ball
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if entity @e[tag=swPool_bot_thinking,tag=swPool_aimsolid] run tag @e[tag=swPool_shooter] add swPool_aimsolid
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if entity @e[tag=swPool_bot_thinking,tag=swPool_aimstripe] run tag @e[tag=swPool_shooter] add swPool_aimstripe
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if entity @e[tag=swPool_bot_thinking,tag=swPool_aim08] run tag @e[tag=swPool_shooter] add swPool_aim08

