# INIT
scoreboard players set @s[tag=beginAction] actionTimer 40
function do:effect/move/freeze
scoreboard players operation @s[tag=beginAction] varA = @r[type=armor_stand,name=number,score_value_min=1,score_value=100] value

# PLAY
function do:query/dir/getMotion
scoreboard players operation @s[score_varA_min=51] motionRY += 90 value
scoreboard players operation @s[score_varA=50] motionRY -= 90 value
function do:query/dir/mod
function do:move/walk/slow if @s[score_groundLagged_min=1]

# INTERRUPTABLE
scoreboard players tag @s[score_hurtLagged_min=1] add interrupted
