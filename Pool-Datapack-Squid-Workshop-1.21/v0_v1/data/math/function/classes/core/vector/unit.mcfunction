#get magnitude of V of #Ai,#Aj,#Ak. sqrt(#Ai**2+#Aj**2+#Ak**2)
#reutn O's unit vector (#vOi,#vOj,#vOk)

function math:classes/core/vector/magnitude
scoreboard players operation #vMag swMath_V = #vOut swMath_V


scoreboard players operation #vIn swMath_V = #vMag swMath_V
scoreboard players operation #vIn2 swMath_V = #vAi swMath_V
function math:classes/core/operations/division_4d
scoreboard players operation #vOi swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = #vMag swMath_V
scoreboard players operation #vIn2 swMath_V = #vAj swMath_V
function math:classes/core/operations/division_4d
scoreboard players operation #vOj swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = #vMag swMath_V
scoreboard players operation #vIn2 swMath_V = #vAk swMath_V
function math:classes/core/operations/division_4d
scoreboard players operation #vOk swMath_V = #vOut swMath_V

#tellraw @a [{"text":"i: "},{"score":{"name": "#vOi","objective": "swMath_V"}}]
#tellraw @a [{"text":"j: "},{"score":{"name": "#vOj","objective": "swMath_V"}}]
#tellraw @a [{"text":"k: "},{"score":{"name": "#vOk","objective": "swMath_V"}}]