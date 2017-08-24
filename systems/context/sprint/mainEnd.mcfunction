# SPRINT END
# This is an elementary detection function for detecting attributes related to
# players sprinting. Note that this is the cleanup function, and must be called
# at the end of the main loop in order for sprintStart to work properly.

scoreboard players set @a[score_sprintLagged=0] sprintCharge 0
scoreboard players set @a[score_sprintRaw_min=1] sprintRaw 0
