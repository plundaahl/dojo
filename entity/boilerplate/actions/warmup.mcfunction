# Initialize the action
scoreboard players set @s[score_actionTimer=-1] actionTimer 30
scoreboard players tag @s[score_actionTimer=-1] add interruptable

# Cleanup from the action
scoreboard players tag @s[score_actionTimer_min=1,score_actionTimer=1] remove interruptable
