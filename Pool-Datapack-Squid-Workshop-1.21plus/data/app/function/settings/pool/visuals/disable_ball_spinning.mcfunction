data remove storage minecraft:swpool allowspin
data merge storage minecraft:swpool {disallowspin:1}
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"The balls do not show spinning animation. Physical behavior is unaffected."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"关闭球的旋转动画，不影响物理模拟"}]
