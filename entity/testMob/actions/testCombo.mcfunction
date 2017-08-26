scoreboard players set @e[tag=makeDecision] actionSelect 4

function entity:testmob/actions/testgroup/levitate if @s[score_actionSelect_min=3,score_actionSelect=3]
function entity:testmob/actions/testgroup/playparticles if @s[score_actionSelect_min=2,score_actionSelect=2]
function entity:testmob/actions/testgroup/rotate if @s[score_actionSelect_min=1,score_actionSelect=1]
