# TEST FOR NEARBY PLAYERS
function do:query/range/nearestplayer

# WAIT IF PLAYER IS TOO FAR AWAY
scoreboard players set @s actionTimer -60

# ACTIONS
scoreboard players set @s[score_range=6] comboSelect 10
