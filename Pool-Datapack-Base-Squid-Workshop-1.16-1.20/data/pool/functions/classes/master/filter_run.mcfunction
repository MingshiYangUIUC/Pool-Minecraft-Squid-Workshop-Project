# first quick sort by direction
function pool:classes/master/quicksort_direction

# sort by speed magnitude if still needed
execute if entity @s[tag=swPool_near] run function pool:classes/master/quicksort_speed

# finally run physics engine for true potential collider
execute if entity @s[tag=swPool_near] run function pool:classes/master/select