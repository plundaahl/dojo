# MAKE DECISION AUTO TAG
# Gives all entities a tag of "makeDecision" when (and only when) their
# comboSelect and actionTimer scores == 0.
scoreboard players tag @e[tag=makeDecision] remove makeDecision
scoreboard players tag @e[score_comboSelect=0,score_actionSelect=0,score_actionTimer_min=0,score_actionTimer=0] add makeDecision
