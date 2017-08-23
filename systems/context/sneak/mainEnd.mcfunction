# SNEAK END
# This is an elementary detection function for detecting attributes related to
# players sneaking. Note that this is the cleanup function, and must be called
# at the end of the main loop in order for sneakStart to work properly.

scoreboard players set @a[score_sneakRaw_min=1] sneakRaw 0
