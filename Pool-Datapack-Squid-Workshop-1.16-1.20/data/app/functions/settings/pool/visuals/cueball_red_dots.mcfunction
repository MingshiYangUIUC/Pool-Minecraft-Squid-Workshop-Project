data merge storage minecraft:swpool {cueballreddot:1}

execute unless data storage minecraft:swpool {version:[1205]} run function app:help/pool/settings/helpers/clear_clean
execute if data storage minecraft:swpool {version:[1205]} run function app:help/pool/settings/helpers/clear_clean_1205

tellraw @s[tag=swPool_EN] [{"text":"➇ Switched to cue ball with red dots. Please do not do this during active games.","color":"white"}]
tellraw @s[tag=swPool_EN] [{"text":"➇ Switch back by using /function app:settings/pool/visuals/cueball_clean, and run /function app:get/pool/cueball to get a new cue ball if necessary.","color":"white"}]

tellraw @s[tag=swPool_CN] [{"text":"➇ 已切换为带红点白球，建议不要在球局中使用此功能。","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 如有需要，请用 /function app:settings/pool/visuals/cueball_clean 换回纯色白球，并可用 /function app:get/pool/cueball 获得一颗新球。","color":"white"}]
