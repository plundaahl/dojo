# INIT THE ACTION
function do:query/dir/getMotion if @s[tag=beginAction]
function do:move/jump/shallow/long if @s[tag=beginAction]
scoreboard players set @s[tag=beginAction] actionTimer 10

# PLAY ANIMATION
particle crit ~ ~1.5 ~ 0.15 0.15 0.15 0 2
