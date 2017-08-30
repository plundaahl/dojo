function entity:testenemy/init unless @s[tag=initialized]

function entity:testenemy/decisions if @s[tag=makeDecision]
function entity:testenemy/actions unless @s[score_sequenceSelect_min=0,score_sequenceSelect=0]

# execute @s[tag=beginAction] ~ ~ ~ say begin action
# execute @s[tag=makeDecision] ~ ~ ~ say make decision
# execute @s[tag=beginSequence] ~ ~ ~ say begin sequence
