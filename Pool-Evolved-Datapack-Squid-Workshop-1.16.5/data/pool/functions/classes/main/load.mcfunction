execute unless data storage minecraft:swpool keepsession run function pool:classes/main/clean

scoreboard objectives add swPool_C dummy
scoreboard objectives add swPool_D100 dummy
scoreboard objectives add swPool_DXX dummy
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
scoreboard objectives modify swPool_Score displayname "Score"


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

#define constants
#decimal places and math constants
scoreboard players set C_100000000 swPool_C 100000000
scoreboard players set C_10000 swPool_C 10000
scoreboard players set C_7143 swPool_C 7143
scoreboard players set C_2000 swPool_C 2000
scoreboard players set C_1000 swPool_C 1000
scoreboard players set C_500 swPool_C 500
scoreboard players set C_250 swPool_C 250
scoreboard players set C_100 swPool_C 100
scoreboard players set C_50 swPool_C 50
scoreboard players set C_20 swPool_C 20
scoreboard players set C_10 swPool_C 10
scoreboard players set C_2 swPool_C 2
scoreboard players set C_-10000 swPool_C -10000

#radius*10000
scoreboard players set C_r swPool_C 1250

#muk*10000 kinetic friction
scoreboard players set C_muk swPool_C 3000

#mur*10000 rolling friction
scoreboard players set C_mur swPool_C 200

#g*10000 W = Mg
scoreboard players set C_g swPool_C 98100
#g*100 W = Mg
scoreboard players set C_0.01g swPool_C 981

function pool:classes/cue/reset

tellraw @a [{"text":"[Server]: Pool-Datapack from Squid-Workshop Loaded. ","italic":true,"color":"gray"},{"underlined":true,"italic":false,"text":"<Command Window>","color":"","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}}]