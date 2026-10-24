scoreboard players operation #direct_dx swMath_V = #self swPool_vx
scoreboard players operation #direct_dz swMath_V = #self swPool_vz
scoreboard players operation #direct_dx swMath_V /= #C_10000 swMath_C
scoreboard players operation #direct_dz swMath_V /= #C_10000 swMath_C
scoreboard players operation @s swPool_tmpposx += #direct_dx swMath_V
scoreboard players operation @s swPool_tmpposz += #direct_dz swMath_V

#all_balls swPool_tmpposy

execute store result storage minecraft:swpool_tmp pos[0] double 0.0001 run scoreboard players get @s swPool_tmpposx
execute store result storage minecraft:swpool_tmp pos[1] double 0.0001 run scoreboard players get #all_balls swPool_tmpposy
execute store result storage minecraft:swpool_tmp pos[2] double 0.0001 run scoreboard players get @s swPool_tmpposz

data modify entity @s Pos set from storage minecraft:swpool_tmp pos

#execute store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_tmpposx
#execute store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_tmpposz

# no truncate
scoreboard players set #self swPool_vx 0
scoreboard players set #self swPool_vz 0
