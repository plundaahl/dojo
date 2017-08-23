# GROUND DETECTION START
# This is an elementary detection function that detects attributes related to
# players standing on the ground.

# Detects 3 attributes: groundRaw, groundLagged, and groundCharge. Please see
# readme.md for details on each of these.

scoreboard players set @e[score_groundRaw_min=1] groundRaw 0 {OnGround:0b}
scoreboard players set @e[score_groundRaw=0] groundRaw 1 {OnGround:1b}

scoreboard players set @a[score_sneakRaw_min=1] groundRaw 1
scoreboard players set @a[score_walkRaw_min=1] groundRaw 1
scoreboard players set @a[score_sprintRaw_min=1] groundRaw 1

scoreboard players remove @e[score_groundLagged_min=1] groundLagged 1
scoreboard players operation @e[score_groundRaw_min=1] groundLagged = GLOBAL inputLagWindow

scoreboard players add @e[score_groundLagged_min=1,score_groundRaw_min=1] groundCharge 1
scoreboard players set @e[score_groundLagged=0] groundCharge 0
