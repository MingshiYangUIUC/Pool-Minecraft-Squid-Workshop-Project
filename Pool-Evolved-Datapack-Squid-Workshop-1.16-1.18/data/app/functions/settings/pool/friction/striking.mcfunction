#change storage later
tellraw @s[tag=swPool_EN] [{"text":"Rolling friction coef. Suggested: 7000. ","color":"gray"},{"text":"Current: "},{"score":{"objective":"swPool_C","name":"C_mus"}},{"text":". "},{"underlined":true,"text":"<Click and type>","color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set C_mus swPool_C "}}]
tellraw @s[tag=swPool_CN] [{"text":"滚动摩擦系数。建议：7000。","color":"gray"},{"text":"当前值: "},{"score":{"objective":"swPool_C","name":"C_mus"}},{"text":". "},{"underlined":true,"text":"<点此处后输入>","color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set C_mus swPool_C "}}]