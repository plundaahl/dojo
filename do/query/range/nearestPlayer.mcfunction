# Set up player stats
stats entity @s set SuccessCount @s stats
scoreboard players set @s stats 5
scoreboard players set @s range 9999
scoreboard players tag @s add processingNearestPlayer

# Testfor players within range
function do:query/range/nearestplayer/range01
function do:query/range/nearestplayer/range02 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range03 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range04 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range05 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range06 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range08 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range10 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range12 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range16 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range20 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range24 if @s[score_range_min=9999]
function do:query/range/nearestplayer/range32 if @s[score_range_min=9999]

# Clear processing details
stats entity @s clear SuccessCount
scoreboard players reset @s stats
scoreboard players tag @s remove processingNearestPlayer


stats entity @e[type=armor_stand] set SuccessCount @e[type=armor_stand] stats
