# TEST MOB MAIN SCRIPT

function entity:testmob/decisions if @s[tag=makeDecision]
function entity:testmob/actions if @s[tag=!makeDecision,score_actionSelect_min=1]
