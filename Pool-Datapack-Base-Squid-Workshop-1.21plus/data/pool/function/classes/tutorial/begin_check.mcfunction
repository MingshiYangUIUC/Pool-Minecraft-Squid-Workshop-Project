execute if score swPool_gameon swMath_V matches 1 run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Warning] ","color":"yellow"},{"text":"A game may already be in progress! Starting the tutorial will end the current game and clear the table.","color":"white"}]
execute if score swPool_gameon swMath_V matches 1 run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[注意] ","color":"yellow"},{"text":"当前可能有玩家正在进行游戏！开始教程将结束当前游戏并清空球桌。","color":"white"}]

execute if score swPool_gameon swMath_V matches 1 run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Continue anyway? ","color":"white"},{"text":"<Start Tutorial>","color":"green","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/tutorial/begin"}}]
execute if score swPool_gameon swMath_V matches 1 run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"仍要继续吗？ ","color":"white"},{"text":"<仍然开始教程>","color":"green","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/tutorial/begin"}}]

execute unless score swPool_gameon swMath_V matches 1 run function pool:classes/tutorial/begin
