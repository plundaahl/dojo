scoreboard players set @s[tag=beginSequence] actionSelect 5

function entity:slasher/actions/warmupSink if @s[score_actionSelect_min=5,score_actionSelect=5]
function entity:slasher/actions/warmupSlash1 if @s[score_actionSelect_min=5,score_actionSelect=5]
function entity:slasher/actions/warmup if @s[score_actionSelect_min=5,score_actionSelect=5]

function entity:slasher/actions/attackLeap if @s[score_actionSelect_min=4,score_actionSelect=4]
scoreboard players set @s[score_actionSelect_min=4,score_actionSelect=4,tag=beginAction] actionTimer 5
function entity:slasher/actions/slashOverhead if @s[score_actionSelect_min=3,score_actionSelect=3]

function entity:slasher/actions/cooldown if @s[score_actionSelect_min=2,score_actionSelect=2]
function entity:slasher/actions/cleanup if @s[score_actionSelect_min=1,score_actionSelect=1]
