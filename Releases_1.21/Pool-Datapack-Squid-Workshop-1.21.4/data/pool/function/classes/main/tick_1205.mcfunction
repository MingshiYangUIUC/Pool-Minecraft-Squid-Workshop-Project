scoreboard players add #tick swPool_var00 1
execute if score #tick swPool_var00 >= tick_interval swPool_C run scoreboard players set #tick swPool_var00 0

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:item_model":"swpool:cuestick"}}}] as @e[type=arrow,distance=..5] store result score @s swPool_player run data get entity @s Owner[1]
execute as @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_cn8ballmode,scores={swPool_hittime=1}] at @s run function pool:classes/cn8ball/place
execute as @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_snookermode,scores={swPool_hittime=1}] at @s run function pool:classes/snooker/place
execute as @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_uk8ballmode,scores={swPool_hittime=1}] at @s run function pool:classes/uk8ball/place
execute as @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_practicemode,scores={swPool_hittime=1}] at @s run function pool:classes/practice/place
#execute as @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_snookermode,scores={swPool_hittime=1}] at @s run tp @s ~ ~ ~ ~ ~

# cn8ball: two ballinhand scenarios: behind headstring (uk8ball style) or all (practice style)
scoreboard players set #headstring swPool_var00 0
execute if score #breakshot swPool_v matches 1 run scoreboard players set #headstring swPool_var00 1
execute if score Stroke swPool_hidScore matches 1 run scoreboard players set #headstring swPool_var00 1
# execute if first ball in hand after break set run scoreboard players set #headstring swPool_var00 1

execute unless score #headstring swPool_var00 matches 1 if data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_cn8ballmode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/practice/main_1205
execute if score #headstring swPool_var00 matches 1 if data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_cn8ballmode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/uk8ball/main_1205
execute unless score #headstring swPool_var00 matches 1 unless data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_cn8ballmode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball_clean"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/practice/main_1205
execute if score #headstring swPool_var00 matches 1 unless data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_cn8ballmode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball_clean"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/uk8ball/main_1205

execute if data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_snookermode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/snooker/main_1205
execute if data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_uk8ballmode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/uk8ball/main_1205
execute if data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_practicemode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/practice/main_1205
execute unless data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_snookermode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball_clean"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/snooker/main_1205
execute unless data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_uk8ballmode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball_clean"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/uk8ball/main_1205
execute unless data storage minecraft:swpool cueballreddot if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_practicemode] as @a[tag=swPool_ballinhand] at @s[nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_cueball_clean"},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/practice/main_1205

execute if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_practicemode] as @a[tag=swPool_ballinhand_obj] at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{swPool_obj:1b}},id:"minecraft:carrot_on_a_stick"}}] run function pool:classes/ballinhand/practice/main_obj_1205
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:item_model":"swpool:cuestick"}}}] at @s run function pool:classes/cue/main
#execute as @a[nbt={OnGround:1b,Inventory:[{Slot:-106b,id:"minecraft:bow",components:{"minecraft:custom_model_data":1}}]}] at @s run function pool:classes/cue/aim
execute if score #tick swPool_var00 matches 0 if entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..}] as @e[tag=swPool_pool] at @s[scores={swPool_DXX=1..}] run function pool:classes/master/main
execute if score #tick swPool_var00 matches 0 as @e[type=armor_stand,tag=swPool_pool] at @s if entity @e[tag=swPool_pool,distance=0.0001..0.25] run function pool:classes/motion/new_retreat
tag @e[type=armor_stand,tag=swPool_a1] remove swPool_a1
tag @e[type=armor_stand,tag=swPool_colliding] remove swPool_colliding
execute unless entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..}] as @e[tag=swPool_pooltable,tag=!swPool_start] run function pool:classes/master/idle
scoreboard players add @e[type=armor_stand,tag=swPool_pooltable] swPool_hittime 1
#execute as @a at @s if score @e[type=arrow,distance=..4,limit=1] swPool_player = @s swPool_player run kill @e[type=arrow,distance=..4,limit=1]
scoreboard players set @a swPool_crtclk 0

execute if score #tick swPool_var00 matches 0 if data storage minecraft:swpool {allowspin:1} as @e[tag=swPool_pool,scores={swPool_T=1..,swPool_v=1..}] run function pool:classes/pose/w2dpdt_iterative