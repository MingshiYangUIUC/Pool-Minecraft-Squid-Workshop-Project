#tags are c1 and c2


#find relative velocity in components swPool_vrx and swPool_vrz
execute at @s[scores={swPool_v=1..}] run function pool:classes/physics/vseparate
execute as @e[tag=swPool_c2,limit=1,scores={swPool_v=1..}] at @s run function pool:classes/physics/vseparate
scoreboard players operation @s swPool_vrx = @s swPool_vx
scoreboard players operation @s swPool_vrz = @s swPool_vz
scoreboard players operation @s swPool_vrx -= @e[tag=swPool_c2,limit=1,scores={swPool_v=1..}] swPool_vx
scoreboard players operation @s swPool_vrz -= @e[tag=swPool_c2,limit=1,scores={swPool_v=1..}] swPool_vz

scoreboard players set #C_adapt swPool_C 2000
scoreboard players operation #vIn swMath_V = @s swPool_vrx
scoreboard players operation #vz swMath_V = @s swPool_vrz
execute unless score #vIn swMath_V matches -50000000..50000000 run scoreboard players set #C_adapt swPool_C 10000
execute unless score #vz swMath_V matches -50000000..50000000 run scoreboard players set #C_adapt swPool_C 10000
scoreboard players operation #vIn swMath_V /= #C_adapt swPool_C
scoreboard players operation #vz swMath_V /= #C_adapt swPool_C
scoreboard players operation #vIn swMath_V *= #vIn swMath_V
scoreboard players operation #vz swMath_V *= #vz swMath_V
scoreboard players operation #vIn swMath_V += #vz swMath_V
function math:classes/core/operations/sqrt
scoreboard players operation #vOut swMath_V *= #C_adapt swPool_C
scoreboard players operation @s swPool_vr = #vOut swMath_V

#get swPool_hittime
scoreboard players operation @s swPool_var00 = @s swPool_vr
scoreboard players operation @s swPool_var00 /= @s swPool_drel
scoreboard players set @s swPool_var04 100000000
scoreboard players operation @s swPool_var04 /= @s swPool_var00
scoreboard players operation @s swPool_hittime = @s swPool_var04
scoreboard players operation @e[tag=swPool_c2,limit=1] swPool_hittime = @s swPool_hittime

#tellraw @a [{"text":" Vr, "},{"score":{"objective":"swPool_vr","name":"@s"}}]
#tellraw @a [{"text":" Drel, "},{"score":{"objective":"swPool_drel","name":"@s"}}]
#execute if entity @s[scores={swPool_hittime=0..10000}] run tellraw @a [{"text":" hittime, "},{"score":{"objective":"swPool_hittime","name":"@s"}}]

#join if swPool_hittime < 10000 (1tick), OMIT this step if breaking balls (adjacent 2)
#not count bk balls
#execute if entity @s[tag=swPool_bk] at @s run tag @e[tag=swPool_bk,distance=0.25..0.261] add swPool_counting
#execute if entity @s[tag=swPool_bk] at @s if entity @e[tag=swPool_counting,distance=0.25..0.261] run scoreboard players set @s swPool_count 1
#execute if entity @s[tag=swPool_bk] at @s if entity @e[tag=swPool_counting,distance=0.25..0.261] run tag @e[tag=swPool_counting,limit=1,distance=0.25..0.261] remove swPool_counting
#execute if entity @s[tag=swPool_bk] at @s if entity @e[tag=swPool_counting,distance=0.25..0.261] run scoreboard players add @s swPool_count 1
#execute if entity @s[tag=swPool_bk] at @s if entity @e[tag=swPool_counting,distance=0.25..0.261] run tag @e[tag=swPool_counting,limit=1,distance=0.25..0.261] remove swPool_counting
#tag @s[tag=swPool_bk,scores={swPool_count=2..}] add swPool_packed

execute if score @s swPool_hittime < MinTime swPool_hittime run function pool:classes/collision/record


#execute if entity @s[scores={swPool_hittime=0..10000}] run scoreboard players set @s swPool_v 0
#execute if entity @s[scores={swPool_hittime=0..10000}] run scoreboard players set @e[tag=swPool_c2,limit=1] swPool_v 0
#and stops them, but componets are kept for calculation



#remove tags
tag @s remove swPool_c1
tag @e[tag=swPool_c2,limit=1] remove swPool_c2