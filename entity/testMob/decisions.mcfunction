# DECISION SCRIPT FOR TESTMOB

# Get the distance to the nearest player. If player is near enough, generate
# a random number and use this to pick an action.
scoreboard players set @s[tag=makeDecision] comboSelect 1

# Clear variables
# function do:variables/clear
