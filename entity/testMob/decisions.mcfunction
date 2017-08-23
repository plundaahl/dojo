# DECISION SCRIPT FOR TESTMOB

# Get the distance to the nearest player. If player is near enough, generate
# a random number and use this to pick an action.
function do:query/range/nearestplayer
scoreboard players set @s varA 0
scoreboard players operation @s[score_range=16] varA = @r[type=armor_stand,name=number,score_value_min=1,score_value=100] value
# -1 is used as an initializer score by the individual action scripts
scoreboard players set @s[score_actionSelect_min=1] actionTimer -1
# If the player is out of range, just set a negative actionTimer and wait
scoreboard players set @s[score_actionSelect_min=0,score_actionSelect=0] actionTimer -250

# ACTION MAP
# function entity:testmob/actions
scoreboard players set @s[tag=makeDecision,score_varA_min=1,score_varA=33] actionSelect 1
scoreboard players set @s[tag=makeDecision,score_varA_min=34,score_varA=66] actionSelect 2
scoreboard players set @s[tag=makeDecision,score_varA_min=67,score_varA=100] actionSelect 3

# Clear variables
function do:variables/clear
