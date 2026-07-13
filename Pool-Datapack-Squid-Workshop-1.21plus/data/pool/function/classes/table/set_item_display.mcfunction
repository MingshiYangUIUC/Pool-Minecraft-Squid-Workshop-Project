function pool:classes/table/clear
tag @s remove swPool_success
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Wait..."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请稍候..."}]

#rotation: +x: 0, +z: 2, -x: 4, -z: 6.

summon item_display ~ ~0.4 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["swPool_pooltable"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
scoreboard players operation @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] swPool_sizex = @s swPool_sizex
scoreboard players operation @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] swPool_sizez = @s swPool_sizez

# find the scale by s #clothscale
scoreboard players set old_r swMath_V 1250
scoreboard players set #clothscale swMath_V 10000
scoreboard players operation #clothscale swMath_V *= C_r swPool_C
scoreboard players operation #clothscale swMath_V /= old_r swMath_V

# check if selected 1:2
# map to integer size
scoreboard players operation table1 swMath_V = @s swPool_sizex
scoreboard players operation table2 swMath_V = @s swPool_sizez
scoreboard players add table1 swMath_V 6250
scoreboard players add table2 swMath_V 6250
# multiply smaller one
scoreboard players operation table1t swMath_V = table1 swMath_V
execute if score table1 swMath_V < table2 swMath_V run scoreboard players operation table1t swMath_V *= #C_2 swMath_C
execute unless score table1 swMath_V < table2 swMath_V run scoreboard players operation table2 swMath_V *= #C_2 swMath_C
scoreboard players operation table1 swMath_V = table1t swMath_V
# check if they are similar
scoreboard players operation table1 swMath_V -= table2 swMath_V
scoreboard players set #2x1table swMath_V 0
execute if score table1 swMath_V matches -100..100 run scoreboard players set #2x1table swMath_V 1
execute unless data storage minecraft:swpool table1x2 run scoreboard players set #2x1table swMath_V 0
#execute if score #2x1table swMath_V matches 1 run say 2x1 table

scoreboard players set @s swPool_var05 10000
scoreboard players operation @s swPool_sizex /= @s swPool_var05
scoreboard players operation @s swPool_sizez /= @s swPool_var05
scoreboard players add @s swPool_sizex 1
scoreboard players add @s swPool_sizez 1
scoreboard players set @s swPool_var01 0
scoreboard players set @s swPool_var02 0
scoreboard players operation @s swPool_var01 -= @s swPool_sizex
scoreboard players operation @s swPool_var02 -= @s swPool_sizez


scoreboard players set @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] swPool_var05 10000
execute as @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] at @s store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] at @s store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] run scoreboard players operation @s swPool_posx /= @s swPool_var05
execute as @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] run scoreboard players operation @s swPool_posz /= @s swPool_var05
execute as @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s swPool_posx
execute as @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s swPool_posz

scoreboard players operation @e[tag=swPool_pooltable,tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var01 = @s swPool_var01
scoreboard players operation @e[tag=swPool_pooltable,tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var03 -= @s swPool_var01
scoreboard players operation @e[tag=swPool_pooltable,tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var02 = @s swPool_var02
scoreboard players operation @e[tag=swPool_pooltable,tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] swPool_var04 -= @s swPool_var02

scoreboard players reset @s swPool_posx
scoreboard players reset @s swPool_posz
scoreboard players reset @s swPool_var05

scoreboard players set #tablexlong swMath_V 0
execute if score @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] swPool_var03 >= @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] swPool_var04 run scoreboard players set #tablexlong swMath_V 1
execute if score #tablexlong swMath_V matches 1 run tag @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] add swPool_x
execute unless score #tablexlong swMath_V matches 1 run tag @e[tag=swPool_pooltable,type=item_display,limit=1,sort=nearest] add swPool_z

summon area_effect_cloud ~ ~ ~ {Tags:["swPool_placer"],Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}

execute as @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] at @s run function pool:classes/table/loop_item_display

