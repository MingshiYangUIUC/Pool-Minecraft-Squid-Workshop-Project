#combine x z velocities to one vector with direction and magnitude
#not applicable to swPool_player which is weird

#constant used for calculation: 1000

scoreboard players operation @s swPool_var00 = @s swPool_vex
scoreboard players operation @s swPool_var01 = @s swPool_vez
scoreboard players operation @s swPool_var00 /= C_10 swPool_C
scoreboard players operation @s swPool_var01 /= C_10 swPool_C
scoreboard players operation @s swPool_var00 *= @s swPool_var00
scoreboard players operation @s swPool_var01 *= @s swPool_var01
scoreboard players operation @s swPool_var00 += @s swPool_var01
execute at @s run function pool:classes/physics/sqrt
scoreboard players operation @s swPool_v = @s swPool_var00
scoreboard players operation @s swPool_v *= C_10 swPool_C
#add rotation based on xz values

summon area_effect_cloud ^ ^ ^ {Tags:["swPool_vcomb_1"],Duration:1}
scoreboard players set @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] swPool_v 0
execute if entity @s[scores={swPool_vex=..0}] run tp @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] ~ ~ ~ 90 0
execute if entity @s[scores={swPool_vex=..0}] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] swPool_v -= @s swPool_vex
execute if entity @s[scores={swPool_vex=1..}] run tp @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] ~ ~ ~ -90 0
execute if entity @s[scores={swPool_vex=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] swPool_v += @s swPool_vex
#scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1,sort=nearest] swPool_v *= C_500 swPool_C
execute as @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1,sort=nearest] at @s run function pool:classes/motion/move_comb
scoreboard players set @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] swPool_v 0
execute if entity @s[scores={swPool_vez=..0}] as @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] at @s run tp @s ~ ~ ~ 180 0
execute if entity @s[scores={swPool_vez=..0}] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] swPool_v -= @s swPool_vez
execute if entity @s[scores={swPool_vez=1..}] as @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] at @s run tp @s ~ ~ ~ 0 0
execute if entity @s[scores={swPool_vez=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1] swPool_v += @s swPool_vez
#scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1,sort=nearest] swPool_v *= C_500 swPool_C
execute as @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1,sort=nearest] at @s run function pool:classes/motion/move_comb
execute if entity @e[tag=swPool_pooltable,tag=swPool_1st_render] run execute as @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1,sort=nearest] at @s run particle minecraft:composter ~ ~-0.5 ~ 0 0 0 0 1 force
execute if entity @e[tag=swPool_pooltable,tag=swPool_1st_render] run tag @e[tag=swPool_pooltable,tag=swPool_1st_render,limit=1,sort=nearest] remove swPool_1st_render
execute at @s run tp @s ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1,sort=nearest]
kill @e[type=area_effect_cloud,tag=swPool_vcomb_1,limit=1]