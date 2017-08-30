# INIT
scoreboard players set @s[tag=beginAction] actionTimer 10
function do:effect/move/fast if @s[tag=beginAction]

# CLEANUP
function do:effect/move/normal if @s[score_actionTimer=1]
