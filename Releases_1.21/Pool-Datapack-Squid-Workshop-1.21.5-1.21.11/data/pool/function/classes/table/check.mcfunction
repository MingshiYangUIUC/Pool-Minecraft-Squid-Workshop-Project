execute if entity @s[scores={swPool_sizex=13750..63750}] if entity @s[scores={swPool_sizez=13750..63750}] run tag @s add swPool_success
execute if entity @s[scores={swPool_sizex=13750}] if entity @s[scores={swPool_sizez=13750}] run tag @s remove swPool_success
execute unless entity @s[scores={swPool_sizex=13750}] unless entity @s[scores={swPool_sizex=23750}] unless entity @s[scores={swPool_sizex=33750}] unless entity @s[scores={swPool_sizex=43750}] unless entity @s[scores={swPool_sizex=53750}] unless entity @s[scores={swPool_sizex=63750}] run tag @s remove swPool_success
execute unless entity @s[scores={swPool_sizez=13750}] unless entity @s[scores={swPool_sizez=23750}] unless entity @s[scores={swPool_sizez=33750}] unless entity @s[scores={swPool_sizez=43750}] unless entity @s[scores={swPool_sizez=53750}] unless entity @s[scores={swPool_sizez=63750}] run tag @s remove swPool_success

tellraw @s[tag=!swPool_success,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<Click>","color":"red","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 7"}},{"underlined":false,"text":" to try a different setting... Table can't be too small and the size must be standard.","color":"red"}]
tellraw @s[tag=!swPool_success,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<点击此处>","color":"red","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 7"}},{"underlined":false,"text":"设置其它大小……桌子太小或有问题值。","color":"red"}]

execute unless entity @s[nbt={OnGround:1b}] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<Click>","color":"red","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 7"}},{"underlined":false,"text":" to try again... Please stand on the ground throughout.","color":"red"}]
execute unless entity @s[nbt={OnGround:1b}] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<点击此处>","color":"red","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 7"}},{"underlined":false,"text":"重新设置……放置时请保持站在地面。","color":"red"}]

execute unless entity @s[nbt={OnGround:1b}] run tag @s remove swPool_success

execute if entity @s[tag=swPool_success] positioned ~ ~ ~ run function pool:classes/table/set