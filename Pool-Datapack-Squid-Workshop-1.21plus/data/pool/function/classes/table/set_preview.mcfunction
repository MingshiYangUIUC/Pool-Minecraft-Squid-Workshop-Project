#function pool:classes/table/clear
tag @s remove swPool_success
tag @s add swPool_checking
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Flame particle: table dimensions. White particle: required space around the table."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"火焰粒子：球桌尺寸。白色粒子：球桌周围需要的空间。"}]

#rotation: +x: 0, +z: 2, -x: 4, -z: 6.

summon item_display ~ ~0.4 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["swPool_pooltable"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players operation #preview swPool_sizex = @s swPool_sizex
scoreboard players operation #preview swPool_sizez = @s swPool_sizez

scoreboard players operation @e[type=item_display,limit=1,sort=nearest] swPool_sizex = #preview swPool_sizex
scoreboard players operation @e[type=item_display,limit=1,sort=nearest] swPool_sizez = #preview swPool_sizez

scoreboard players set @s swPool_var05 10000
scoreboard players operation #preview swPool_sizex /= @s swPool_var05
scoreboard players operation #preview swPool_sizez /= @s swPool_var05
scoreboard players add #preview swPool_sizex 2
scoreboard players add #preview swPool_sizez 2
scoreboard players set @s swPool_var01 0
scoreboard players set @s swPool_var02 0
scoreboard players operation @s swPool_var01 -= #preview swPool_sizex
scoreboard players operation @s swPool_var02 -= #preview swPool_sizez


scoreboard players set @e[type=item_display,limit=1,sort=nearest] swPool_var05 10000
execute as @e[type=item_display,limit=1,sort=nearest] at @s store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[type=item_display,limit=1,sort=nearest] at @s store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[type=item_display,limit=1,sort=nearest] run scoreboard players operation @s swPool_posx /= @s swPool_var05
execute as @e[type=item_display,limit=1,sort=nearest] run scoreboard players operation @s swPool_posz /= @s swPool_var05
execute as @e[type=item_display,limit=1,sort=nearest] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s swPool_posx
execute as @e[type=item_display,limit=1,sort=nearest] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s swPool_posz

scoreboard players operation @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var01 = @s swPool_var01
scoreboard players operation @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var03 -= @s swPool_var01
scoreboard players operation @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var02 = @s swPool_var02
scoreboard players operation @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var04 -= @s swPool_var02

scoreboard players reset @s swPool_posx
scoreboard players reset @s swPool_posz
scoreboard players reset @s swPool_var05

execute if score @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var03 >= @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var04 run tag @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] add swPool_x
execute if score @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var03 < @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var04 run tag @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] add swPool_z

summon area_effect_cloud ~ ~ ~ {Tags:["swPool_placer"],Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}

execute as @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] at @s run function pool:classes/table/loop_preview

kill @e[tag=swPool_placer,type=area_effect_cloud,limit=1,sort=nearest]
kill @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest]


summon item_display ~ ~0.4 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["swPool_pooltable"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players operation #preview swPool_sizex = @s swPool_sizex
scoreboard players operation #preview swPool_sizez = @s swPool_sizez

scoreboard players operation @e[type=item_display,limit=1,sort=nearest] swPool_sizex = #preview swPool_sizex
scoreboard players operation @e[type=item_display,limit=1,sort=nearest] swPool_sizez = #preview swPool_sizez

scoreboard players set @s swPool_var05 10000
scoreboard players operation #preview swPool_sizex /= @s swPool_var05
scoreboard players operation #preview swPool_sizez /= @s swPool_var05
scoreboard players add #preview swPool_sizex 1
scoreboard players add #preview swPool_sizez 1
scoreboard players set @s swPool_var01 0
scoreboard players set @s swPool_var02 0
scoreboard players operation @s swPool_var01 -= #preview swPool_sizex
scoreboard players operation @s swPool_var02 -= #preview swPool_sizez


scoreboard players set @e[type=item_display,limit=1,sort=nearest] swPool_var05 10000
execute as @e[type=item_display,limit=1,sort=nearest] at @s store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[type=item_display,limit=1,sort=nearest] at @s store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[type=item_display,limit=1,sort=nearest] run scoreboard players operation @s swPool_posx /= @s swPool_var05
execute as @e[type=item_display,limit=1,sort=nearest] run scoreboard players operation @s swPool_posz /= @s swPool_var05
execute as @e[type=item_display,limit=1,sort=nearest] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s swPool_posx
execute as @e[type=item_display,limit=1,sort=nearest] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s swPool_posz

scoreboard players operation @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var01 = @s swPool_var01
scoreboard players operation @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var03 -= @s swPool_var01
scoreboard players operation @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var02 = @s swPool_var02
scoreboard players operation @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var04 -= @s swPool_var02

scoreboard players reset @s swPool_posx
scoreboard players reset @s swPool_posz
scoreboard players reset @s swPool_var05

execute if score @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var03 >= @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var04 run tag @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] add swPool_x
execute if score @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var03 < @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var04 run tag @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] add swPool_z

summon area_effect_cloud ~ ~ ~ {Tags:["swPool_placer","swPool_inner_rim"],Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}

execute as @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] at @s run function pool:classes/table/loop_preview

kill @e[tag=swPool_placer,type=area_effect_cloud,limit=1,sort=nearest]
kill @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest]

execute if entity @s[tag=swPool_checking] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"空间检测成功！ ","color":"green"},{"underlined":true,"text":"<现在放置>","color":"aqua","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 200"}}]
execute if entity @s[tag=swPool_checking] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Empty space detection Passed! ","color":"green"},{"underlined":true,"text":"<Set Now>","color":"aqua","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 200"}}]

tag @s remove swPool_checking