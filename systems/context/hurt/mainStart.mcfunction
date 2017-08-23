# HURT DETECTION START
# This is an elementary detection function that detects attributes related to
# players taking damage.

# Detects 2 attributes: hurtRaw, and hurtLagged. Please see readme.md for
# details on each of these.

scoreboard players set @e[score_hurtRaw_min=0,type=!player] hurtRaw 1
scoreboard players set @e[score_hurtRaw_min=0,type=!player] hurtRaw 0 {HurtTime:0s}

scoreboard players remove @e[score_hurtLagged_min=1] hurtLagged 1
scoreboard players operation @e[score_hurtRaw_min=1] hurtLagged = GLOBAL inputLagWindow
