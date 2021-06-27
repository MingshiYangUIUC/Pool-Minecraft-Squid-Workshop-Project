tag @e[tag=swPool_pooltable,limit=1] add swPool_pocketing


execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=swPool_red] run tag @a[tag=swPool_hitcue] add swPool_aimred
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=swPool_red] run tag @a[tag=swPool_poolplay,tag=!swPool_hitcue] add swPool_aimred
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=swPool_yellow] run tag @a[tag=swPool_hitcue] add swPool_aimylw
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=swPool_yellow] run tag @a[tag=swPool_poolplay,tag=!swPool_hitcue] add swPool_aimylw

execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=swPool_black] run tag @e[tag=swPool_pooltable,limit=1] add swPool_rerack



execute if entity @s[tag=swPool_cue] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pktcue
execute if entity @s[tag=swPool_red] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pktred
execute if entity @s[tag=swPool_yellow] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pktylw
execute if entity @s[tag=swPool_black] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pktblk

execute if score Pocketed_Total swPool_hidScore matches 0 unless entity @s[tag=swPool_cue] unless entity @s[tag=swPool_black] run tag @e[tag=swPool_pooltable,limit=1] add swPool_foulpass

execute if entity @s[tag=swPool_cue] run scoreboard players remove Pocketed_Total swPool_hidScore 1

scoreboard players add Pocketed_Total swPool_hidScore 1
scoreboard players add Pocketed_Turn swPool_hidScore 1

playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1
playsound minecraft:block.barrel.close ambient @a ~ ~ ~ 1 1
kill @s

