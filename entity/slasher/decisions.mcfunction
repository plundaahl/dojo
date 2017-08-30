# TEST FOR NEARBY PLAYERS
function do:query/range/nearestplayer

# ACTIONS
scoreboard players set @s[score_range=6] nextSequence 20

# ELSE WAIT
scoreboard players set @s[score_nextSequence_min=0,score_nextSequence=0] actionTimer -60
