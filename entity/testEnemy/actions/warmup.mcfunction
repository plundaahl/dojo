# INIT THE ACTION
function do:effect/move/veryslow if @s[score_actionTimer=-1]
# scoreboard players tag @s[score_actionTimer=-1] add interruptable
scoreboard players set @s[score_actionTimer=-1] actionTimer 50

# PLAY ACTION ANIMATIONS
particle smoke ~ ~1 ~ 0.15 0.5 0.15 0 1

# CLEANUP
function do:effect/move/normal if @s[score_actionTimer_min=1,score_actionTimer=1]
# scoreboard players tag @s[score_actionTimer_min=1,score_actionTimer=1] remove interruptable
