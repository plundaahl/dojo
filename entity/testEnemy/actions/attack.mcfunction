# INIT THE ACTION
function do:query/dir/getMotion if @s[score_actionTimer=-1]
function do:move/jump/shallow/long if @s[score_actionTimer=-1]
scoreboard players set @s[score_actionTimer=-1] actionTimer 10

# PLAY ANIMATION
particle crit ~ ~1.5 ~ 0.15 0.15 0.15 0 2
