# FRAMEWORK CODE
# Timer Code
scoreboard players add @e[score_actionTimer=-1] actionTimer 1
scoreboard players remove @e[score_actionTimer_min=1] actionTimer 1

# Action Select & Timer reset
# scoreboard players set @e[score_actionSelect=0] actionTimer 0
scoreboard players set @e[score_actionSelect=-1] actionSelect 0
scoreboard players set @e[score_actionTimer_min=0,score_actionTimer=0,score_actionSelect_min=1] actionSelect 0

# Tag entities that have 0 for both actionTimer and actionSelect
scoreboard players tag @e[tag=makeDecision] remove makeDecision
scoreboard players tag @e[score_actionSelect=0,score_actionTimer_min=0,score_actionTimer=0] add makeDecision
