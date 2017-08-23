# FALL DETECTION START
# This is an elementary detection function that detects attributes related to
# players falling.

# Detects 3 attributes: fallRaw, fallLagged, and fallCharge. Please see
# readme.md for details on each of these.

scoreboard players set @a[score_fallRaw=0] fallRaw 1
scoreboard players set @a[score_fallRaw_min=1] fallRaw 0 {FallDistance:0.0f}

scoreboard players remove @a[score_fallLagged_min=1] fallLagged 1
scoreboard players operation @a[score_fallRaw_min=1] fallLagged = GLOBAL inputLagWindow

scoreboard players add @a[score_fallLagged_min=1,score_fallRaw_min=1] fallCharge 1
scoreboard players set @a[score_fallLagged=0] fallCharge 0
