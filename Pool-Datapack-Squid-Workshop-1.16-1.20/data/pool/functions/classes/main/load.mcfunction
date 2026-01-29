#save parameters

execute store result storage minecraft:swpool fimpact int 1 run scoreboard players get C_mui swPool_C
execute store result score C_mui swPool_C run data get storage minecraft:swpool fimpact

execute store result storage minecraft:swpool froll int 1 run scoreboard players get C_mur swPool_C
execute store result score C_mur swPool_C run data get storage minecraft:swpool froll

execute store result storage minecraft:swpool fslide int 1 run scoreboard players get C_muk swPool_C
execute store result score C_muk swPool_C run data get storage minecraft:swpool fslide

execute store result storage minecraft:swpool fstrike int 1 run scoreboard players get C_mus swPool_C
execute store result score C_mus swPool_C run data get storage minecraft:swpool fstrike

#clean and reload
execute unless data storage minecraft:swpool keepsession if data storage minecraft:swpool {version:[1]} run function pool:classes/main/clean

# add a trigger
scoreboard objectives add swPool_trigger trigger
scoreboard players enable @a swPool_trigger

scoreboard objectives add swPool_C dummy
scoreboard objectives add swPool_D100 dummy
scoreboard objectives add swPool_DXX dummy
scoreboard objectives add swPool_Rotation dummy
scoreboard objectives add swPool_rot dummy
scoreboard objectives add swPool_drot dummy
scoreboard objectives add swPool_dist dummy
scoreboard objectives add swPool_drel dummy
scoreboard objectives add swPool_posx dummy
scoreboard objectives add swPool_posy dummy
scoreboard objectives add swPool_posz dummy
scoreboard objectives add swPool_var00 dummy
scoreboard objectives add swPool_var01 dummy
scoreboard objectives add swPool_var02 dummy
scoreboard objectives add swPool_var03 dummy
scoreboard objectives add swPool_var04 dummy
scoreboard objectives add swPool_var05 dummy
scoreboard objectives add swPool_v dummy
scoreboard objectives add swPool_vx dummy
scoreboard objectives add swPool_vz dummy
scoreboard objectives add swPool_vr dummy
scoreboard objectives add swPool_vrx dummy
scoreboard objectives add swPool_vrz dummy
scoreboard objectives add swPool_hittime dummy
scoreboard objectives add swPool_sizex dummy
scoreboard objectives add swPool_sizez dummy
scoreboard objectives add swPool_dl dummy
scoreboard objectives add swPool_ds dummy
scoreboard objectives add swPool_count dummy
scoreboard objectives add swPool_ncolor dummy
scoreboard objectives add swPool_nred dummy
scoreboard objectives add swPool_rank dummy
scoreboard objectives add swPool_player dummy
scoreboard objectives add swPool_firsthit dummy
scoreboard objectives add swPool_Score dummy
scoreboard objectives add swPool_foul dummy
scoreboard objectives add swPool_ontgt dummy
scoreboard objectives add swPool_shoot dummy
scoreboard objectives add swPool_crtclk minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add swPool_sneaktime minecraft.custom:minecraft.sneak_time
scoreboard objectives add swPool_hidScore dummy


scoreboard objectives add swPool_vex dummy
scoreboard objectives add swPool_vey dummy
scoreboard objectives add swPool_vez dummy

scoreboard objectives add swPool_ax dummy
scoreboard objectives add swPool_ay dummy
scoreboard objectives add swPool_az dummy
scoreboard objectives add swPool_amag dummy


#spin stuff
scoreboard objectives add swPool_vpx dummy
scoreboard objectives add swPool_vpy dummy
scoreboard objectives add swPool_vpz dummy
scoreboard objectives add swPool_wx dummy
scoreboard objectives add swPool_wy dummy
scoreboard objectives add swPool_wz dummy
scoreboard objectives add swPool_alx dummy
scoreboard objectives add swPool_aly dummy
scoreboard objectives add swPool_alz dummy

scoreboard objectives add swPool_Vi dummy
scoreboard objectives add swPool_Vj dummy
scoreboard objectives add swPool_Vk dummy
scoreboard objectives add swPool_Vmag dummy

scoreboard objectives add swPool_T dummy
scoreboard objectives add swPool_T_roll dummy
scoreboard objectives add swPool_T_end dummy

# pose
scoreboard objectives add swPool_p_angle dummy
scoreboard objectives add swPool_pose dummy

scoreboard objectives add swPool_true_rot0 dummy
scoreboard objectives add swPool_true_rot1 dummy

# rename some scores
scoreboard objectives modify swPool_Score displayname "Score"

