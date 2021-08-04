tag @a remove swPool_hitcue
scoreboard players reset @a swPool_firsthit

execute if entity @a[tag=swPool_freeball] run tellraw @a[tag=swPool_poolplay] [{"text":"Freeball."}]

tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":""},{"underlined":true,"text":"<Command Window>","color":"","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}},{"text":" ","underlined":false},{"underlined":true,"text":"</back>","color":"","clickEvent":{"action":"run_command","value":"/function pool:classes/master/redo"}}]
tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]

tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":""},{"underlined":true,"text":"<命令窗口>","color":"","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}},{"text":" ","underlined":false},{"underlined":true,"text":"<撤销上次击球>","color":"","clickEvent":{"action":"run_command","value":"/function pool:classes/master/redo"}}]
tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"<调整下一次击球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]