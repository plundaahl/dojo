# PROCESS LOOP IMPORT FILE
# ========================
# This function is run on each target in the processLoop. Use it to import any
# functions that you want run on those entities individually.

# This file is being used as a central script for programming game entities.

# Run the main entity file
function do:variables/clear if @s[tag=makeDecision]
function entity:main

# Remove any tags leftover from processing.
scoreboard players tag @e[tag=selected] remove selected
