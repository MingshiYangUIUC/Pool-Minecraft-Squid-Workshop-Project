#tellraw @s [{"text":""},{"text":"","color":"","clickEvent":{"action":"run_command","value":""}}]


tellraw @s [{"text":"╔════════════════════════════════╗"}]
tellraw @s [{"text":"║ ","color":"white"},{"underlined":true,"text":"<Unload Pool>","color":"dark_red","clickEvent":{"action":"run_command","value":"/function app:unload/pool"}},{"text":"","color":"white"}]
tellraw @s [{"text":"║ ","color":"white"},{"underlined":true,"text":"<(Re)load Pool>","color":"aqua","clickEvent":{"action":"run_command","value":"/function pool:classes/main/load"}},{"text":"","color":"white"}]
tellraw @s [{"text":"║ ","color":"white"},{"underlined":true,"text":"<(Re)start MP Snooker>","color":"gold","clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/start"}},{"text":" ","underlined":false},{"underlined":true,"text":"<SP Snooker>","color":"yellow","clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/startsp"}}]
tellraw @s [{"text":"║ ","color":"white"},{"underlined":true,"text":"<(Re)start UK 8 Ball>","color":"gold","clickEvent":{"action":"run_command","value":"/function pool:classes/uk8ball/start"}},{"text":" ","underlined":false},{"underlined":true,"text":"<SP UK 8 Ball>","color":"yellow","clickEvent":{"action":"run_command","value":"/function pool:classes/uk8ball/startsp"}}]
tellraw @s [{"text":"║ ","color":"white"},{"underlined":true,"text":"<(Re)set Table>","color":"green","clickEvent":{"action":"run_command","value":"/function pool:classes/table/start"}},{"text":"","color":"white"}]
tellraw @s [{"text":"║ ","color":"white"},{"underlined":true,"text":"<Get Cue Stick>","color":"light_purple","clickEvent":{"action":"run_command","value":"/function app:get/pool/cuestick"}},{"text":"","color":"white"}]
tellraw @s [{"text":"║ ","color":"white"},{"underlined":true,"text":"<Settings>","color":"white","clickEvent":{"action":"suggest_command","value":"/function app:setting/pool/"}},{"text":"","color":"white"}]
tellraw @s [{"text":"╚════════════════════════════════╝"}]

#tellraw @s [{"text":""},{"text":"","color":"","clickEvent":{"action":"run_command","value":""}}]
#tellraw @s [{"text":""},{"text":"","color":"","clickEvent":{"action":"run_command","value":""}}]