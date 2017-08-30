# INIT
scoreboard players set @s[tag=beginAction] actionTimer 15
function do:effect/move/freeze

# PLAY
function do:query/dir/getMotion if @s[tag=beginAction]
scoreboard players remove @s[tag=beginAction] motionRY 180
function do:query/dir/mod if @s[tag=beginAction]
function do:move/slide/short if @s[tag=beginAction]

# INTERRUPTABLE
scoreboard players tag @s[score_hurtLagged_min=1] add interrupted
