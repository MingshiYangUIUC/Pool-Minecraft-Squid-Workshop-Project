tag @e[tag=swPool_pooltable,limit=1] add swPool_pocketing

# if open and not breaking, determine target balls

#execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ball_open,tag=!swPool_cn8ball_breaking] if entity @s[tag=swPool_solid] if score @a[tag=swPool_hitcue,limit=1] swPool_firsthit matches 1 run say swPool_aimsolid
#execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ball_open,tag=!swPool_cn8ball_breaking] if entity @s[tag=swPool_stripe] if score @a[tag=swPool_hitcue,limit=1] swPool_firsthit matches 2 run say swPool_aimstripe

execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ball_open,tag=!swPool_cn8ball_breaking] if entity @s[tag=swPool_solid] if score @a[tag=swPool_hitcue,limit=1] swPool_firsthit matches 1 run tag @a[tag=swPool_hitcue] add swPool_aimsolid
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ball_open,tag=!swPool_cn8ball_breaking] if entity @s[tag=swPool_solid] if score @a[tag=swPool_hitcue,limit=1] swPool_firsthit matches 1 run tag @a[tag=swPool_poolplay,tag=!swPool_hitcue] add swPool_aimstripe
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ball_open,tag=!swPool_cn8ball_breaking] if entity @s[tag=swPool_stripe] if score @a[tag=swPool_hitcue,limit=1] swPool_firsthit matches 2 run tag @a[tag=swPool_hitcue] add swPool_aimstripe
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ball_open,tag=!swPool_cn8ball_breaking] if entity @s[tag=swPool_stripe] if score @a[tag=swPool_hitcue,limit=1] swPool_firsthit matches 2 run tag @a[tag=swPool_poolplay,tag=!swPool_hitcue] add swPool_aimsolid

# no longer open if target ball is determined.
execute if entity @a[tag=swPool_hitcue,tag=swPool_aimsolid] run tag @e[tag=swPool_pooltable] remove swPool_cn8ball_open
execute if entity @a[tag=swPool_hitcue,tag=swPool_aimstripe] run tag @e[tag=swPool_pooltable] remove swPool_cn8ball_open

# if potted black during break, rerack
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ball_breaking] if score Stroke swPool_hidScore matches 0 if entity @s[tag=swPool_black] run tag @e[tag=swPool_pooltable,limit=1] add swPool_rerack

#execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_cue] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pkt1st

# log the type of ball pocketed
#execute if entity @s[tag=swPool_cue] run say swPool_pktcue
#execute if entity @s[tag=swPool_solid] run say swPool_pktsolid
#execute if entity @s[tag=swPool_stripe] run say swPool_pktstripe
#execute if entity @s[tag=swPool_08] run say swPool_pkt08

execute if entity @s[tag=swPool_cue] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pktcue
execute if entity @s[tag=swPool_solid] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pktsolid
execute if entity @s[tag=swPool_stripe] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pktstripe
execute if entity @s[tag=swPool_08] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pkt08

#execute if score Pocketed_Total swPool_hidScore matches 0 unless entity @s[tag=swPool_cue] unless entity @s[tag=swPool_black] run tag @e[tag=swPool_pooltable,limit=1] add swPool_foulpass

# exclude cue ball from pocketed total score
execute if entity @s[tag=swPool_cue] run scoreboard players remove Pocketed_Total swPool_hidScore 1

# increament turn score and total score
scoreboard players add Pocketed_Total swPool_hidScore 1
scoreboard players add Pocketed_Turn swPool_hidScore 1

#playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1
#playsound minecraft:block.barrel.close ambient @a ~ ~ ~ 1 1
playsound swpool:custom.pool.pocket ambient @a ~ ~ ~ 1 1
kill @s

