# MAIN PROCESS LOOP FUNCTION
# ==========================
# Entry point for the process loop. Tags all entities to be processed and starts
# the recursive iterator loop.

scoreboard players tag @e[tag=doProcessLoop] add processQueued

execute @e[tag=processQueued,c=1] ~ ~ ~ function systems:processloop/iteration
