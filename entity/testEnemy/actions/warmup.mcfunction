# INIT THE ACTION
function do:effect/move/slowish if @s[tag=beginAction]
scoreboard players tag @s[tag=beginAction] add interruptable
scoreboard players set @s[tag=beginAction] actionTimer 50

# PLAY ACTION ANIMATIONS
particle smoke ~ ~0.75 ~ 0.15 0.5 0.15 0 1

# CLEANUP
function do:effect/move/normal if @s[score_actionTimer_min=1,score_actionTimer=1]
scoreboard players tag @s[score_actionTimer_min=1,score_actionTimer=1] remove interruptable

# INTERRUPTABLE CODE
scoreboard players tag @s[score_hurtLagged_min=1] add interrupted
scoreboard players set @s[tag=interrupted] nextSequence 1
