# only cleanup if bot is not actively working
execute unless entity @e[tag=swPool_bot_thinking,limit=1] run function pool:classes/bot/generic/__cleanup
