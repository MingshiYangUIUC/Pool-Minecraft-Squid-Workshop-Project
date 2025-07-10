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

#CN msg
tellraw @s[tag=swPool_CN,scores={swPool_Score=4000..}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"S+","color":"gold"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=3200..3999}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"S","color":"gold"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=2600..3199}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"S-","color":"gold"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=2000..2599}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"A+","color":"yellow"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=1600..1999}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"A","color":"yellow"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=1300..1599}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"A-","color":"yellow"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=1000..1299}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"B+","color":"green"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=800..999}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"B","color":"green"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=650..799}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"B-","color":"green"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=500..649}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"C+","color":"blue"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=350..499}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"C","color":"blue"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=200..349}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"C-","color":"blue"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=100..199}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"D+","color":"light_purple"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=50..99}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"D","color":"light_purple"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=0..49}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"D-","color":"light_purple"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=..-1}] [{"text":"➇ ","color":"white"},{"text":"你的评分： [","color":"white"},{"text":"F","color":"dark_red"},{"text":"]。","color":"white"}]

#EN msg
tellraw @s[tag=swPool_EN,scores={swPool_Score=4000..}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"S+","color":"gold"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=3200..3999}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"S","color":"gold"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=2600..3199}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"S-","color":"gold"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=2000..2599}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"A+","color":"yellow"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=1600..1999}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"A","color":"yellow"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=1300..1599}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"A-","color":"yellow"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=1000..1299}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"B+","color":"green"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=800..999}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"B","color":"green"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=650..799}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"B-","color":"green"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=500..649}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"C+","color":"blue"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=350..499}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"C","color":"blue"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=200..349}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"C-","color":"blue"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=100..199}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"D+","color":"light_purple"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=50..99}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"D","color":"light_purple"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=0..49}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"D-","color":"light_purple"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=..-1}] [{"text":"➇ ","color":"white"},{"text":"Your Rating: [","color":"white"},{"text":"F","color":"dark_red"},{"text":"].","color":"white"}]