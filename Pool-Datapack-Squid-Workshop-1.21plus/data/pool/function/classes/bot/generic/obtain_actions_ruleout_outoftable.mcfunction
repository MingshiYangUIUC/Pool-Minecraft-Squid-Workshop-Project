function pool:classes/master/read_tmppos
scoreboard players operation #dx swMath_V = @s swPool_tmpposx
scoreboard players operation #dz swMath_V = @s swPool_tmpposz
scoreboard players operation #dx swMath_V -= TABLE swPool_posx
scoreboard players operation #dz swMath_V -= TABLE swPool_posz
execute if score #dx swMath_V matches ..-1 run scoreboard players operation #dx swMath_V *= C_-1 swPool_C
execute if score #dz swMath_V matches ..-1 run scoreboard players operation #dz swMath_V *= C_-1 swPool_C

#tellraw @a [{"text":"dx, "},{"score":{"objective":"swMath_V","name":"#dx"}}]
#tellraw @a [{"text":"dz, "},{"score":{"objective":"swMath_V","name":"#dz"}}]

execute if score #dx swMath_V > TABLE swPool_sizex run kill @s
execute if score #dz swMath_V > TABLE swPool_sizez run kill @s
