execute if entity @s[nbt={OnGround:1b,SelectedItem:{id:"minecraft:bow",tag:{CustomModelData:1}}}] at @s run summon area_effect_cloud ^ ^ ^ {Tags:["swPool_aim"]}
#execute if entity @s[nbt={OnGround:1b,Inventory:[{Slot:-106b,id:"minecraft:bow",tag:{CustomModelData:1}}]}] at @s run summon area_effect_cloud ^ ^ ^ {Tags:["swPool_aim"]}

tp @e[tag=swPool_aim] @s
execute store result score @e[tag=swPool_aim,limit=1] swPool_rot run data get entity @s Rotation[1] 10000
execute if entity @s[nbt={OnGround:1b}] at @e[tag=swPool_aim,limit=1] run tp @e[tag=swPool_aim,limit=1] ~ ~ ~ facing entity @e[tag=swPool_cue,tag=swPool_pool,limit=1] eyes
execute store result entity @e[tag=swPool_aim,limit=1] Rotation[1] float 0.0001 run scoreboard players get @e[tag=swPool_aim,limit=1] swPool_rot
execute at @e[tag=swPool_aim,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=swPool_aim] run effect give @s[tag=swPool_zoom] slowness 1 3 true
kill @e[tag=swPool_aim]
scoreboard players reset @s swPool_sneaktime