#I assume set things x and y direction
#scoreboard objectives add pos dummy
#scoreboard objectives add randm dummy
#scoreboard objectives add const dummy



#summon at center
summon armor_stand ~ ~ ~ {Tags:["new","food"],NoGravity:1b,Invisible:1b}

execute store result score posx pos run data get entity @e[tag=new,distance=0,limit=1] Pos[0] 1
execute store result score posy pos run data get entity @e[tag=new,distance=0,limit=1] Pos[1] 1

execute store result score randx randm run data get entity @e[tag=new,distance=0,limit=1] UUID[0]
execute store result score randy randm run data get entity @e[tag=new,distance=0,limit=1] UUID[1]
execute store result score signx randm run data get entity @e[tag=new,distance=0,limit=1] UUID[2]
execute store result score signy randm run data get entity @e[tag=new,distance=0,limit=1] UUID[3]

#i used 10 below as half of grid size
scoreboard players set c10 const 12
scoreboard players set c2 const 2
scoreboard players operation randx randm %= c10 const
scoreboard players operation randy randm %= c10 const
scoreboard players operation signx randm %= c2 const
scoreboard players operation signy randm %= c2 const

scoreboard players operation signx randm += signx randm
scoreboard players operation signy randm += signy randm

scoreboard players remove signx randm 1
scoreboard players remove signy randm 1

scoreboard players operation randx randm *= signx randm
scoreboard players operation randy randm *= signy randm

scoreboard players operation posx pos += randx randm
scoreboard players operation posy pos += randy randm

execute as @e[tag=new,limit=1] store result entity @s Pos[0] double 1 run scoreboard players get posx pos
execute as @e[tag=new,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get posy pos
execute as @e[tag=new,limit=1] at @s run fill ~ ~ ~ ~ ~ ~ gold_block replace air
tag @e[tag=new,limit=1] remove new

scoreboard players remove @p const 1
execute if entity @p[scores={const=1..}] run function pool:classes/test/setfood