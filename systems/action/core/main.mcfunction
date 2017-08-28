# FRAMEWORK CODE
# Advance actionTimer towards 0
scoreboard players add @e[score_actionTimer=-1] actionTimer 1
scoreboard players remove @e[score_actionTimer_min=1] actionTimer 1

# For all entities with actionTimer scores equal to 0, run the timerZero script
# to handle updating actionSelect and comboSelect.
execute @e[score_actionTimer_min=0,score_actionTimer=0] ~ ~ ~ function systems:action/core/timerZero