scoreboard objectives modify swPool_var00 displayname "*"
scoreboard objectives modify swPool_var01 displayname "*"
scoreboard objectives modify swPool_var02 displayname "*"
scoreboard objectives modify swPool_var03 displayname "*"
scoreboard objectives modify swPool_var04 displayname "*"
scoreboard objectives modify swPool_var05 displayname "*"
scoreboard objectives modify swPool_v displayname "*"

#define constants
#decimal places and math constants
scoreboard players set C_100000000 swPool_C 100000000
scoreboard players set C_3600000 swPool_C 3600000
scoreboard players set C_1800000 swPool_C 1800000
scoreboard players set C_10000 swPool_C 10000
scoreboard players set C_7143 swPool_C 7143
scoreboard players set C_5000 swPool_C 5000
scoreboard players set C_2000 swPool_C 2000
scoreboard players set C_1000 swPool_C 1000
scoreboard players set C_625 swPool_C 625
scoreboard players set C_500 swPool_C 500
scoreboard players set C_256 swPool_C 256
scoreboard players set C_250 swPool_C 250
scoreboard players set C_100 swPool_C 100
scoreboard players set C_99 swPool_C 99
scoreboard players set C_50 swPool_C 50
scoreboard players set C_30 swPool_C 30
scoreboard players set C_20 swPool_C 20
scoreboard players set C_16 swPool_C 16
scoreboard players set C_10 swPool_C 10
scoreboard players set C_5 swPool_C 5
scoreboard players set C_2 swPool_C 2
scoreboard players set C_-1 swPool_C -1
scoreboard players set C_-10000 swPool_C -10000

#radius*10000 #Don't change this! This is somehow hard coded.
scoreboard players set C_r swPool_C 1250

#muk*10000 kinetic friction
scoreboard players set C_muk swPool_C 3000
#set from storage!
execute store result score C_muk swPool_C run data get storage minecraft:swpool fslide

#mur*10000 rolling friction
scoreboard players set C_mur swPool_C 200
#set from storage!
execute store result score C_mur swPool_C run data get storage minecraft:swpool froll

#mur*10000 impact friction
scoreboard players set C_mui swPool_C 150
#set from storage!
execute store result score C_mui swPool_C run data get storage minecraft:swpool fimpact

#mus*10000 striking friction
scoreboard players set C_mus swPool_C 7000
#set from storage!
execute store result score C_mus swPool_C run data get storage minecraft:swpool fstrike

#g*10000 W = Mg
scoreboard players set C_g swPool_C 98100
#g*100 W = Mg
scoreboard players set C_0.01g swPool_C 981

#constants needed for strike, predefined.
scoreboard players set m_ball swPool_C 1700
scoreboard players set m_stick swPool_C 6000
scoreboard players set C_r2 swPool_C 286
scoreboard players set i_ball_100 swPool_C 56
scoreboard players set C_l swPool_C 12500
scoreboard players set i_stick swPool_C 2700

# tp_duration # default: 1
execute unless score C_tp_dur swPool_C matches 0..59 run scoreboard players set C_tp_dur swPool_C 1
execute if score C_tp_dur swPool_C matches ..-1 run scoreboard players set C_tp_dur swPool_C 0
execute if score C_tp_dur swPool_C matches 60.. run scoreboard players set C_tp_dur swPool_C 59

#speed multiplier for breakshot # default: +150 (+150%) (100-180)
execute unless score break_power swPool_C matches 100..180 run scoreboard players set break_power swPool_C 150
execute if score break_power swPool_C matches ..99 run scoreboard players set break_power swPool_C 100
execute if score break_power swPool_C matches 181.. run scoreboard players set break_power swPool_C 180

# default: neural network breakshot (default:1)
execute unless data storage minecraft:swpool def_break run data merge storage minecraft:swpool {nn_break:1}
execute unless score nn_complexity swPool_C matches 1..4 run scoreboard players set nn_complexity swPool_C 1

# tick interval
execute unless score tick_interval swPool_C matches 1.. run scoreboard players set tick_interval swPool_C 1

function pool:classes/cue/reset

