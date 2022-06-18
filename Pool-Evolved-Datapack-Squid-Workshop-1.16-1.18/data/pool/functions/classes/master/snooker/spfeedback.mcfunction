scoreboard players operation @s swPool_Score -= Opponent swPool_Score

#execute if score TABLE swPool_dl matches 23750..43749 run scoreboard players set Nred swPool_var00 3
#execute if score TABLE swPool_dl matches 43750..53749 run scoreboard players set Nred swPool_var00 10
#execute if score TABLE swPool_dl matches 53750.. run tag scoreboard players set Nred swPool_var00 15

scoreboard players set C1000 swPool_var00 1000
scoreboard players operation @s swPool_Score *= C1000 swPool_var00
#scoreboard players operation @s swPool_Score /= Nred swPool_var00
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
tellraw @s[tag=swPool_CN,scores={swPool_Score=4000..}] [{"text":"你的评分： [","color":"white"},{"text":"S+","color":"gold"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=3200..3999}] [{"text":"你的评分： [","color":"white"},{"text":"S","color":"gold"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=2600..3199}] [{"text":"你的评分： [","color":"white"},{"text":"S-","color":"gold"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=2000..2599}] [{"text":"你的评分： [","color":"white"},{"text":"A+","color":"yellow"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=1600..1999}] [{"text":"你的评分： [","color":"white"},{"text":"A","color":"yellow"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=1300..1599}] [{"text":"你的评分： [","color":"white"},{"text":"A-","color":"yellow"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=1000..1299}] [{"text":"你的评分： [","color":"white"},{"text":"B+","color":"green"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=800..999}] [{"text":"你的评分： [","color":"white"},{"text":"B","color":"green"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=650..799}] [{"text":"你的评分： [","color":"white"},{"text":"B-","color":"green"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=500..649}] [{"text":"你的评分： [","color":"white"},{"text":"C+","color":"blue"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=350..499}] [{"text":"你的评分： [","color":"white"},{"text":"C","color":"blue"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=200..349}] [{"text":"你的评分： [","color":"white"},{"text":"C-","color":"blue"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=100..199}] [{"text":"你的评分： [","color":"white"},{"text":"D+","color":"light_purple"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=50..99}] [{"text":"你的评分： [","color":"white"},{"text":"D","color":"light_purple"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=0..49}] [{"text":"你的评分： [","color":"white"},{"text":"D-","color":"light_purple"},{"text":"]。","color":"white"}]
tellraw @s[tag=swPool_CN,scores={swPool_Score=..-1}] [{"text":"你的评分： [","color":"white"},{"text":"F","color":"dark_red"},{"text":"]。","color":"white"}]

#EN msg
tellraw @s[tag=swPool_EN,scores={swPool_Score=4000..}] [{"text":"Your Rating: [","color":"white"},{"text":"S+","color":"gold"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=3200..3999}] [{"text":"Your Rating: [","color":"white"},{"text":"S","color":"gold"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=2600..3199}] [{"text":"Your Rating: [","color":"white"},{"text":"S-","color":"gold"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=2000..2599}] [{"text":"Your Rating: [","color":"white"},{"text":"A+","color":"yellow"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=1600..1999}] [{"text":"Your Rating: [","color":"white"},{"text":"A","color":"yellow"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=1300..1599}] [{"text":"Your Rating: [","color":"white"},{"text":"A-","color":"yellow"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=1000..1299}] [{"text":"Your Rating: [","color":"white"},{"text":"B+","color":"green"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=800..999}] [{"text":"Your Rating: [","color":"white"},{"text":"B","color":"green"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=650..799}] [{"text":"Your Rating: [","color":"white"},{"text":"B-","color":"green"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=500..649}] [{"text":"Your Rating: [","color":"white"},{"text":"C+","color":"blue"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=350..499}] [{"text":"Your Rating: [","color":"white"},{"text":"C","color":"blue"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=200..349}] [{"text":"Your Rating: [","color":"white"},{"text":"C-","color":"blue"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=100..199}] [{"text":"Your Rating: [","color":"white"},{"text":"D+","color":"light_purple"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=50..99}] [{"text":"Your Rating: [","color":"white"},{"text":"D","color":"light_purple"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=0..49}] [{"text":"Your Rating: [","color":"white"},{"text":"D-","color":"light_purple"},{"text":"].","color":"white"}]
tellraw @s[tag=swPool_EN,scores={swPool_Score=..-1}] [{"text":"Your Rating: [","color":"white"},{"text":"F","color":"dark_red"},{"text":"].","color":"white"}]