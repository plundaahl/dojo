# CROUCH END
# This is an elementary detection function for detecting attributes related to
# players crouching. Note that this is the cleanup function, and must be called
# at the end of the main loop in order for crouchStart to work properly.

scoreboard players set @a[score_crouchLagged=0] crouchCharge 0
scoreboard players set @a[score_crouchRaw_min=1] crouchRaw 0
