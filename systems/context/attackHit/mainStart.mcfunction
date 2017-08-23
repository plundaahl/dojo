# ATTACK HIT DETECTION START
# This is an elementary detection function that detects attributes related to
# players landing successful attacks. Note, if the player swings and misses,
# this doesn't activate (author is still not sure how to do that).

# Detects 2 attributes: attackHitRaw, attackHitLagged. Please see readme.md for
# details on each of these.

scoreboard players remove @a[score_attackHitLagged_min=1] attackHitLagged 1
scoreboard players operation @a[score_attackHitRaw_min=1] attackHitLagged = GLOBAL inputLagWindow
