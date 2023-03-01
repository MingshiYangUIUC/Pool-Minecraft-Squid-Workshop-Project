#Current: vex and vez are same unit of time as omegas. m/s*10000, rad/s*10000
#0. vseparate if needed [UNIT] Magnitudes:                                                      Methods:
#1. get plus/minus and K                                                                                use direction of v_normal and side of cushion!!!
#2. calculate normal force N              N=|v_normal|*2*m/1tick
#3. calculate friction                    F=mui*K*N 
#4. calculate change of P/v               ΔP=F*1tick     /   Δv_parallel=F*1tick/m   = v_normal*2*K*mui
#5. calculate change of L/omega           ΔL=F*r*1tick   /   Δomega_y=F*r*1tick/I    = v_normal*5/r*K*mui
#6. add back and vcombine_ultimate

#K value? K is proportional to contact velocity... 
#                                         K = v +- omega_y*r

#Future:
#7. Merge with "change of state": No need to combine in 6 then separate again...


#tellraw @a [{"text":"vex, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" vez, "},{"score":{"objective":"swPool_vez","name":"@s"}},{"text":" wy "},{"score":{"objective":"swPool_wy","name":"@s"}}]


#step 1 swPool_x: facing +-x; cushion // +-z. vice versa
#record positive or negative
tag @s[tag=swPool_x,scores={swPool_vex=0..}] add swPool_+x
tag @s[tag=swPool_x,scores={swPool_vex=..-1}] add swPool_-x
tag @s[tag=swPool_z,scores={swPool_vez=0..}] add swPool_+z
tag @s[tag=swPool_z,scores={swPool_vez=..-1}] add swPool_-z
#record vnormal for convenience
execute if entity @s[tag=swPool_x] run scoreboard players operation VN swPool_var00 = @s swPool_vex
execute if entity @s[tag=swPool_z] run scoreboard players operation VN swPool_var00 = @s swPool_vez


#step 1 get K
scoreboard players operation WR swPool_var00 = @s swPool_wy
scoreboard players operation WR swPool_var00 /= C_100 swPool_C
scoreboard players operation WR swPool_var00 *= C_r swPool_C
scoreboard players operation WR swPool_var00 /= C_100 swPool_C
execute if entity @s[tag=swPool_x] run scoreboard players operation K swPool_var00 = @s swPool_vez
execute if entity @s[tag=swPool_z] run scoreboard players operation K swPool_var00 = @s swPool_vex
execute if entity @s[tag=swPool_+x] run scoreboard players operation K swPool_var00 -= WR swPool_var00
execute if entity @s[tag=swPool_-x] run scoreboard players operation K swPool_var00 += WR swPool_var00
execute if entity @s[tag=swPool_+z] run scoreboard players operation K swPool_var00 += WR swPool_var00
execute if entity @s[tag=swPool_-z] run scoreboard players operation K swPool_var00 -= WR swPool_var00
#execute if score K swPool_var00 matches 1.. run scoreboard players set K swPool_var00 10000
#execute if score K swPool_var00 matches ..-1 run scoreboard players set K swPool_var00 -10000
#tellraw @a [{"text":"K, "},{"score":{"objective":"swPool_var00","name":"K"}}]

#step4 get magnitude of Δv_parallel  v_normal*2*K*mui
scoreboard players operation dVP swPool_var00 = VN swPool_var00
scoreboard players operation dVP swPool_var00 *= C_2 swPool_C
scoreboard players operation dVP swPool_var00 /= C_100 swPool_C
scoreboard players operation dVP swPool_var00 *= K swPool_var00
scoreboard players operation dVP swPool_var00 /= C_100 swPool_C
scoreboard players operation dVP swPool_var00 *= C_mui swPool_C
#scoreboard players operation dVP swPool_var00 *= C_10 swPool_C
scoreboard players operation dVP swPool_var00 /= C_10000 swPool_C
execute if score dVP swPool_var00 matches ..-1 run scoreboard players operation dVP swPool_var00 *= C_-1 swPool_C

#tellraw @a [{"text":"dVP, "},{"score":{"objective":"swPool_var00","name":"dVP"}}]

#step5 get magnitude of Δomega_y = Δv_parallel/r/2*5
scoreboard players operation dWY swPool_var00 = dVP swPool_var00
scoreboard players operation dWY swPool_var00 *= C_5 swPool_C
scoreboard players operation dWY swPool_var00 /= C_2 swPool_C
scoreboard players operation dWY swPool_var00 *= C_100 swPool_C
scoreboard players operation dWY swPool_var00 /= C_r swPool_C
scoreboard players operation dWY swPool_var00 *= C_100 swPool_C
execute if score dWY swPool_var00 matches ..-1 run scoreboard players operation dVP swPool_var00 *= C_-1 swPool_C

#step 6: dVP is negative sign of K, and dWY positive if -z and +x, negative if +z and -x
#dVP:
execute if score K swPool_var00 matches 0.. run scoreboard players operation dVP swPool_var00 *= C_-1 swPool_C

#dWY
execute if entity @s[tag=swPool_+x] if score K swPool_var00 matches ..-1 run scoreboard players operation dWY swPool_var00 *= C_-1 swPool_C
execute if entity @s[tag=swPool_-x] if score K swPool_var00 matches 0.. run scoreboard players operation dWY swPool_var00 *= C_-1 swPool_C
execute if entity @s[tag=swPool_+z] if score K swPool_var00 matches 0.. run scoreboard players operation dWY swPool_var00 *= C_-1 swPool_C
execute if entity @s[tag=swPool_-z] if score K swPool_var00 matches ..-1 run scoreboard players operation dWY swPool_var00 *= C_-1 swPool_C

#add back

scoreboard players operation @s[tag=swPool_x] swPool_vez += dVP swPool_var00
scoreboard players operation @s[tag=swPool_z] swPool_vex += dVP swPool_var00

scoreboard players operation @s swPool_wy += dWY swPool_var00

#vcombine_ultimate, after flipping the sign of v_normal
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_vex *= C_-1 swPool_C
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_vez *= C_-1 swPool_C
function pool:classes/physics/vcombine_ve
#scoreboard players operation @s swPool_v *= C_500 swPool_C

#remove tag used
tag @s remove swPool_+x
tag @s remove swPool_-x
tag @s remove swPool_+z
tag @s remove swPool_-z

#tellraw @a [{"text":"vex, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" vez, "},{"score":{"objective":"swPool_vez","name":"@s"}},{"text":" VN "},{"score":{"objective":"swPool_var00","name":"VN"}},{"text":" WR "},{"score":{"objective":"swPool_var00","name":"WR"}},{"text":" K "},{"score":{"objective":"swPool_var00","name":"K"}},{"text":" wy "},{"score":{"objective":"swPool_wy","name":"@s"}},{"text":" dvp "},{"score":{"objective":"swPool_var00","name":"dVP"}},{"text":" dwy "},{"score":{"objective":"swPool_var00","name":"dWY"}}]
#tellraw @a [{"text":"v, "},{"score":{"objective":"swPool_v","name":"@s"}}]