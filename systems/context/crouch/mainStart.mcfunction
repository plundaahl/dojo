# CROUCH START
# This is an elementary detection function that detects attributes related to
# players crouching. Note that the associated crouchEnd function must be called
# at the end of the loop, or this code won't work properly.

# Detects 3 attributes: crouchRaw, crouchLagged, and crouchCharge. Please see
# readme.md for details on each of these.

scoreboard players remove @a[score_crouchLagged_min=1] crouchLagged 1
scoreboard players operation @a[score_crouchRaw_min=1] crouchLagged = GLOBAL inputLagWindow

scoreboard players add @a[score_crouchLagged_min=1,score_crouchRaw_min=1] crouchCharge 1
scoreboard players set @a[score_crouchLagged=0] crouchCharge 0
