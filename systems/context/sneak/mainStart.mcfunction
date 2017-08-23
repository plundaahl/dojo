# SNEAK START
# This is an elementary detection function that detects attributes related to
# players sneaking. Note that the associated sneakEnd function must be called
# at the end of the loop, or this code won't work properly.

# Detects 3 attributes: sneakRaw, sneakLagged, and sneakCharge. Please see
# readme.md for details on each of these.

scoreboard players remove @a[score_sneakLagged_min=1] sneakLagged 1
scoreboard players operation @a[score_sneakRaw_min=1] sneakLagged = GLOBAL inputLagWindow

scoreboard players add @a[score_sneakLagged_min=1,score_sneakRaw_min=1] sneakCharge 1
scoreboard players set @a[score_sneakLagged=0] sneakCharge 0
