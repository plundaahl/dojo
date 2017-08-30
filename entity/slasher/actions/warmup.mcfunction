# INIT
function do:effect/move/slow if @s[tag=beginAction]
scoreboard players set @s[tag=beginAction] actionTimer 30

# PLAY
particle smoke ~ ~0.25 ~ 0.15 1 0.15 0 2
particle reddust ~ ~ ~ 0.3 0 0.3 0 5
