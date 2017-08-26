# Capture Input. Happens by default.
function do:action/nextAction if @s[tag=makeDecision,score_nextAction_min=1]

# ACTIONS
function entity:player/actions/default if @s[score_actionSelect_min=0,score_actionSelect=0]
function entity:player/actions/dodge/main if @s[score_actionSelect_min=11,score_actionSelect=11]
