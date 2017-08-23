# HURT END
# This is an elementary detection function that detects attributes related to
# players taking damage.

# Note that this is the cleanup function, and must be called at the end of the
# main loop in order for hurtStart to work properly.

scoreboard players set @e[score_hurtRaw_min=1,type=player] hurtRaw 0
