# INIT
function do:effect/move/slow if @s[score_actionTimer=-1]
scoreboard players set @s[score_actionTimer=-1] actionTimer 40
