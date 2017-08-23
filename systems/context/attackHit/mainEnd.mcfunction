# ATTACK HIT END
# This is an elementary detection function that detects attributes related to
# players landing successful attacks. Note, if the player swings and misses,
# this doesn't activate (author is still not sure how to do that).

# Note that this is the cleanup function, and must be called at the end of the
# main loop in order for attackHitStart to work properly.

scoreboard players set @a[score_attackHitRaw_min=1] attackHitRaw 0
