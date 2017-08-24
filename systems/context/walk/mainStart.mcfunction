# WALK START
# This is an elementary detection function that detects attributes related to
# players walking. Note that the associated walkEnd function must be called
# at the end of the loop, or this code won't work properly.

# Detects 3 attributes: walkRaw, walkLagged, and walkCharge. Please see
# readme.md for details on each of these.

scoreboard players remove @a[score_walkLagged_min=1] walkLagged 1
scoreboard players operation @a[score_walkRaw_min=1] walkLagged = GLOBAL inputLagWindow

scoreboard players add @a[score_walkLagged_min=1,score_walkRaw_min=1] walkCharge 1
