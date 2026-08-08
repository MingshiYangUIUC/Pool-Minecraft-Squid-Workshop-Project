scoreboard players operation #vx_original swMath_V = #self swPool_vx
scoreboard players operation #vz_original swMath_V = #self swPool_vz

execute if score #self swPool_vx matches ..-1 run function pool:classes/motion/new/nvx
execute if score #self swPool_vx matches 1.. run function pool:classes/motion/new/pvx

execute if score #self swPool_vz matches ..-1 run function pool:classes/motion/new/nvz
execute if score #self swPool_vz matches 1.. run function pool:classes/motion/new/pvz

scoreboard players operation #posrefresh swMath_V = #accumulator swMath_V
scoreboard players operation #posrefresh swMath_V %= #C_10 swMath_C

execute if score #posrefresh swMath_V matches 0 run function pool:classes/motion/new/_pos_refresh
execute unless score #posrefresh swMath_V matches 0 run function pool:classes/motion/new/_pos_accumulate
