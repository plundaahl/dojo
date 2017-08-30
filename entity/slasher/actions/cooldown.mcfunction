# INIT
scoreboard players set @s[tag=beginAction] actionTimer 40
function do:effect/move/freeze if @s[tag=beginAction]

# CLEANUP
function do:effect/move/normal if @s[score_actionTimer=1]
