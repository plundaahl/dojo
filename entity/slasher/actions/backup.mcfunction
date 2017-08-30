# INIT
scoreboard players set @s[tag=beginAction] actionTimer 40
function do:effect/move/freeze

# PLAY
function do:query/dir/getMotion
scoreboard players remove @s motionRY 180
function do:query/dir/mod
function do:move/walk/veryslow if @s[score_groundLagged_min=1]

# INTERRUPTABLE
scoreboard players tag @s[score_hurtLagged_min=1] add interrupted
