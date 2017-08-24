# DEFAULT ACTIONS
# This script runs when the player isn't doing anything specific

# Slow the player down if they're walking
# scoreboard players tag @s[tag=isSlowed] remove isSlowed
# scoreboard players tag @s add isSlowed {ActiveEffects:[{Id:2b}]}

# function do:effect/move/slowish if @s[score_sprintLagged=0]
# function do:effect/move/normal if @s[score_sprintCharge_min=1,score_sprintCharge=1]

# Run Action Map
function entity:player/actions/defaultActionMap
