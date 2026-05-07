tag @a[tag=swPool_ballinhand] remove swPool_ballinhand
tag @s add swPool_ballinhand
kill @e[tag=swPool_pool,tag=swPool_cue,limit=1,sort=nearest]

# if not practice mode. Give player a ball
execute if entity @e[tag=swPool_pooltable,type=armor_stand,tag=!swPool_practicemode] as @a[tag=swPool_ballinhand] run function app:get/pool/cueball_helper
