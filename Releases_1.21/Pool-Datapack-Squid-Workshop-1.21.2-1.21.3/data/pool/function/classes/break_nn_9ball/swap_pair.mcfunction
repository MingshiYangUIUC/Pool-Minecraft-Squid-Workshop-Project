# --- swap 2-3 ---
scoreboard players operation #tmp_voH swMath_V = #2voH swMath_V
scoreboard players operation #tmp_voV swMath_V = #2voV swMath_V
scoreboard players operation #2voH swMath_V = #3voH swMath_V
scoreboard players operation #2voV swMath_V = #3voV swMath_V
scoreboard players operation #3voH swMath_V = #tmp_voH swMath_V
scoreboard players operation #3voV swMath_V = #tmp_voV swMath_V

# --- swap 4-6 ---
scoreboard players operation #tmp_voH swMath_V = #4voH swMath_V
scoreboard players operation #tmp_voV swMath_V = #4voV swMath_V
scoreboard players operation #4voH swMath_V = #6voH swMath_V
scoreboard players operation #4voV swMath_V = #6voV swMath_V
scoreboard players operation #6voH swMath_V = #tmp_voH swMath_V
scoreboard players operation #6voV swMath_V = #tmp_voV swMath_V

# --- swap 7-8 ---
scoreboard players operation #tmp_voH swMath_V = #7voH swMath_V
scoreboard players operation #tmp_voV swMath_V = #7voV swMath_V
scoreboard players operation #7voH swMath_V = #8voH swMath_V
scoreboard players operation #7voV swMath_V = #8voV swMath_V
scoreboard players operation #8voH swMath_V = #tmp_voH swMath_V
scoreboard players operation #8voV swMath_V = #tmp_voV swMath_V
