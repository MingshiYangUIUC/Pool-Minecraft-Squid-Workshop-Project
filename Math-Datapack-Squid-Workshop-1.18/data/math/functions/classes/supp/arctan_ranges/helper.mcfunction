# call each function based on range of x and obtain y

scoreboard players operation xx swMath_V = x swMath_V
execute if score xx swMath_V matches 0000..40000 run function math:classes/supp/arctan_ranges/40000
execute if score xx swMath_V matches 40001..80000 run function math:classes/supp/arctan_ranges/80000
execute if score xx swMath_V matches 80001..320000 run function math:classes/supp/arctan_ranges/320000
execute if score xx swMath_V matches 320001..1000000 run function math:classes/supp/arctan_ranges/1000000
execute if score xx swMath_V matches 1000001..30000000 run function math:classes/supp/arctan_ranges/30000000
execute if score xx swMath_V matches 30000001..100000000 run function math:classes/supp/arctan_ranges/100000000
execute if score xx swMath_V matches 100000001.. run scoreboard players set y swMath_V 15708

#tellraw @a[tag=swMath_debug] [{"text":"y: "},{"score":{"name": "y","objective": "swMath_V"}}]