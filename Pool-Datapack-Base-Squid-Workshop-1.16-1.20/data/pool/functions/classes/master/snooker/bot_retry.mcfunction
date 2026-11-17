execute if score #undo_bot swMath_V matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"电脑玩家将会重新解球。"}]
execute if score #undo_bot swMath_V matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"The bot player will attempt again."}]

# undo but keep the score and stroke count
scoreboard players operation #currentscore swMath_V = @s swPool_Score

function pool:classes/master/undo_run
scoreboard players add Stroke swPool_hidScore 1

scoreboard players operation @s swPool_Score = #currentscore swMath_V

schedule function pool:classes/bot/generic/__run_ai_helper 5t
