# Initialize the action
scoreboard players set @s[tag=beginAction] actionTimer 30
scoreboard players tag @s[tag=beginAction] add interruptable

# Cleanup from the action
scoreboard players tag @s[score_actionTimer_min=1,score_actionTimer=1] remove interruptable
