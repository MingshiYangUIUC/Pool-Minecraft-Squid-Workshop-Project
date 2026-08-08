execute if entity @e[tag=swPool_c,tag=swPool_red,limit=1] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 1
execute if entity @e[tag=swPool_c,tag=swPool_yellow,limit=1] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 2
execute if entity @e[tag=swPool_c,tag=swPool_green,limit=1] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 3
execute if entity @e[tag=swPool_c,tag=swPool_brown,limit=1] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 4
execute if entity @e[tag=swPool_c,tag=swPool_blue,limit=1] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 5
execute if entity @e[tag=swPool_c,tag=swPool_pink,limit=1] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 6
execute if entity @e[tag=swPool_c,tag=swPool_black,limit=1] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 7

# FREE BALL:
# first physically hit ball becomes nominated free ball
execute if entity @e[tag=swPool_pooltable,tag=swPool_freeball_turn] run scoreboard players operation #freeball_nom swMath_V = @a[tag=swPool_hitcue,limit=1] swPool_firsthit

# for all downstream rule checks, regard nominated free ball as the actual ball on
execute if entity @e[tag=swPool_pooltable,tag=swPool_freeball_turn] run scoreboard players operation @a[tag=swPool_hitcue,limit=1] swPool_firsthit = #freeball_target swMath_V

tellraw @a[tag=swPool_debug] [{"text":"firsthit, "},{"score":{"objective":"swPool_firsthit","name":"@a[tag=swPool_hitcue,limit=1]"}}]

tellraw @a[tag=swPool_debug] [{"text":"first norm, "},{"score":{"objective":"swMath_V","name":"#freeball_nom"}}]