# Tags entities with non-zero sequenceSelect scores who have actionSelect and
# actionTimer scores equal to 0. Adds the "beginSequence" tag.
scoreboard players tag @e[tag=beginSequence] remove beginSequence
execute @e[score_actionSelect_min=0,score_actionSelect=0,score_actionTimer_min=0,score_actionTimer=0] ~ ~ ~ function systems:action/extensions/beginsequence/tagIfMatch
