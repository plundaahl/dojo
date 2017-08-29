scoreboard players set @s[tag=makeDecision] actionSelect 4
scoreboard players set @s[tag=makeDecision] actionTimer -1

function entity:testenemy/actions/warmup if @s[score_actionSelect_min=4,score_actionSelect=4]
function entity:testenemy/actions/attack if @s[score_actionSelect_min=3,score_actionSelect=3]
function entity:testenemy/actions/cooldown if @s[score_actionSelect_min=2,score_actionSelect=2]
function entity:testenemy/actions/cleanup if @s[score_actionSelect_min=1,score_actionSelect=1]
