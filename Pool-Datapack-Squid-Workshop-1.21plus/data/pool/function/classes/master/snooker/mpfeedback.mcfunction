# r = (s1+s2)+(s1-s2)/2/ST

scoreboard players operation @s swPool_var00 = @s swPool_Score
#scoreboard players operation @s swPool_var01 = @s swPool_Score

#sum
#scoreboard players operation @s swPool_var00 += @a[tag=swPool_poolplay,limit=1,distance=0.001..] swPool_Score

#diff
#scoreboard players operation @s swPool_var01 -= @a[tag=swPool_poolplay,limit=1,distance=0.001..] swPool_Score

#calculation, C500 because divide by player number
#scoreboard players operation @s swPool_var00 += @s swPool_var01
scoreboard players operation @s swPool_Score = @s swPool_var00
scoreboard players set C500 swPool_var00 500
scoreboard players operation @s swPool_Score *= C500 swPool_var00
scoreboard players operation @s swPool_Score /= Stroke swPool_hidScore

#S+4000
#S 3200
#S-2600
#A+2000
#A 1600
#A-1300
#B+1000
#B 800
#B-650
#C+500
#C 350
#C-200
#D+100
#D 50
#D-0
#F <0

# CN msg
execute if score @s swPool_Score matches 4000.. run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"S+","color":"gold"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 3200..3999 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"S","color":"gold"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 2600..3199 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"S-","color":"gold"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 2000..2599 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"A+","color":"yellow"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 1600..1999 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"A","color":"yellow"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 1300..1599 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"A-","color":"yellow"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 1000..1299 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"B+","color":"green"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 800..999 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"B","color":"green"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 650..799 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"B-","color":"green"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 500..649 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"C+","color":"blue"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 350..499 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"C","color":"blue"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 200..349 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"C-","color":"blue"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 100..199 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"D+","color":"light_purple"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 50..99 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"D","color":"light_purple"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches 0..49 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"D-","color":"light_purple"},{"text":"]。","color":"white"}]
execute if score @s swPool_Score matches ..-1 run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"的评分： [","color":"white"},{"text":"F","color":"dark_red"},{"text":"]。","color":"white"}]

# EN msg
execute if score @s swPool_Score matches 4000.. run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"S+","color":"gold"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 3200..3999 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"S","color":"gold"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 2600..3199 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"S-","color":"gold"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 2000..2599 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"A+","color":"yellow"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 1600..1999 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"A","color":"yellow"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 1300..1599 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"A-","color":"yellow"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 1000..1299 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"B+","color":"green"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 800..999 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"B","color":"green"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 650..799 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"B-","color":"green"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 500..649 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"C+","color":"blue"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 350..499 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"C","color":"blue"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 200..349 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"C-","color":"blue"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 100..199 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"D+","color":"light_purple"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 50..99 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"D","color":"light_purple"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches 0..49 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"D-","color":"light_purple"},{"text":"].","color":"white"}]
execute if score @s swPool_Score matches ..-1 run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s"},{"text":"'s Rating: [","color":"white"},{"text":"F","color":"dark_red"},{"text":"].","color":"white"}]
