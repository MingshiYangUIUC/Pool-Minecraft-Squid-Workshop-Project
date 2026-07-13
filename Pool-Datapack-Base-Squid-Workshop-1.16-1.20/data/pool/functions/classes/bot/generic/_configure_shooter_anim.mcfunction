summon minecraft:armor_stand ~ ~ ~ {Tags:["swPool_helper","swPool_shooter"],NoGravity:1,Invisible:1}
execute as @e[tag=swPool_shooter] at @s run function pool:classes/bot/animation/move_shooter
schedule function pool:classes/bot/animation/equip_helper 6t

# assign shooting tag based on self tag
# cn 8 ball
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if entity @e[tag=swPool_bot_thinking,tag=swPool_aimsolid] run tag @e[tag=swPool_shooter] add swPool_aimsolid
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if entity @e[tag=swPool_bot_thinking,tag=swPool_aimstripe] run tag @e[tag=swPool_shooter] add swPool_aimstripe
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if entity @e[tag=swPool_bot_thinking,tag=swPool_aim08] run tag @e[tag=swPool_shooter] add swPool_aim08
