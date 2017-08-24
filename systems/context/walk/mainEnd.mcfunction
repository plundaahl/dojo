# WALK END
# This is an elementary detection function for detecting attributes related to
# players walking. Note that this is the cleanup function, and must be called
# at the end of the main loop in order for walkStart to work properly.

scoreboard players set @a[score_walkLagged=0] walkCharge 0
scoreboard players set @a[score_walkRaw_min=1] walkRaw 0
