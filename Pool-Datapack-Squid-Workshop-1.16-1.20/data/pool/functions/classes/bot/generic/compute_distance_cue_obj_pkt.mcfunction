# measure from object ball to cue ball, and from object ball to pocket with matching pktid

# cue ball
scoreboard players operation #dx swMath_V = @s swPool_tmpposx
scoreboard players operation #dz swMath_V = @s swPool_tmpposz

scoreboard players operation #dx swMath_V -= @e[tag=swPool_cue,tag=swPool_pool,limit=1] swPool_tmpposx
scoreboard players operation #dz swMath_V -= @e[tag=swPool_cue,tag=swPool_pool,limit=1] swPool_tmpposz

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
