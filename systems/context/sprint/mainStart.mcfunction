# SPRINT START
# This is an elementary detection function that detects attributes related to
# players sprinting. Note that the associated sprintEnd function must be called
# at the end of the loop, or this code won't work properly.

# Detects 3 attributes: sprintRaw, sprintLagged, and sprintCharge. Please see
# readme.md for details on each of these.

scoreboard players remove @a[score_sprintLagged_min=1] sprintLagged 1
scoreboard players operation @a[score_sprintRaw_min=1] sprintLagged = GLOBAL inputLagWindow

scoreboard players add @a[score_sprintLagged_min=1,score_sprintRaw_min=1] sprintCharge 1
scoreboard players set @a[score_sprintLagged=0] sprintCharge 0
