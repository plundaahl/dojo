# INIT
scoreboard players set @s[tag=beginAction] actionTimer 40

# PLAY ANIMATION
function do:query/dir/getMotion
scoreboard players remove @s motionRY 180
function do:query/dir/mod
function do:move/walk/slow if @s[score_groundLagged_min=1]
