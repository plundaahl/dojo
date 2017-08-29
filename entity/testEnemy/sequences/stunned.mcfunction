scoreboard players set @s[tag=makeDecision] actionSelect 2
scoreboard players set @s[tag=makeDecision] actionTimer -1

function entity:testenemy/actions/backUp if @s[score_actionSelect_min=2,score_actionSelect=2]
function entity:testenemy/actions/cleanup if @s[score_actionSelect_min=1,score_actionSelect=1]
