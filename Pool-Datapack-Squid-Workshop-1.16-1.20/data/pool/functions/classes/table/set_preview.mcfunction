#function pool:classes/table/clear
tag @s remove swPool_success
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Wait..."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请稍候..."}]

#rotation: +x: 0, +z: 2, -x: 4, -z: 6.

summon armor_stand ~ ~0.4 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["swPool_pooltable"]}

scoreboard players operation #preview swPool_sizex = @s swPool_sizex
scoreboard players operation #preview swPool_sizez = @s swPool_sizez

scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest] swPool_sizex = #preview swPool_sizex
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest] swPool_sizez = #preview swPool_sizez

scoreboard players set @s swPool_var05 10000
scoreboard players operation #preview swPool_sizex /= @s swPool_var05
scoreboard players operation #preview swPool_sizez /= @s swPool_var05
scoreboard players add #preview swPool_sizex 1
scoreboard players add #preview swPool_sizez 1
scoreboard players set @s swPool_var01 0
scoreboard players set @s swPool_var02 0
scoreboard players operation @s swPool_var01 -= #preview swPool_sizex
scoreboard players operation @s swPool_var02 -= #preview swPool_sizez


scoreboard players set @e[type=armor_stand,limit=1,sort=nearest] swPool_var05 10000
execute as @e[type=armor_stand,limit=1,sort=nearest] at @s store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[type=armor_stand,limit=1,sort=nearest] at @s store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[type=armor_stand,limit=1,sort=nearest] run scoreboard players operation @s swPool_posx /= @s swPool_var05
execute as @e[type=armor_stand,limit=1,sort=nearest] run scoreboard players operation @s swPool_posz /= @s swPool_var05
execute as @e[type=armor_stand,limit=1,sort=nearest] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s swPool_posx
execute as @e[type=armor_stand,limit=1,sort=nearest] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s swPool_posz

scoreboard players operation @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] swPool_var01 = @s swPool_var01
scoreboard players operation @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] swPool_var03 -= @s swPool_var01
scoreboard players operation @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] swPool_var02 = @s swPool_var02
scoreboard players operation @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] swPool_var04 -= @s swPool_var02

scoreboard players reset @s swPool_posx
scoreboard players reset @s swPool_posz
scoreboard players reset @s swPool_var05

execute if score @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] swPool_var03 >= @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] swPool_var04 run tag @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] add swPool_x
execute if score @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] swPool_var03 < @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] swPool_var04 run tag @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest] add swPool_z

summon area_effect_cloud ~ ~ ~ {Tags:["swPool_placer"]}

execute as @e[type=armor_stand,tag=swPool_pooltable,limit=1,sort=nearest] at @s run function pool:classes/table/loop_preview

kill @e[tag=swPool_placer,type=area_effect_cloud,limit=1,sort=nearest]
kill @e[tag=swPool_pooltable,type=armor_stand,limit=1,sort=nearest]
