#combine x z velocities to one vector with direction and magnitude
#not applicable to swPool_player which is weird

#constant used for calculation: 2000
#scoreboard players set C_2000 swPool_C 1000

scoreboard players operation @s swPool_var00 = @s swPool_vx
scoreboard players operation @s swPool_var01 = @s swPool_vz

scoreboard players operation @s swPool_var00 /= C_2000 swPool_C
scoreboard players operation @s swPool_var01 /= C_2000 swPool_C
scoreboard players operation @s swPool_var00 *= @s swPool_var00
scoreboard players operation @s swPool_var01 *= @s swPool_var01
scoreboard players operation @s swPool_var00 += @s swPool_var01
execute at @s run function pool:classes/physics/sqrt
scoreboard players operation @s swPool_var00 *= C_2000 swPool_C
scoreboard players operation @s swPool_v = @s swPool_var00

#tellraw @a [{"text":" V, "},{"score":{"objective":"swPool_v","name":"@s"}}]

#add rotation based on xz values

summon area_effect_cloud ^ ^ ^ {Tags:["swPool_vcomb"],Duration:1}
scoreboard players set @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] swPool_v 0
execute if entity @s[scores={swPool_vx=..0}] run tp @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] ~ ~ ~ 90 0
execute if entity @s[scores={swPool_vx=..0}] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] swPool_v -= @s swPool_vx
execute if entity @s[scores={swPool_vx=1..}] run tp @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] ~ ~ ~ -90 0
execute if entity @s[scores={swPool_vx=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] swPool_v += @s swPool_vx
#tellraw @a [{"text":" x, "},{"score":{"objective":"swPool_v","name":"@e[type=area_effect_cloud,tag=swPool_vcomb,limit=1]"}}]
execute as @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1,sort=nearest] at @s run function pool:classes/motion/move
scoreboard players set @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] swPool_v 0
execute if entity @s[scores={swPool_vz=..0}] as @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] at @s run tp @s ~ ~ ~ 180 0
execute if entity @s[scores={swPool_vz=..0}] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] swPool_v -= @s swPool_vz
execute if entity @s[scores={swPool_vz=1..}] as @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] at @s run tp @s ~ ~ ~ 0 0
execute if entity @s[scores={swPool_vz=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] swPool_v += @s swPool_vz
#tellraw @a [{"text":" z, "},{"score":{"objective":"swPool_v","name":"@e[type=area_effect_cloud,tag=swPool_vcomb,limit=1]"}}]
execute as @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1] at @s run function pool:classes/motion/move
#execute as @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1,sort=nearest] at @s run particle minecraft:dripping_lava ~ ~ ~
execute at @s run tp @s ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1,sort=nearest]
kill @e[type=area_effect_cloud,tag=swPool_vcomb,limit=1]