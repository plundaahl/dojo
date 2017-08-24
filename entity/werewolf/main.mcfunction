# WEREWOLF MAIN SCRIPT

function entity:werewolf/decisions if @s[tag=makeDecision]
function entity:werewolf/actions if @s[tag=!makeDecision,score_actionSelect_min=1]
