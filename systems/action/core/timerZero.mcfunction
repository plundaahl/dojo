# ---------------------------------------------------------------------------- #
# This script runs for each entity that uses the action system and whose       #
# actionTimer score hits 0.                                                    #
# ---------------------------------------------------------------------------- #

# Advance actionSelect toward 0
scoreboard players add @s[score_actionSelect=-1] actionSelect 1
scoreboard players remove @s[score_actionSelect_min=1] actionSelect 1

# If actionSelect hits 0,
# set sequenceSelect to 0
scoreboard players set @s[score_actionSelect_min=0,score_actionSelect=0,score_sequenceSelect=-1] sequenceSelect 0
scoreboard players set @s[score_actionSelect_min=0,score_actionSelect=0,score_sequenceSelect_min=1] sequenceSelect 0

# If actionSelect and sequenceSelect are still nonzero, set actionTimer to -1.
function systems:action/core/timerMinusOne unless @s[score_actionSelect_min=0,score_actionSelect=0,score_sequenceSelect_min=0,score_sequenceSelect=0]
