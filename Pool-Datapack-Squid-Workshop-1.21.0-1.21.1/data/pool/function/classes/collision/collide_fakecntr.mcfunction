#say fakecntr
#set uuuuuuuuuuuuup
tag @s add swPool_colliding

#tp to col2 and done

tp @s @e[tag=swPool_col2,limit=1]

scoreboard players set @s swPool_v 1


playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1

tag @s add swPool_inpocket