execute as @e[tag=swPool_shooter,limit=1] at @s run function pool:classes/cue/shoot
function pool:classes/bot/generic/__kill_equip

tag @e[tag=swPool_bot_thinking] remove swPool_aimsolid
tag @e[tag=swPool_bot_thinking] remove swPool_aimstripe
tag @e[tag=swPool_bot_thinking] remove swPool_aim08
execute as @e[tag=swPool_bot_thinking] if entity @s[tag=swPool_aimsolid_tmp] run tag @s add swPool_aimsolid
execute as @e[tag=swPool_bot_thinking] if entity @s[tag=swPool_aimstripe_tmp] run tag @s add swPool_aimstripe
execute as @e[tag=swPool_bot_thinking] if entity @s[tag=swPool_aim08_tmp] run tag @s add swPool_aim08

execute if entity @e[tag=swPool_bot_thinking] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"电脑玩家完成行动。"}]
execute if entity @e[tag=swPool_bot_thinking] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Bot Player finished its action."}]

tag @e remove swPool_bot_thinking