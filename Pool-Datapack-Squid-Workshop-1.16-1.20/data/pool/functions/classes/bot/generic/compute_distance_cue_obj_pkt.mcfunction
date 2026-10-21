# measure from object ball to cue ball, and from object ball to pocket with matching pktid

# cue ball
scoreboard players operation #dx swMath_V = @s swPool_tmpposx
scoreboard players operation #dz swMath_V = @s swPool_tmpposz

scoreboard players operation #x_cb swMath_V = @e[tag=swPool_cue,tag=swPool_pool,limit=1] swPool_tmpposx
scoreboard players operation #z_cb swMath_V = @e[tag=swPool_cue,tag=swPool_pool,limit=1] swPool_tmpposz

scoreboard players operation #dx swMath_V -= #x_cb swMath_V
scoreboard players operation #dz swMath_V -= #z_cb swMath_V

tellraw @a[tag=swPool_debug] [{"text":"xcue, "},{"score":{"objective":"swMath_V","name":"#x_cb"}}]
tellraw @a[tag=swPool_debug] [{"text":"zcue, "},{"score":{"objective":"swMath_V","name":"#z_cb"}}]

# additionally measure distance from cue ball to cushion (closest component)
scoreboard players operation #x_cb swMath_V -= TABLE swPool_posx
scoreboard players operation #z_cb swMath_V -= TABLE swPool_posz

# abs value
execute if score #x_cb swMath_V matches ..-1 run scoreboard players operation #x_cb swMath_V *= #C_-1 swMath_C
execute if score #z_cb swMath_V matches ..-1 run scoreboard players operation #z_cb swMath_V *= #C_-1 swMath_C

# difference wrt cushion edge (negative value because size is larger than relative position)
scoreboard players operation #x_cb swMath_V -= TABLE swPool_sizex
scoreboard players operation #z_cb swMath_V -= TABLE swPool_sizez

tellraw @a[tag=swPool_debug] [{"text":"dxcue, "},{"score":{"objective":"swMath_V","name":"#x_cb"}}]
tellraw @a[tag=swPool_debug] [{"text":"dzcue, "},{"score":{"objective":"swMath_V","name":"#z_cb"}}]

# get "larger" value (closer value)
execute if score #x_cb swMath_V > #z_cb swMath_V run scoreboard players operation #d_cushion swMath_V = #x_cb swMath_V
execute unless score #x_cb swMath_V > #z_cb swMath_V run scoreboard players operation #d_cushion swMath_V = #z_cb swMath_V
scoreboard players operation #d_cushion swMath_V *= #C_-1 swMath_C

tellraw @a[tag=swPool_debug] [{"text":"dcush, "},{"score":{"objective":"swMath_V","name":"#d_cushion"}}]
# scale by radius
scoreboard players operation #d_cushion swMath_V *= #C_10000 swMath_C
scoreboard players operation #d_cushion swMath_V /= C_r swPool_C

# linear cushion score adjustment: 60% at 0 radii, 100% at 2 radii
# #d_cushion: 10000 = 1 radius
scoreboard players operation #cushion_penalty swMath_V = #d_cushion swMath_V
scoreboard players operation #cushion_penalty swMath_V /= C_500 swPool_C
scoreboard players add #cushion_penalty swMath_V 60
execute if score #cushion_penalty swMath_V matches ..59 run scoreboard players set #cushion_penalty swMath_V 60
execute if score #cushion_penalty swMath_V matches 101.. run scoreboard players set #cushion_penalty swMath_V 100

tellraw @a[tag=swPool_debug] [{"text":"cushion_penalty, "},{"score":{"objective":"swMath_V","name":"#cushion_penalty"}}]

# downscale to unit 1000
scoreboard players operation #dx swMath_V /= #C_10 swMath_C
scoreboard players operation #dz swMath_V /= #C_10 swMath_C

scoreboard players operation #dx swMath_V *= #dx swMath_V
scoreboard players operation #dz swMath_V *= #dz swMath_V

scoreboard players operation #vIn swMath_V = #dx swMath_V
scoreboard players operation #vIn swMath_V += #dz swMath_V

function math:classes/core/operations/sqrt
scoreboard players operation #dcue swMath_V = #vOut swMath_V

# pocket
scoreboard players operation #dx swMath_V = @s swPool_tmpposx
scoreboard players operation #dz swMath_V = @s swPool_tmpposz

execute as @e[tag=swPool_aim_pkt] if score @s swPool_pktid = #tmp swPool_pktid run scoreboard players operation #dx swMath_V -= @s swPool_tmpposx
execute as @e[tag=swPool_aim_pkt] if score @s swPool_pktid = #tmp swPool_pktid run scoreboard players operation #dz swMath_V -= @s swPool_tmpposz

# downscale to unit 1000
scoreboard players operation #dx swMath_V /= #C_10 swMath_C
scoreboard players operation #dz swMath_V /= #C_10 swMath_C

scoreboard players operation #dx swMath_V *= #dx swMath_V
scoreboard players operation #dz swMath_V *= #dz swMath_V

scoreboard players operation #vIn swMath_V = #dx swMath_V
scoreboard players operation #vIn swMath_V += #dz swMath_V

function math:classes/core/operations/sqrt
scoreboard players operation #dpkt swMath_V = #vOut swMath_V

#tellraw @a[tag=swPool_debug] [{"text":"dcue, "},{"score":{"objective":"swMath_V","name":"#dcue"}}]
#tellraw @a[tag=swPool_debug] [{"text":"dpkt, "},{"score":{"objective":"swMath_V","name":"#dpkt"}}]

# scale to multiple of ball radius
scoreboard players operation #dcue swMath_V *= #C_10000 swMath_C
scoreboard players operation #dcue swMath_V /= C_r swPool_C
scoreboard players operation #dpkt swMath_V *= #C_10000 swMath_C
scoreboard players operation #dpkt swMath_V /= C_r swPool_C

#tellraw @a[tag=swPool_debug] [{"text":"dcue2, "},{"score":{"objective":"swMath_V","name":"#dcue"}}]
#tellraw @a[tag=swPool_debug] [{"text":"dpkt2, "},{"score":{"objective":"swMath_V","name":"#dpkt"}}]
