execute as @e[tag=new,limit=1] store result entity @s Pos[0] double 1 run scoreboard players get posx pos
execute as @e[tag=new,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get posy pos
execute as @e[tag=new,limit=1] at @s run fill ~ ~ ~ ~ ~ ~ gold_block replace air
tag @e[tag=new,limit=1] remove new