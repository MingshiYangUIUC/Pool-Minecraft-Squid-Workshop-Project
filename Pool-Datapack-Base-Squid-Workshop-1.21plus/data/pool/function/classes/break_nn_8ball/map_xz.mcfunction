# Xdir=0, z > x: swPool_vx (H) = -z, swPool_vz (V) = -x
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #tmpX swMath_V = @s swPool_vz
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #tmpX swMath_V *= #C_-1 swMath_C

execute if score #Xdir swMath_V matches 0 run scoreboard players operation #tmpZ swMath_V = @s swPool_vx
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #tmpZ swMath_V *= #C_-1 swMath_C

execute if score #Xdir swMath_V matches 0 run scoreboard players operation @s swPool_vx = #tmpX swMath_V
execute if score #Xdir swMath_V matches 0 run scoreboard players operation @s swPool_vz = #tmpZ swMath_V


# Xdir=1, z < x: swPool_vx (H) = -x, swPool_vz (V) = +z
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #tmpX swMath_V = @s swPool_vx
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #tmpX swMath_V *= #C_-1 swMath_C

execute if score #Xdir swMath_V matches 1 run scoreboard players operation #tmpZ swMath_V = @s swPool_vz

execute if score #Xdir swMath_V matches 1 run scoreboard players operation @s swPool_vx = #tmpX swMath_V
execute if score #Xdir swMath_V matches 1 run scoreboard players operation @s swPool_vz = #tmpZ swMath_V


#scoreboard players operation @s swPool_vx *= #C_-1 swMath_C
#scoreboard players operation @s swPool_vz *= #C_-1 swMath_C

#execute if entity @s[tag=swPool_01] run tellraw @a [{"text":"01x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_01] run tellraw @a [{"text":"01z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_02] run tellraw @a [{"text":"02x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_02] run tellraw @a [{"text":"02z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_03] run tellraw @a [{"text":"03x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_03] run tellraw @a [{"text":"03z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_04] run tellraw @a [{"text":"04x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_04] run tellraw @a [{"text":"04z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_05] run tellraw @a [{"text":"05x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_05] run tellraw @a [{"text":"05z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_06] run tellraw @a [{"text":"06x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_06] run tellraw @a [{"text":"06z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_07] run tellraw @a [{"text":"07x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_07] run tellraw @a [{"text":"07z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_08] run tellraw @a [{"text":"08x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_08] run tellraw @a [{"text":"08z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_09] run tellraw @a [{"text":"09x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_09] run tellraw @a [{"text":"09z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_10] run tellraw @a [{"text":"10x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_10] run tellraw @a [{"text":"10z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_11] run tellraw @a [{"text":"11x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_11] run tellraw @a [{"text":"11z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_12] run tellraw @a [{"text":"12x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_12] run tellraw @a [{"text":"12z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_13] run tellraw @a [{"text":"13x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_13] run tellraw @a [{"text":"13z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_14] run tellraw @a [{"text":"14x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_14] run tellraw @a [{"text":"14z "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#execute if entity @s[tag=swPool_15] run tellraw @a [{"text":"15x "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_15] run tellraw @a [{"text":"15z "},{"score":{"objective":"swPool_vz","name":"@s"}}]