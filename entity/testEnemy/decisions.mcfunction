# TEST FOR NEARBY PLAYERS
function do:query/range/nearestplayer

execute @s[score_nextSequence_min=1] ~ ~ ~ say whoops

# WAIT IF PLAYER IS TOO FAR AWAY
scoreboard players set @s actionTimer -60

# ACTIONS
scoreboard players set @s[score_range=6] sequenceSelect 10
