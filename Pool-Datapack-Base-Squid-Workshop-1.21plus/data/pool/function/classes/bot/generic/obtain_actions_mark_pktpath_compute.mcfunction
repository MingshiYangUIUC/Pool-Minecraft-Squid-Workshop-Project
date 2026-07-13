# already have 
# scoreboard players operation #xaim swMath_V as aim starting point
# scoreboard players operation #zaim swMath_V as aim starting point
# scoreboard players operation #xpkt swMath_V as pocket direction
# scoreboard players operation #zpkt swMath_V as pocket direction
# #xobj swMath_V as object ball
# #zobj swMath_V as object ball

#particle minecraft:dripping_lava ~ ~2 ~ 0 0 0 0 1 force

scoreboard players operation #xobj swMath_V = @s swPool_tmpposx
scoreboard players operation #zobj swMath_V = @s swPool_tmpposz

# v = pocket - aim point
scoreboard players operation #vx swMath_V = #xpkt swMath_V
scoreboard players operation #vz swMath_V = #zpkt swMath_V
scoreboard players operation #vx swMath_V -= #xaim swMath_V
scoreboard players operation #vz swMath_V -= #zaim swMath_V

# w = object ball - aim point
scoreboard players operation #wx swMath_V = #xobj swMath_V
scoreboard players operation #wz swMath_V = #zobj swMath_V
scoreboard players operation #wx swMath_V -= #xaim swMath_V
scoreboard players operation #wz swMath_V -= #zaim swMath_V

function pool:classes/bot/generic/compute_path_down10

#tellraw @a[tag=swPool_debug] [{"text":"dot, "},{"score":{"objective":"swMath_V","name":"#dot"}}]
#tellraw @a[tag=swPool_debug] [{"text":"adsq, "},{"score":{"objective":"swMath_V","name":"#adsq"}}]
#tellraw @a[tag=swPool_debug] [{"text":"crosssq, "},{"score":{"objective":"swMath_V","name":"#crosssq"}}]
#tellraw @a[tag=swPool_debug] [{"text":"blocksq, "},{"score":{"objective":"swMath_V","name":"#blocksq"}}]

execute if score #dot swMath_V matches 1.. if score #crosssq swMath_V < #blocksq swMath_V run scoreboard players set #pkt_blocked swMath_V 1
