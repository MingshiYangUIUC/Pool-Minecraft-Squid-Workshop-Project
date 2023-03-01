#tag @e[tag=swPool_cntr,limit=1,sort=nearest] add swPool_heading
tag @s add swPool_facepocket

execute at @s as @e[tag=swPool_cntr,limit=1,sort=nearest] at @s positioned ^ ^ ^0.2 run tp @e[tag=swPool_rhp1] ~ ~ ~ facing entity @e[tag=swPool_facepocket,limit=1]

scoreboard players operation dr swPool_Rotation = @s swPool_Rotation

execute store result score r2 swPool_Rotation run data get entity @e[tag=swPool_rhp1,limit=1] Rotation[0] 10000
scoreboard players operation r2 swPool_Rotation += C_1800000 swPool_C
scoreboard players operation r2 swPool_Rotation %= C_3600000 swPool_C
scoreboard players operation r2 swPool_Rotation -= @s swPool_Rotation

scoreboard players operation r2 swPool_Rotation %= C_3600000 swPool_C
scoreboard players operation r2 swPool_Rotation += C_1800000 swPool_C
scoreboard players operation r2 swPool_Rotation %= C_3600000 swPool_C
scoreboard players operation r2 swPool_Rotation -= C_1800000 swPool_C

execute if score r2 swPool_Rotation matches 300001.. run scoreboard players set r2 swPool_Rotation 300000
execute if score r2 swPool_Rotation matches ..-300001 run scoreboard players set r2 swPool_Rotation -300000
scoreboard players operation @s swPool_Rotation += r2 swPool_Rotation
#tellraw @a [{"text":" r, "},{"score":{"objective":"swPool_Rotation","name":"@s"}}]
#scoreboard players add @s swPool_v 1000000
function pool:classes/spin/change_of_state
#tag @s remove swPool_facepocket