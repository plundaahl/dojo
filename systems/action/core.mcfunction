# FRAMEWORK CODE
# Make sure that comboSelect and actionSelect are always zero or positive
scoreboard players set @e[score_actionSelect=-1] actionSelect 0
scoreboard players set @e[score_comboSelect=-1] comboSelect 0

# Advance actionTimer towards 0
scoreboard players add @e[score_actionTimer=-1] actionTimer 1
scoreboard players remove @e[score_actionTimer_min=1] actionTimer 1

# When actionTimer hits 0,
# Decrement actionSelect by 1 and set actionTimer to -1.
scoreboard players remove @e[score_actionTimer_min=0,score_actionTimer=0,score_actionSelect_min=1] actionSelect 1
scoreboard players set @e[score_actionTimer_min=0,score_actionTimer=0,score_comboSelect_min=1,score_actionSelect_min=1] actionTimer -1
# If actionSelect and actionTimer both hit 0, set comboSelect to 0.
scoreboard players set @e[score_actionTimer_min=0,score_actionTimer=0,score_actionSelect_min=0,score_actionSelect=0,score_comboSelect_min=1] comboSelect 0
