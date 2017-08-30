scoreboard players set @s[tag=beginSequence] actionSelect 5

function entity:slasher/actions/warmupSlash3 if @s[score_actionSelect_min=5,score_actionSelect=5]
function entity:slasher/actions/warmup if @s[score_actionSelect_min=5,score_actionSelect=5]
scoreboard players set @s[score_actionSelect_min=5,score_actionSelect=5,tag=beginAction] actionTimer 20

function entity:slasher/actions/attackLunge if @s[score_actionSelect_min=4,score_actionSelect=4]
scoreboard players set @s[score_actionSelect_min=4,score_actionSelect=4,tag=beginAction] actionTimer 5
function entity:slasher/actions/slash4 if @s[score_actionSelect_min=3,score_actionSelect=3]

function entity:slasher/actions/cooldown if @s[score_actionSelect_min=2,score_actionSelect=2]
function entity:slasher/actions/cleanup if @s[score_actionSelect_min=1,score_actionSelect=1]
