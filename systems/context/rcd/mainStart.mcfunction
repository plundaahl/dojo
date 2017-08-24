# RIGHT CLICK DETECTION START
# This is an elementary detection function that detects attributes related to
# players right clicking the carrot_on_a_stick item. Note that the associated
# rcdEnd function must be called at the end of the loop, or this code won't work
# properly.

# Detects 3 attributes: rcdRaw, rcdLagged, and rcdCharge. Please see
# readme.md for details on each of these.

scoreboard players remove @a[score_rcdLagged_min=1] rcdLagged 1
scoreboard players operation @a[score_rcdRaw_min=1] rcdLagged = GLOBAL inputLagWindow

# Extra time added to the lagged version, due to right click detection happening
# less frequently in Minecraft's code.
scoreboard players add @a[score_rcdRaw_min=1] rcdLagged 1
scoreboard players add @a[score_rcdLagged_min=1] rcdCharge 1
