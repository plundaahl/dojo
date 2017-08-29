# INIT
function do:effect/move/slow if @s[tag=beginAction]
scoreboard players set @s[tag=beginAction] actionTimer 40
