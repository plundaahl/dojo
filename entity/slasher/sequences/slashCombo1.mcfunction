scoreboard players set @s[tag=beginSequence] actionSelect 10

function entity:slasher/actions/warmupSlash2 if @s[score_actionSelect_min=10,score_actionSelect=10]
function entity:slasher/actions/warmup if @s[score_actionSelect_min=10,score_actionSelect=10]
function do:effect/move/slowish if @s[score_actionSelect_min=10,score_actionSelect=10,tag=beginAction]

# function entity:slasher/actions/attackLunge if @s[score_actionSelect_min=9,score_actionSelect=9]
# function do:move/slide/shortish if @s[score_actionSelect_min=9,score_actionSelect=9,tag=beginAction]
function entity:slasher/actions/attackChase if @s[score_actionSelect_min=9,score_actionSelect=9]
function entity:slasher/actions/slash2 if @s[score_actionSelect_min=9,score_actionSelect=9]

function entity:slasher/actions/warmupSlash1 if @s[score_actionSelect_min=4,score_actionSelect=4]
function entity:slasher/actions/warmup if @s[score_actionSelect_min=4,score_actionSelect=4]
scoreboard players set @s[score_actionSelect_min=4,score_actionSelect=4,tag=beginAction] actionTimer 5

function entity:slasher/actions/attackLunge if @s[score_actionSelect_min=3,score_actionSelect=3]
function entity:slasher/actions/slash1 if @s[score_actionSelect_min=3,score_actionSelect=3]

function entity:slasher/actions/cooldown if @s[score_actionSelect_min=2,score_actionSelect=2]

function entity:slasher/actions/cleanup if @s[score_actionSelect_min=1,score_actionSelect=1]
