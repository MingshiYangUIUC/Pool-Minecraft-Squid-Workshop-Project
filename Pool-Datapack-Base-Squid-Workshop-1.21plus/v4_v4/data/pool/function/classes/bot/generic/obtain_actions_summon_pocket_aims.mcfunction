summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_aim_pkt"],Duration:1200}
scoreboard players operation @e[tag=swPool_aim_pkt,limit=1,sort=nearest] swPool_pktid = pktid swPool_pktid
scoreboard players add pktid swPool_pktid 1

scoreboard players operation aim_pkt swPool_posx = TABLE swPool_posx
scoreboard players operation aim_pkt swPool_posz = TABLE swPool_posz
scoreboard players operation aim_pkt swPool_posx += @s swPool_sizex
scoreboard players operation aim_pkt swPool_posz += @s swPool_sizez

#tellraw @a [{"text":"x, "},{"score":{"objective":"swPool_posx","name":"aim_pkt"}}]
#tellraw @a [{"text":"z, "},{"score":{"objective":"swPool_posz","name":"aim_pkt"}}]

execute as @e[tag=swPool_aim_pkt,limit=1,sort=nearest] at @s store result entity @s Pos[0] double 0.0001 run scoreboard players get aim_pkt swPool_posx
execute as @e[tag=swPool_aim_pkt,limit=1,sort=nearest] at @s store result entity @s Pos[2] double 0.0001 run scoreboard players get aim_pkt swPool_posz

data modify entity @s Pos[1] set from entity @e[tag=swPool_cue,limit=1] Pos[1]

# record tmppos like other balls
execute as @e[tag=swPool_aim_pkt,limit=1,sort=nearest] run function pool:classes/master/read_tmppos

# record size
scoreboard players operation @e[tag=swPool_aim_pkt,limit=1,sort=nearest] swPool_sizex = @s swPool_sizex
scoreboard players operation @e[tag=swPool_aim_pkt,limit=1,sort=nearest] swPool_sizez = @s swPool_sizez

# debug
#execute at @e[tag=swPool_aim_pkt,limit=1,sort=nearest] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1 force

#tellraw @a [{"text":"pktid0, "},{"score":{"objective":"swPool_pktid","name":"@e[tag=swPool_aim_pkt,limit=1,sort=nearest]"}}]
