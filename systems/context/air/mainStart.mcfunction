# AIR DETECTION START
# This is an elementary detection function that detects attributes related to
# players being airborne.

# Detects 3 attributes: airRaw, airLagged, and airCharge. Please see
# readme.md for details on each of these.

scoreboard players set @e[score_airRaw_min=1] airRaw 0 {OnGround:1b}
scoreboard players set @e[score_airRaw=0] airRaw 1 {OnGround:0b}

scoreboard players remove @e[score_airLagged_min=1] airLagged 1
scoreboard players operation @e[score_airRaw_min=1] airLagged = GLOBAL inputLagWindow

scoreboard players add @e[score_airLagged_min=1,score_airRaw_min=1] airCharge 1
scoreboard players set @e[score_airLagged=0] airCharge 0