# if there is no side rim, SUMMON at pool table's -1 -1 to 1 1
scoreboard players set #nosidecushion swMath_V 1
execute if score @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] swPool_sizex matches 13750.. if score @e[type=item_display,tag=swPool_pooltable,limit=1,sort=nearest] swPool_sizez matches 13750.. run scoreboard players set #nosidecushion swMath_V 0
#execute if score #nosidecushion swMath_V matches 1 run say adding
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_z] at @s run summon item_display ~-0.5 ~-0.4 ~-1 {Tags:["swPool_new","swPool_cloth","swPool_nxside"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_z] at @s run summon item_display ~0.5 ~-0.4 ~-1 {Tags:["swPool_new","swPool_cloth","swPool_pxside"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_z] at @s run summon item_display ~-0.5 ~-0.4 ~1 {Tags:["swPool_new","swPool_cloth","swPool_nxside"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_z] at @s run summon item_display ~0.5 ~-0.4 ~1 {Tags:["swPool_new","swPool_cloth","swPool_pxside"]}

execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_x] at @s run summon item_display ~-1 ~-0.4 ~-0.5 {Tags:["swPool_new","swPool_cloth","swPool_nzside"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_x] at @s run summon item_display ~1 ~-0.4 ~-0.5 {Tags:["swPool_new","swPool_cloth","swPool_nzside"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_x] at @s run summon item_display ~-1 ~-0.4 ~0.5 {Tags:["swPool_new","swPool_cloth","swPool_pzside"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_x] at @s run summon item_display ~1 ~-0.4 ~0.5 {Tags:["swPool_new","swPool_cloth","swPool_pzside"]}

# add 2 at other side
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_z] at @s run summon item_display ~ ~-0.4 ~-1.5 {Tags:["swPool_new","swPool_cloth","swPool_nzside"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_z] at @s run summon item_display ~ ~-0.4 ~1.5 {Tags:["swPool_new","swPool_cloth","swPool_pzside"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_x] at @s run summon item_display ~-1.5 ~-0.4 ~ {Tags:["swPool_new","swPool_cloth","swPool_nxside"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_x] at @s run summon item_display ~1.5 ~-0.4 ~ {Tags:["swPool_new","swPool_cloth","swPool_pxside"]}

# add 3 plain cloth
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_z] at @s run summon item_display ~ ~-0.4 ~-1 {Tags:["swPool_new","swPool_cloth"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_z] at @s run summon item_display ~ ~-0.4 ~ {Tags:["swPool_new","swPool_cloth"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_z] at @s run summon item_display ~ ~-0.4 ~1 {Tags:["swPool_new","swPool_cloth"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_x] at @s run summon item_display ~-1 ~-0.4 ~ {Tags:["swPool_new","swPool_cloth"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_x] at @s run summon item_display ~ ~-0.4 ~ {Tags:["swPool_new","swPool_cloth"]}
execute if score #nosidecushion swMath_V matches 1 as @e[tag=swPool_pooltable,tag=swPool_x] at @s run summon item_display ~1 ~-0.4 ~ {Tags:["swPool_new","swPool_cloth"]}


scoreboard players set @e[tag=swPool_pxside] swPool_rot 0
scoreboard players set @e[tag=swPool_nxside] swPool_rot 4
scoreboard players set @e[tag=swPool_pzside] swPool_rot 2
scoreboard players set @e[tag=swPool_nzside] swPool_rot 6
scoreboard players set @e[tag=swPool_pxside,tag=swPool_nzside] swPool_rot 0
scoreboard players set @e[tag=swPool_pxside,tag=swPool_pzside] swPool_rot 2
scoreboard players set @e[tag=swPool_nxside,tag=swPool_pzside] swPool_rot 4
scoreboard players set @e[tag=swPool_nxside,tag=swPool_nzside] swPool_rot 6
scoreboard players set #angle swMath_V 45
execute as @e[tag=swPool_cloth] run scoreboard players operation @s swPool_rot *= #angle swMath_V
execute as @e[tag=swPool_cloth] run scoreboard players add @s swPool_rot 90
execute as @e[tag=swPool_cloth] store result entity @s Rotation[0] float 1 run scoreboard players get @s swPool_rot
tag @e[tag=swPool_pxside] add swPool_side
tag @e[tag=swPool_nxside] add swPool_side
tag @e[tag=swPool_pzside] add swPool_side
tag @e[tag=swPool_nzside] add swPool_side
tag @e[tag=swPool_pxside,tag=swPool_nzside] add swPool_corner
tag @e[tag=swPool_pxside,tag=swPool_pzside] add swPool_corner
tag @e[tag=swPool_nxside,tag=swPool_pzside] add swPool_corner
tag @e[tag=swPool_nxside,tag=swPool_nzside] add swPool_corner



execute if score C_tcc swPool_C matches 1 as @e[tag=swPool_cloth,tag=!swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_table_green"}}}
execute if score C_tcc swPool_C matches 1 as @e[tag=swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cushion_green"}}}
execute if score C_tcc swPool_C matches 1 as @e[tag=swPool_potl] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_left_green"}}}
execute if score C_tcc swPool_C matches 1 as @e[tag=swPool_potr] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_right_green"}}}
execute if score C_tcc swPool_C matches 1 as @e[tag=swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cornerpot_green"}}}

execute if score C_tcc swPool_C matches 2 as @e[tag=swPool_cloth,tag=!swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_table_blue"}}}
execute if score C_tcc swPool_C matches 2 as @e[tag=swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cushion_blue"}}}
execute if score C_tcc swPool_C matches 2 as @e[tag=swPool_potl] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_left_blue"}}}
execute if score C_tcc swPool_C matches 2 as @e[tag=swPool_potr] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_right_blue"}}}
execute if score C_tcc swPool_C matches 2 as @e[tag=swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cornerpot_blue"}}}

execute if score C_tcc swPool_C matches 3 as @e[tag=swPool_cloth,tag=!swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_table_red"}}}
execute if score C_tcc swPool_C matches 3 as @e[tag=swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cushion_red"}}}
execute if score C_tcc swPool_C matches 3 as @e[tag=swPool_potl] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_left_red"}}}
execute if score C_tcc swPool_C matches 3 as @e[tag=swPool_potr] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_right_red"}}}
execute if score C_tcc swPool_C matches 3 as @e[tag=swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cornerpot_red"}}}

execute if score C_tcc swPool_C matches 4 as @e[tag=swPool_cloth,tag=!swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_table_custom_0"}}}
execute if score C_tcc swPool_C matches 4 as @e[tag=swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cushion_custom_0"}}}
execute if score C_tcc swPool_C matches 4 as @e[tag=swPool_potl] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_left_custom_0"}}}
execute if score C_tcc swPool_C matches 4 as @e[tag=swPool_potr] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_right_custom_0"}}}
execute if score C_tcc swPool_C matches 4 as @e[tag=swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cornerpot_custom_0"}}}

execute if score C_tcc swPool_C matches 5 as @e[tag=swPool_cloth,tag=!swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_table_custom_1"}}}
execute if score C_tcc swPool_C matches 5 as @e[tag=swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cushion_custom_1"}}}
execute if score C_tcc swPool_C matches 5 as @e[tag=swPool_potl] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_left_custom_1"}}}
execute if score C_tcc swPool_C matches 5 as @e[tag=swPool_potr] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_right_custom_1"}}}
execute if score C_tcc swPool_C matches 5 as @e[tag=swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cornerpot_custom_1"}}}

execute if score C_tcc swPool_C matches 6 as @e[tag=swPool_cloth,tag=!swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_table_custom_2"}}}
execute if score C_tcc swPool_C matches 6 as @e[tag=swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cushion_custom_2"}}}
execute if score C_tcc swPool_C matches 6 as @e[tag=swPool_potl] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_left_custom_2"}}}
execute if score C_tcc swPool_C matches 6 as @e[tag=swPool_potr] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_sidepot_right_custom_2"}}}
execute if score C_tcc swPool_C matches 6 as @e[tag=swPool_corner] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:item_model":"swpool:render_cloth_pure_cornerpot_custom_2"}}}


# Adjust table dims
scoreboard players operation TABLE swPool_sizex = @e[tag=swPool_pooltable,limit=1] swPool_sizex
scoreboard players operation TABLE swPool_sizez = @e[tag=swPool_pooltable,limit=1] swPool_sizez

scoreboard players operation TABLE_1250 swPool_sizex = TABLE swPool_sizex
scoreboard players operation TABLE_1250 swPool_sizez = TABLE swPool_sizez

# shift more, original: scale0 / 2 - r0
# + r0
scoreboard players add TABLE swPool_sizex 1250
# + scale0=10000 / 2
scoreboard players add TABLE swPool_sizex 5000
# - scale/2
scoreboard players operation #clothscale_table swMath_V = #clothscale swMath_V
scoreboard players operation #clothscale_table swMath_V /= #C_2 swMath_C
scoreboard players operation TABLE swPool_sizex -= #clothscale_table swMath_V
# - r
scoreboard players operation TABLE swPool_sizex -= C_r swPool_C

# shift more, original: scale0 / 2 - r0
# + r0
scoreboard players add TABLE swPool_sizez 1250
# + scale0=10000 / 2
scoreboard players add TABLE swPool_sizez 5000
# - scale/2
scoreboard players operation TABLE swPool_sizez -= #clothscale_table swMath_V
# - r
scoreboard players operation TABLE swPool_sizez -= C_r swPool_C

execute as @e[tag=swPool_pooltable] store result score TABLE swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_pooltable] store result score TABLE swPool_posz run data get entity @s Pos[2] 10000

# adjust table dims to 2:1 if needed
#tellraw @a [{"text":"X, "},{"score":{"objective":"swPool_sizex","name":"TABLE"}}]
#tellraw @a [{"text":"Z, "},{"score":{"objective":"swPool_sizez","name":"TABLE"}}]
scoreboard players set TABLE_diff_l swMath_V 0
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE2 swPool_sizex = TABLE swPool_sizez
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE2 swPool_sizex *= #C_2 swMath_C
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE_diff_l swMath_V = TABLE swPool_sizex
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE_diff_l swMath_V -= TABLE2 swPool_sizex
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE swPool_sizex = TABLE2 swPool_sizex
execute if score #2x1table swMath_V matches 1 unless score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE2 swPool_sizez = TABLE swPool_sizex
execute if score #2x1table swMath_V matches 1 unless score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE2 swPool_sizez *= #C_2 swMath_C
execute if score #2x1table swMath_V matches 1 unless score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE_diff_l swMath_V = TABLE swPool_sizez
execute if score #2x1table swMath_V matches 1 unless score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE_diff_l swMath_V -= TABLE2 swPool_sizez
execute if score #2x1table swMath_V matches 1 unless score #tablexlong swMath_V matches 1 run scoreboard players operation TABLE swPool_sizez = TABLE2 swPool_sizez
#tellraw @a [{"text":"X, "},{"score":{"objective":"swPool_sizex","name":"TABLE"}}]
#tellraw @a [{"text":"Z, "},{"score":{"objective":"swPool_sizez","name":"TABLE"}}]
# will use TABLE_diff_l to adjust location of long edge

# modify to head display (-8)
execute as @e[tag=swPool_cloth] run data merge entity @s {item_display:"head"}

# raise by 1
execute as @e[tag=swPool_cloth] run data merge entity @s {transformation:{translation:[0.0f,1.0f,0.0f]}}

# inner amplification scale = 3-2s = (1.5-s)*2
scoreboard players set #clothscale_amp swMath_V 15000
# if small table: 2 - 2 s
execute if score #nosidecushion swMath_V matches 1 run scoreboard players set #clothscale_amp swMath_V 10000
scoreboard players operation #clothscale_amp swMath_V -= #clothscale swMath_V
scoreboard players operation #clothscale_amp swMath_V *= #C_2 swMath_C


# inner amplification scale = 3-2s -l = (1.5-s)*2 +l
scoreboard players set #clothscale_amp2x1 swMath_V 15000
# # if small table: 2 - 2 s +l
execute if score #nosidecushion swMath_V matches 1 run scoreboard players set #clothscale_amp2x1 swMath_V 10000
scoreboard players operation #clothscale_amp2x1 swMath_V -= #clothscale swMath_V
scoreboard players operation #clothscale_amp2x1 swMath_V *= #C_2 swMath_C
scoreboard players operation #clothscale_amp2x1 swMath_V -= TABLE_diff_l swMath_V
# also l/2
scoreboard players operation TABLE_diff_l2 swMath_V = TABLE_diff_l swMath_V
scoreboard players operation TABLE_diff_l2 swMath_V /= #C_2 swMath_C

# change position outward by 0.5* (1-scale)
scoreboard players set #clothscale_out swMath_V 10000
scoreboard players operation #clothscale_out swMath_V -= #clothscale swMath_V
scoreboard players operation #clothscale_out swMath_V /= #C_2 swMath_C

execute as @e[tag=swPool_cloth,tag=swPool_nxside] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_cloth,tag=swPool_nxside] run scoreboard players operation @s swPool_posx -= #clothscale_out swMath_V
execute if score #tablexlong swMath_V matches 1 as @e[tag=swPool_cloth,tag=swPool_nxside] run scoreboard players operation @s swPool_posx += TABLE_diff_l swMath_V
execute as @e[tag=swPool_cloth,tag=swPool_nxside] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute as @e[tag=swPool_cloth,tag=swPool_pxside] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_cloth,tag=swPool_pxside] run scoreboard players operation @s swPool_posx += #clothscale_out swMath_V
execute if score #tablexlong swMath_V matches 1 as @e[tag=swPool_cloth,tag=swPool_pxside] run scoreboard players operation @s swPool_posx -= TABLE_diff_l swMath_V
execute as @e[tag=swPool_cloth,tag=swPool_pxside] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute as @e[tag=swPool_cloth,tag=swPool_nzside] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_cloth,tag=swPool_nzside] run scoreboard players operation @s swPool_posz -= #clothscale_out swMath_V
execute if score #tablexlong swMath_V matches 0 as @e[tag=swPool_cloth,tag=swPool_nzside] run scoreboard players operation @s swPool_posz += TABLE_diff_l swMath_V
execute as @e[tag=swPool_cloth,tag=swPool_nzside] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

execute as @e[tag=swPool_cloth,tag=swPool_pzside] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_cloth,tag=swPool_pzside] run scoreboard players operation @s swPool_posz += #clothscale_out swMath_V
execute if score #tablexlong swMath_V matches 0 as @e[tag=swPool_cloth,tag=swPool_pzside] run scoreboard players operation @s swPool_posz -= TABLE_diff_l swMath_V
execute as @e[tag=swPool_cloth,tag=swPool_pzside] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

# change nearest cushion to long end cushions: move away by l/2

# side next to corner
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_nxside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_nxside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posx += TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_nxside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_pxside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_pxside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posx -= TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_pxside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_nzside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_nzside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posz += TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_nzside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_pzside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_pzside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posz -= TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_pzside,tag=swPool_corner] at @s as @e[tag=swPool_cloth,tag=swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz


# table center cloth (big)
execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_nxside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_nxside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posx += TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_nxside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_pxside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_pxside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posx -= TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_pxside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_nzside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_nzside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posz += TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_nzside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_pzside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_pzside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posz -= TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 unless score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_pzside] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

# small, only move once
execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_nxside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_nxside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posx += TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_nxside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_pxside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_pxside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posx -= TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_pxside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_nzside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_nzside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posz += TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_nzside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_pzside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_pzside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] run scoreboard players operation @s swPool_posz -= TABLE_diff_l2 swMath_V
execute if score #2x1table swMath_V matches 1 if score #nosidecushion swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_pzside,limit=1] at @s as @e[tag=swPool_cloth,tag=!swPool_side,sort=nearest,limit=1,distance=0.001..] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

# change side pot nxl: +z, nxr: -z, pxl: -z, pxr: +z
execute as @e[tag=swPool_potl,tag=swPool_nxside] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_potl,tag=swPool_nxside] run scoreboard players operation @s swPool_posz += #clothscale_out swMath_V
execute as @e[tag=swPool_potl,tag=swPool_nxside] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

execute as @e[tag=swPool_potl,tag=swPool_pxside] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_potl,tag=swPool_pxside] run scoreboard players operation @s swPool_posz -= #clothscale_out swMath_V
execute as @e[tag=swPool_potl,tag=swPool_pxside] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

execute as @e[tag=swPool_potr,tag=swPool_nxside] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_potr,tag=swPool_nxside] run scoreboard players operation @s swPool_posz -= #clothscale_out swMath_V
execute as @e[tag=swPool_potr,tag=swPool_nxside] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

execute as @e[tag=swPool_potr,tag=swPool_pxside] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_potr,tag=swPool_pxside] run scoreboard players operation @s swPool_posz += #clothscale_out swMath_V
execute as @e[tag=swPool_potr,tag=swPool_pxside] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz

# change side pot z side
execute as @e[tag=swPool_potl,tag=swPool_nzside] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_potl,tag=swPool_nzside] run scoreboard players operation @s swPool_posx -= #clothscale_out swMath_V
execute as @e[tag=swPool_potl,tag=swPool_nzside] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute as @e[tag=swPool_potl,tag=swPool_pzside] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_potl,tag=swPool_pzside] run scoreboard players operation @s swPool_posx += #clothscale_out swMath_V
execute as @e[tag=swPool_potl,tag=swPool_pzside] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute as @e[tag=swPool_potr,tag=swPool_nzside] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_potr,tag=swPool_nzside] run scoreboard players operation @s swPool_posx += #clothscale_out swMath_V
execute as @e[tag=swPool_potr,tag=swPool_nzside] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

execute as @e[tag=swPool_potr,tag=swPool_pzside] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_potr,tag=swPool_pzside] run scoreboard players operation @s swPool_posx -= #clothscale_out swMath_V
execute as @e[tag=swPool_potr,tag=swPool_pzside] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx

# add a tiny bit of translation h += h (1-s)
scoreboard players set #cloth_y swMath_V 13
scoreboard players set #cloth_y2 swMath_V 10000
scoreboard players operation #cloth_y2 swMath_V -= #clothscale swMath_V

scoreboard players operation #cloth_y swMath_V *= #cloth_y2 swMath_V
scoreboard players operation #cloth_y swMath_V /= #C_10000 swMath_C

execute as @e[tag=swPool_cloth] store result score @s swPool_posy run data get entity @s transformation.translation[1] 10000
execute as @e[tag=swPool_cloth] run scoreboard players operation @s swPool_posy += #cloth_y swMath_V
execute as @e[tag=swPool_cloth] store result entity @s transformation.translation[1] float 0.0001 run scoreboard players get @s swPool_posy

#clothscale
execute as @e[tag=swPool_cloth] store result entity @s transformation.scale[0] float 0.0001 run scoreboard players get #clothscale swMath_V
execute as @e[tag=swPool_cloth] store result entity @s transformation.scale[1] float 0.0001 run scoreboard players get #clothscale swMath_V
execute as @e[tag=swPool_cloth] store result entity @s transformation.scale[2] float 0.0001 run scoreboard players get #clothscale swMath_V

# amplify inner cloth except y
execute as @e[tag=swPool_cloth,tag=!swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] store result entity @s transformation.scale[0] float 0.0001 run scoreboard players get #clothscale_amp swMath_V
execute as @e[tag=swPool_cloth,tag=!swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] store result entity @s transformation.scale[1] float 0.0001 run scoreboard players get #clothscale swMath_V
execute as @e[tag=swPool_cloth,tag=!swPool_side,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] store result entity @s transformation.scale[2] float 0.0001 run scoreboard players get #clothscale_amp swMath_V

# amplify xzside cloth Rotated, so always first item of scale
execute as @e[tag=swPool_cloth,tag=swPool_side,tag=!swPool_nzside,tag=!swPool_pzside,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] store result entity @s transformation.scale[0] float 0.0001 run scoreboard players get #clothscale_amp swMath_V
execute as @e[tag=swPool_cloth,tag=swPool_side,tag=!swPool_nxside,tag=!swPool_pxside,tag=!swPool_potl,tag=!swPool_potr,tag=!swPool_corner] store result entity @s transformation.scale[0] float 0.0001 run scoreboard players get #clothscale_amp swMath_V

# adjust side if 2x1 Rotated, so always first item of scale
# for each corner, set nearest not_self side to 2x1 scale
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 1 as @e[tag=swPool_corner] at @s store result entity @e[tag=swPool_cloth,tag=swPool_side,tag=!swPool_pxside,tag=!swPool_nxside,sort=nearest,limit=1,distance=0.001..] transformation.scale[0] float 0.0001 run scoreboard players get #clothscale_amp2x1 swMath_V
execute if score #2x1table swMath_V matches 1 if score #tablexlong swMath_V matches 0 as @e[tag=swPool_corner] at @s store result entity @e[tag=swPool_cloth,tag=swPool_side,tag=!swPool_pzside,tag=!swPool_nzside,sort=nearest,limit=1,distance=0.001..] transformation.scale[0] float 0.0001 run scoreboard players get #clothscale_amp2x1 swMath_V


# summon fake ball now, because location already changed, just scale the relative position
#summon fake balls!!!

# corner edge and center: scale these numbers based on r
scoreboard players set #corner1 swMath_V 3700
scoreboard players operation #corner1 swMath_V *= C_r swPool_C
scoreboard players operation #corner1 swMath_V /= old_r swMath_V

scoreboard players set #corner2 swMath_V 4400
scoreboard players operation #corner2 swMath_V *= C_r swPool_C
scoreboard players operation #corner2 swMath_V /= old_r swMath_V

scoreboard players set #corner_cntr swMath_V 2350
scoreboard players operation #corner_cntr swMath_V *= C_r swPool_C
scoreboard players operation #corner_cntr swMath_V /= old_r swMath_V

#    corner edges
execute as @e[tag=swPool_pxside,tag=swPool_nzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_c","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #corner1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #corner2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_pxside,tag=swPool_nzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_c","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #corner2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #corner1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_pxside,tag=swPool_pzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_c","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #corner1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #corner2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_pxside,tag=swPool_pzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_c","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #corner2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #corner1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_nxside,tag=swPool_pzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_c","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #corner1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #corner2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_nxside,tag=swPool_pzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_c","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #corner2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #corner1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_nxside,tag=swPool_nzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_c","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #corner1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #corner2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_nxside,tag=swPool_nzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_c","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #corner2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #corner1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

#    corner cntrs
execute as @e[tag=swPool_pxside,tag=swPool_nzside] at @s run summon item_display ~ ~0.36875 ~ {Rotation:[45.0f,0.0f],Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktcntr_c","swPool_fake","swPool_cntr","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #corner_cntr swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #corner_cntr swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_pxside,tag=swPool_pzside] at @s run summon item_display ~ ~0.36875 ~ {Rotation:[135.0f,0.0f],Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktcntr_c","swPool_fake","swPool_cntr","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #corner_cntr swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #corner_cntr swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_nxside,tag=swPool_pzside] at @s run summon item_display ~ ~0.36875 ~ {Rotation:[-135.0f,0.0f],Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktcntr_c","swPool_fake","swPool_cntr","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #corner_cntr swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #corner_cntr swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_nxside,tag=swPool_nzside] at @s run summon item_display ~ ~0.36875 ~ {Rotation:[-45.0f,0.0f],Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktcntr_c","swPool_fake","swPool_cntr","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #corner_cntr swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #corner_cntr swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving


# side edge and center: scale these numbers based on r
scoreboard players set #side_edge1 swMath_V 2800
scoreboard players operation #side_edge1 swMath_V *= C_r swPool_C
scoreboard players operation #side_edge1 swMath_V /= old_r swMath_V

scoreboard players set #side_edge2 swMath_V 100
scoreboard players operation #side_edge2 swMath_V *= C_r swPool_C
scoreboard players operation #side_edge2 swMath_V /= old_r swMath_V

scoreboard players set #side_cntr1 swMath_V 2500
scoreboard players operation #side_cntr1 swMath_V *= C_r swPool_C
scoreboard players operation #side_cntr1 swMath_V /= old_r swMath_V

scoreboard players set #side_cntr2 swMath_V 5000
scoreboard players operation #side_cntr2 swMath_V *= C_r swPool_C
scoreboard players operation #side_cntr2 swMath_V /= old_r swMath_V


#    side edges
execute as @e[tag=swPool_potl,tag=swPool_pxside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_s","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #side_edge1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #side_edge2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potl,tag=swPool_nxside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_s","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #side_edge1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #side_edge2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potl,tag=swPool_pzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_s","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #side_edge2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #side_edge1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potl,tag=swPool_nzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_s","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #side_edge2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #side_edge1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potr,tag=swPool_pxside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_s","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #side_edge1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #side_edge2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potr,tag=swPool_nxside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_s","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #side_edge1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #side_edge2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potr,tag=swPool_pzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_s","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #side_edge2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #side_edge1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potr,tag=swPool_nzside] at @s run summon item_display ~ ~0.36875 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktedge_s","swPool_fake","swPool_edge","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #side_edge2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #side_edge1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving


#    side cntrs
execute as @e[tag=swPool_potl,tag=swPool_pxside] at @s run summon item_display ~ ~0.36875 ~ {Rotation:[90.0f,0.0f],Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktcntr_s","swPool_fake","swPool_cntr","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #side_cntr1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #side_cntr2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potl,tag=swPool_nxside] at @s run summon item_display ~ ~0.36875 ~ {Rotation:[-90.0f,0.0f],Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktcntr_s","swPool_fake","swPool_cntr","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #side_cntr1 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #side_cntr2 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potl,tag=swPool_pzside] at @s run summon item_display ~ ~0.36875 ~ {Rotation:[180.0f,0.0f],Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktcntr_s","swPool_fake","swPool_cntr","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx += #side_cntr2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz += #side_cntr1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving

execute as @e[tag=swPool_potl,tag=swPool_nzside] at @s run summon item_display ~ ~0.36875 ~ {Rotation:[0.0f,0.0f],Marker:1b,Invisible:1b,Small:1b,Tags:["swPool_pktcntr_s","swPool_fake","swPool_cntr","swPool_moving"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=swPool_moving] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_moving] store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @e[tag=swPool_moving] swPool_posx -= #side_cntr2 swMath_V
scoreboard players operation @e[tag=swPool_moving] swPool_posz -= #side_cntr1 swMath_V
execute as @e[tag=swPool_moving] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_posx
execute as @e[tag=swPool_moving] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_posz
tag @e[tag=swPool_moving] remove swPool_moving


# table rim stuff

#execute as @e[tag=swPool_cloth] at @s run setblock ~ ~-1 ~ glass
execute as @e[tag=swPool_cloth] at @s run setblock ~ ~ ~ iron_trapdoor[half=top]
#execute as @e[tag=swPool_cloth] at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ iron_trapdoor[half=top]

tag @e[tag=swPool_corner] add swPool_rim
tag @e[tag=swPool_potl] add swPool_rim
tag @e[tag=swPool_potr] add swPool_rim

# no cherry before 1.20
execute if score C_trt swPool_C matches 8 if data storage minecraft:swpool {version:[116]} run scoreboard players set C_trt swPool_C 1
execute if score C_trt swPool_C matches 8 if data storage minecraft:swpool {version:[117]} unless data storage minecraft:swpool {version:[1200]} run scoreboard players set C_trt swPool_C 1
execute unless score C_trt swPool_C matches 1..8 run scoreboard players set C_trt swPool_C 1

execute if score C_trt swPool_C matches 1 as @e[tag=swPool_pxside,tag=swPool_rim] at @s run setblock ~1 ~ ~ minecraft:iron_trapdoor[open=true,half=top,facing=east]
execute if score C_trt swPool_C matches 1 as @e[tag=swPool_pzside,tag=swPool_rim] at @s run setblock ~ ~ ~1 minecraft:iron_trapdoor[open=true,half=top,facing=south]
execute if score C_trt swPool_C matches 1 as @e[tag=swPool_nxside,tag=swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:iron_trapdoor[open=true,half=top,facing=west]
execute if score C_trt swPool_C matches 1 as @e[tag=swPool_nzside,tag=swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:iron_trapdoor[open=true,half=top,facing=north]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 1 as @e[tag=swPool_pxside,tag=!swPool_rim] at @s run setblock ~1 ~ ~ minecraft:birch_wall_sign[facing=east]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 1 as @e[tag=swPool_pzside,tag=!swPool_rim] at @s run setblock ~ ~ ~1 minecraft:birch_wall_sign[facing=south]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 1 as @e[tag=swPool_nxside,tag=!swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:birch_wall_sign[facing=west]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 1 as @e[tag=swPool_nzside,tag=!swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:birch_wall_sign[facing=north]

execute if score C_trt swPool_C matches 2 as @e[tag=swPool_pxside,tag=swPool_rim] at @s run setblock ~1 ~ ~ minecraft:oak_trapdoor[open=true,half=top,facing=east]
execute if score C_trt swPool_C matches 2 as @e[tag=swPool_pzside,tag=swPool_rim] at @s run setblock ~ ~ ~1 minecraft:oak_trapdoor[open=true,half=top,facing=south]
execute if score C_trt swPool_C matches 2 as @e[tag=swPool_nxside,tag=swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:oak_trapdoor[open=true,half=top,facing=west]
execute if score C_trt swPool_C matches 2 as @e[tag=swPool_nzside,tag=swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:oak_trapdoor[open=true,half=top,facing=north]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 2 as @e[tag=swPool_pxside,tag=!swPool_rim] at @s run setblock ~1 ~ ~ minecraft:oak_wall_sign[facing=east]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 2 as @e[tag=swPool_pzside,tag=!swPool_rim] at @s run setblock ~ ~ ~1 minecraft:oak_wall_sign[facing=south]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 2 as @e[tag=swPool_nxside,tag=!swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:oak_wall_sign[facing=west]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 2 as @e[tag=swPool_nzside,tag=!swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:oak_wall_sign[facing=north]

execute if score C_trt swPool_C matches 3 as @e[tag=swPool_pxside,tag=swPool_rim] at @s run setblock ~1 ~ ~ minecraft:spruce_trapdoor[open=true,half=top,facing=east]
execute if score C_trt swPool_C matches 3 as @e[tag=swPool_pzside,tag=swPool_rim] at @s run setblock ~ ~ ~1 minecraft:spruce_trapdoor[open=true,half=top,facing=south]
execute if score C_trt swPool_C matches 3 as @e[tag=swPool_nxside,tag=swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:spruce_trapdoor[open=true,half=top,facing=west]
execute if score C_trt swPool_C matches 3 as @e[tag=swPool_nzside,tag=swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:spruce_trapdoor[open=true,half=top,facing=north]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 3 as @e[tag=swPool_pxside,tag=!swPool_rim] at @s run setblock ~1 ~ ~ minecraft:spruce_wall_sign[facing=east]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 3 as @e[tag=swPool_pzside,tag=!swPool_rim] at @s run setblock ~ ~ ~1 minecraft:spruce_wall_sign[facing=south]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 3 as @e[tag=swPool_nxside,tag=!swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:spruce_wall_sign[facing=west]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 3 as @e[tag=swPool_nzside,tag=!swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:spruce_wall_sign[facing=north]

execute if score C_trt swPool_C matches 4 as @e[tag=swPool_pxside,tag=swPool_rim] at @s run setblock ~1 ~ ~ minecraft:birch_trapdoor[open=true,half=top,facing=east]
execute if score C_trt swPool_C matches 4 as @e[tag=swPool_pzside,tag=swPool_rim] at @s run setblock ~ ~ ~1 minecraft:birch_trapdoor[open=true,half=top,facing=south]
execute if score C_trt swPool_C matches 4 as @e[tag=swPool_nxside,tag=swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:birch_trapdoor[open=true,half=top,facing=west]
execute if score C_trt swPool_C matches 4 as @e[tag=swPool_nzside,tag=swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:birch_trapdoor[open=true,half=top,facing=north]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 4 as @e[tag=swPool_pxside,tag=!swPool_rim] at @s run setblock ~1 ~ ~ minecraft:birch_wall_sign[facing=east]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 4 as @e[tag=swPool_pzside,tag=!swPool_rim] at @s run setblock ~ ~ ~1 minecraft:birch_wall_sign[facing=south]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 4 as @e[tag=swPool_nxside,tag=!swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:birch_wall_sign[facing=west]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 4 as @e[tag=swPool_nzside,tag=!swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:birch_wall_sign[facing=north]

execute if score C_trt swPool_C matches 5 as @e[tag=swPool_pxside,tag=swPool_rim] at @s run setblock ~1 ~ ~ minecraft:jungle_trapdoor[open=true,half=top,facing=east]
execute if score C_trt swPool_C matches 5 as @e[tag=swPool_pzside,tag=swPool_rim] at @s run setblock ~ ~ ~1 minecraft:jungle_trapdoor[open=true,half=top,facing=south]
execute if score C_trt swPool_C matches 5 as @e[tag=swPool_nxside,tag=swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:jungle_trapdoor[open=true,half=top,facing=west]
execute if score C_trt swPool_C matches 5 as @e[tag=swPool_nzside,tag=swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:jungle_trapdoor[open=true,half=top,facing=north]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 5 as @e[tag=swPool_pxside,tag=!swPool_rim] at @s run setblock ~1 ~ ~ minecraft:jungle_wall_sign[facing=east]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 5 as @e[tag=swPool_pzside,tag=!swPool_rim] at @s run setblock ~ ~ ~1 minecraft:jungle_wall_sign[facing=south]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 5 as @e[tag=swPool_nxside,tag=!swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:jungle_wall_sign[facing=west]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 5 as @e[tag=swPool_nzside,tag=!swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:jungle_wall_sign[facing=north]

execute if score C_trt swPool_C matches 6 as @e[tag=swPool_pxside,tag=swPool_rim] at @s run setblock ~1 ~ ~ minecraft:acacia_trapdoor[open=true,half=top,facing=east]
execute if score C_trt swPool_C matches 6 as @e[tag=swPool_pzside,tag=swPool_rim] at @s run setblock ~ ~ ~1 minecraft:acacia_trapdoor[open=true,half=top,facing=south]
execute if score C_trt swPool_C matches 6 as @e[tag=swPool_nxside,tag=swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:acacia_trapdoor[open=true,half=top,facing=west]
execute if score C_trt swPool_C matches 6 as @e[tag=swPool_nzside,tag=swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:acacia_trapdoor[open=true,half=top,facing=north]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 6 as @e[tag=swPool_pxside,tag=!swPool_rim] at @s run setblock ~1 ~ ~ minecraft:acacia_wall_sign[facing=east]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 6 as @e[tag=swPool_pzside,tag=!swPool_rim] at @s run setblock ~ ~ ~1 minecraft:acacia_wall_sign[facing=south]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 6 as @e[tag=swPool_nxside,tag=!swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:acacia_wall_sign[facing=west]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 6 as @e[tag=swPool_nzside,tag=!swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:acacia_wall_sign[facing=north]

execute if score C_trt swPool_C matches 7 as @e[tag=swPool_pxside,tag=swPool_rim] at @s run setblock ~1 ~ ~ minecraft:dark_oak_trapdoor[open=true,half=top,facing=east]
execute if score C_trt swPool_C matches 7 as @e[tag=swPool_pzside,tag=swPool_rim] at @s run setblock ~ ~ ~1 minecraft:dark_oak_trapdoor[open=true,half=top,facing=south]
execute if score C_trt swPool_C matches 7 as @e[tag=swPool_nxside,tag=swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:dark_oak_trapdoor[open=true,half=top,facing=west]
execute if score C_trt swPool_C matches 7 as @e[tag=swPool_nzside,tag=swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:dark_oak_trapdoor[open=true,half=top,facing=north]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 7 as @e[tag=swPool_pxside,tag=!swPool_rim] at @s run setblock ~1 ~ ~ minecraft:dark_oak_wall_sign[facing=east]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 7 as @e[tag=swPool_pzside,tag=!swPool_rim] at @s run setblock ~ ~ ~1 minecraft:dark_oak_wall_sign[facing=south]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 7 as @e[tag=swPool_nxside,tag=!swPool_rim] at @s run setblock ~-1 ~ ~ minecraft:dark_oak_wall_sign[facing=west]
execute if score #nosidecushion swMath_V matches 0 if score C_trt swPool_C matches 7 as @e[tag=swPool_nzside,tag=!swPool_rim] at @s run setblock ~ ~ ~-1 minecraft:dark_oak_wall_sign[facing=north]

execute if data storage minecraft:swpool {version:[1200]} at @s run function pool:classes/table/set_1200
execute if data storage minecraft:swpool {version:[1205]} at @s run function pool:classes/table/set_1200

execute unless entity @e[tag=swPool_sqh] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_sqh"],Duration:99999999,Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}
execute unless entity @e[tag=swPool_thp1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_thp1","swPool_thp"],Duration:99999999,Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}
execute unless entity @e[tag=swPool_thp2] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_thp2","swPool_thp"],Duration:99999999,Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}
execute unless entity @e[tag=swPool_rhp1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["swPool_helper","swPool_rhp","swPool_rhp1"],Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}
execute unless entity @e[tag=swPool_rhp2] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["swPool_helper","swPool_rhp","swPool_rhp2"],Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}
execute unless entity @e[tag=swPool_rhp3] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["swPool_helper","swPool_rhp","swPool_rhp3"],Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}
execute unless entity @e[tag=swPool_vcomb] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["swPool_helper","swPool_rhp","swPool_vcomb"],Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air",Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}

tp @s ~ ~1 ~




#end_output
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"","color":"white"},{"underlined":true,"text":"<View Lobby>","color":"gold","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4111110"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"","color":"white"},{"underlined":true,"text":"<打开游戏大厅>","color":"gold","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4111110"}}]


tag @e[tag=swPool_pooltable,limit=1,sort=nearest] add swPool_1st_render

execute as @e[tag=swPool_cloth] store result entity @s ItemRotation int 1 run scoreboard players get @s swPool_rot
#execute as @e[tag=swPool_pooltable,limit=1] at @s run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_cue","swPool_pool"],interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
#scoreboard players set @e[tag=swPool_cue] swPool_v 100000

kill @e[tag=swPool_placer,type=area_effect_cloud]

tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<Command Window>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1"}}]
tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<命令窗口>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1"}}]

# test if pooltable is near, if not, warn the player about table placement
execute unless entity @e[tag=swPool_pooltable,limit=1,sort=nearest,distance=..10] run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"This datapack may not work correctly far from the world origin due to scoreboard scaling. Please use it closer to (0, 0).","color":"red"}]
execute unless entity @e[tag=swPool_pooltable,limit=1,sort=nearest,distance=..10] run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"由于计分板数值缩放，本数据包在远离世界原点时可能出现异常，请尽量在接近 (0, 0) 的位置使用。","color":"red"}]
