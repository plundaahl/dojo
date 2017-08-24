# MAIN PROCESS LOOP FUNCTION
# ==========================
# Entry point for the process loop. Tags all entities to be processed and starts
# the recursive iterator loop.

# LEGACY FUNCTIONS
# This code causes the game loop to iterate through each entity that's tagged
# with "doProcessLoop." This allows you to perform specific code for each
# entity, but the lag makes it prohibitively slow.

# scoreboard players tag @e[tag=doProcessLoop] add processQueued
# execute @e[tag=processQueued,c=1] ~ ~ ~ function systems:processloop/iteration


execute @e[tag=doProcessLoop] ~ ~ ~ function game:processLoop