execute unless score Resetf swPool_var00 matches 1 run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"[PoolDatapack]: Pool-Datapack from Squid-Workshop Loaded.","italic":true,"color":"gray"},{"underlined":true,"italic":false,"text":"<Command Window>","color":"gray","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}}]
execute unless score Resetf swPool_var00 matches 1 run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"text":"[台球数据包]: 台球数据包-鱿鱼MC工作室已加载。","italic":true,"color":"gray"},{"underlined":true,"italic":false,"text":"<命令窗口>","color":"gray","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}}]

execute unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"[PoolDatapack-installer]: Several more steps and you can start with the command window.","italic": true,"color":"gray"}]
execute unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"text":"[台球数据包-安装]: 仅需完成以下设置即可通过命令窗口开始游玩。","italic": true,"color":"gray"}]
execute unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"[PoolDatapack-installer]: Please choose your game version by running one of the suggested commands. ","italic":true,"color":"gray"},{"italic":false,"underlined":true,"text":"<Click here to choose>","color":"gray","clickEvent":{"action":"suggest_command","value":"/function app:settings/pool/version"}}]
execute unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"text":"[台球数据包-安装]: 请选择并运行对应游戏版本的指令。 ","italic":true,"color":"gray"},{"italic":false,"underlined":true,"color":"gray","text":"<点此处选择>","clickEvent":{"action":"suggest_command","value":"/function app:settings/pool/version"}}]

execute if data storage minecraft:swpool {version:[1]} if score C_muk swPool_C matches 0 if score C_mur swPool_C matches 0 if score C_mui swPool_C matches 0 if score C_mus swPool_C matches 0 run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"[PoolDatapack-installer]: Please set coefficients of friction. ","italic":true,"color":"gray"},{"italic":false,"underlined":true,"text":"<Individual Settings> ","color":"gray","clickEvent":{"action":"suggest_command","value":"/function app:settings/pool/friction"}},{"italic":false,"underlined":true,"text":" <Use Default>","color":"gray","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/default"}}]
execute if data storage minecraft:swpool {version:[1]} if score C_muk swPool_C matches 0 if score C_mur swPool_C matches 0 if score C_mui swPool_C matches 0 if score C_mus swPool_C matches 0 run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"text":"[台球数据包-安装]: 请设定摩擦系数。","italic":true,"color":"gray"},{"italic":false,"underlined":true,"text":"<单独分别设置> ","color":"gray","clickEvent":{"action":"suggest_command","value":"/function app:settings/pool/friction"}},{"italic":false,"underlined":true,"text":" <点此使用默认值>","color":"gray","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/default"}}]

tellraw @a[tag=!swPool_CN,tag=!swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"[台球数据包PoolDatapack]: 欢迎 Welcome.","italic":true,"color":"gray"}]
tellraw @a[tag=!swPool_CN,tag=!swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"[台球数据包PoolDatapack]: ","italic":true,"color":"gray"},{"text":"语言 Language: ","italic":true,"color":"gray"},{"italic":false,"color":"gray","underlined":true,"text":" <简体中文> ","clickEvent":{"action":"run_command","value":"/function app:settings/pool/language/chinese_simplified"}},{"italic":false,"color":"gray","underlined":true,"text":" <English>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/language/english"}}]

execute unless data storage minecraft:swpool {displayscore:'sidebar'} unless data storage minecraft:swpool {displayscore:'dialogue'} run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"[PoolDatapack-Snooker]: Please pick a place to display score: ","italic":true,"color":"gray"},{"italic":false,"color":"gray","underlined":true,"text":" <Dialogue> ","clickEvent":{"action":"run_command","value":"/function app:settings/pool/snooker/display/dialogue"}},{"italic":false,"color":"gray","underlined":true,"text":" <Sidebar>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/snooker/display/sidebar"}}] 
execute unless data storage minecraft:swpool {displayscore:'sidebar'} unless data storage minecraft:swpool {displayscore:'dialogue'} run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"text":"[台球数据包-斯诺克]: 请选择在何处显示分数: ","italic":true,"color":"gray"},{"italic":false,"color":"gray","underlined":true,"text":" <聊天栏> ","clickEvent":{"action":"run_command","value":"/function app:settings/pool/snooker/display/dialogue"}},{"italic":false,"color":"gray","underlined":true,"text":" <侧边栏>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/snooker/display/sidebar"}}] 

scoreboard players set Resetf swPool_var00 0

execute as @a store result score @s swPool_player run data get entity @s UUID[1]

# math datapack test
scoreboard players reset #vIn swMath_V
scoreboard players reset #vOut swMath_V
scoreboard players set #vIn swMath_V 600000
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
execute unless score #vOut swMath_V matches 4999 run tellraw @a [{"text":"Math Datapack is REQUIRED but is not installed or is not working properly. Please get it from ","color":"red"}, {"text":"GitHub","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/MingshiYangUIUC/Math-Minecraft-Squid-Workshop-Project"}}]
execute unless score #vOut swMath_V matches 4999 run tellraw @a [{"text":"数学数据包未成功安装，获取：","color":"red"}, {"text":"GitHub","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/MingshiYangUIUC/Math-Minecraft-Squid-Workshop-Project"}}]