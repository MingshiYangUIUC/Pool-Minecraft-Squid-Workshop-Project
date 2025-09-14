# determine angle
execute if score #tipregion swMath_V matches 1 run scoreboard players set #TTin swMath_V -20944
execute if score #tipregion swMath_V matches -1 run scoreboard players set #TTin swMath_V 20944

# precompute and cache sin and cos
scoreboard players operation #vIn swMath_V = #TTin swMath_V
function math:classes/core/trig/sin_rad
scoreboard players operation #sint swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = #TTin swMath_V
function math:classes/core/trig/cos_rad
scoreboard players operation #cost swMath_V = #vOut swMath_V

# --- rotate vector for cue ---
scoreboard players operation #HHin swMath_V = #cuevoH swMath_V
scoreboard players operation #VVin swMath_V = #cuevoV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #cuevoH swMath_V = #HHout swMath_V
scoreboard players operation #cuevoV swMath_V = #VVout swMath_V

# --- rotate vector for 1 ---
scoreboard players operation #HHin swMath_V = #1voH swMath_V
scoreboard players operation #VVin swMath_V = #1voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #1voH swMath_V = #HHout swMath_V
scoreboard players operation #1voV swMath_V = #VVout swMath_V

# --- rotate vector for 2 ---
scoreboard players operation #HHin swMath_V = #2voH swMath_V
scoreboard players operation #VVin swMath_V = #2voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #2voH swMath_V = #HHout swMath_V
scoreboard players operation #2voV swMath_V = #VVout swMath_V

# --- rotate vector for 3 ---
scoreboard players operation #HHin swMath_V = #3voH swMath_V
scoreboard players operation #VVin swMath_V = #3voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #3voH swMath_V = #HHout swMath_V
scoreboard players operation #3voV swMath_V = #VVout swMath_V

# --- rotate vector for 4 ---
scoreboard players operation #HHin swMath_V = #4voH swMath_V
scoreboard players operation #VVin swMath_V = #4voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #4voH swMath_V = #HHout swMath_V
scoreboard players operation #4voV swMath_V = #VVout swMath_V

# --- rotate vector for 5 ---
scoreboard players operation #HHin swMath_V = #5voH swMath_V
scoreboard players operation #VVin swMath_V = #5voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #5voH swMath_V = #HHout swMath_V
scoreboard players operation #5voV swMath_V = #VVout swMath_V

# --- rotate vector for 6 ---
scoreboard players operation #HHin swMath_V = #6voH swMath_V
scoreboard players operation #VVin swMath_V = #6voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #6voH swMath_V = #HHout swMath_V
scoreboard players operation #6voV swMath_V = #VVout swMath_V

# --- rotate vector for 7 ---
scoreboard players operation #HHin swMath_V = #7voH swMath_V
scoreboard players operation #VVin swMath_V = #7voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #7voH swMath_V = #HHout swMath_V
scoreboard players operation #7voV swMath_V = #VVout swMath_V

# --- rotate vector for 8 ---
scoreboard players operation #HHin swMath_V = #8voH swMath_V
scoreboard players operation #VVin swMath_V = #8voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #8voH swMath_V = #HHout swMath_V
scoreboard players operation #8voV swMath_V = #VVout swMath_V

# --- rotate vector for 9 ---
scoreboard players operation #HHin swMath_V = #9voH swMath_V
scoreboard players operation #VVin swMath_V = #9voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #9voH swMath_V = #HHout swMath_V
scoreboard players operation #9voV swMath_V = #VVout swMath_V

# --- rotate vector for 10 ---
scoreboard players operation #HHin swMath_V = #10voH swMath_V
scoreboard players operation #VVin swMath_V = #10voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #10voH swMath_V = #HHout swMath_V
scoreboard players operation #10voV swMath_V = #VVout swMath_V

# --- rotate vector for 11 ---
scoreboard players operation #HHin swMath_V = #11voH swMath_V
scoreboard players operation #VVin swMath_V = #11voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #11voH swMath_V = #HHout swMath_V
scoreboard players operation #11voV swMath_V = #VVout swMath_V

# --- rotate vector for 12 ---
scoreboard players operation #HHin swMath_V = #12voH swMath_V
scoreboard players operation #VVin swMath_V = #12voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #12voH swMath_V = #HHout swMath_V
scoreboard players operation #12voV swMath_V = #VVout swMath_V

# --- rotate vector for 13 ---
scoreboard players operation #HHin swMath_V = #13voH swMath_V
scoreboard players operation #VVin swMath_V = #13voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #13voH swMath_V = #HHout swMath_V
scoreboard players operation #13voV swMath_V = #VVout swMath_V

# --- rotate vector for 14 ---
scoreboard players operation #HHin swMath_V = #14voH swMath_V
scoreboard players operation #VVin swMath_V = #14voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #14voH swMath_V = #HHout swMath_V
scoreboard players operation #14voV swMath_V = #VVout swMath_V

# --- rotate vector for 15 ---
scoreboard players operation #HHin swMath_V = #15voH swMath_V
scoreboard players operation #VVin swMath_V = #15voV swMath_V
function pool:classes/break_nn/rotate_pair_cached
scoreboard players operation #15voH swMath_V = #HHout swMath_V
scoreboard players operation #15voV swMath_V = #VVout swMath_V