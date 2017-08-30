scoreboard players set @s[tag=beginSequence] actionSelect 4

function entity:slasher/actions/warmupSlash2 if @s[score_actionSelect_min=4,score_actionSelect=4]
function entity:slasher/actions/warmup if @s[score_actionSelect_min=4,score_actionSelect=4]
function do:effect/move/slow if @s[score_actionSelect_min=4,score_actionSelect=4,tag=beginAction]

function entity:slasher/actions/attackLunge if @s[score_actionSelect_min=3,score_actionSelect=3]
function do:move/slide/shortish if @s[score_actionSelect_min=3,score_actionSelect=3,tag=beginAction]
function entity:slasher/actions/attackChase if @s[score_actionSelect_min=3,score_actionSelect=3]
function entity:slasher/actions/slash2 if @s[score_actionSelect_min=3,score_actionSelect=3]

function entity:slasher/actions/cooldown if @s[score_actionSelect_min=2,score_actionSelect=2]
function entity:slasher/actions/cleanup if @s[score_actionSelect_min=1,score_actionSelect=1]
