execute as @s[scores={swPool_sneaktime=1..}] at @s run function pool:classes/cue/aim

execute as @a unless entity @s[nbt={OnGround:1b,SelectedItem:{id:"minecraft:bow",tag:{CustomModelData:1}}}] run scoreboard players reset @s swPool_shoot

execute if entity @e[tag=swPool_cue,limit=1] as @a at @s if score @e[type=arrow,distance=..4,limit=1] swPool_player = @s swPool_player run function pool:classes/cue/shoot


#kill @e[type=arrow,distance=..4,nbt={life:0s}]