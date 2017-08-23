# JUMP DETECTION START
# This is an elementary detection function that detects attributes related to
# players jumping.

# Detects 3 attributes: jumpRaw, jumpLagged, and jumpCharge. Please see
# readme.md for details on each of these.

# NOTE: This part of the library depends upon the AIR and FALL functions,
# specifically airStart and fallStart, as detection is done through process of
# elimination, rather than directly detecting jumping. For this reason, this
# part of the library should be included AFTER the other two.

scoreboard players set @a[score_jumpRaw_min=1] jumpRaw 0
scoreboard players set @a[score_jumpRaw=0,score_fallRaw=0,score_airRaw_min=1] jumpRaw 1

scoreboard players remove @a[score_jumpLagged_min=1] jumpLagged 1
scoreboard players operation @a[score_jumpRaw_min=1] jumpLagged = GLOBAL inputLagWindow

scoreboard players add @a[score_jumpLagged_min=1,score_jumpRaw_min=1] jumpCharge 1
scoreboard players set @a[score_jumpLagged=0] jumpCharge 0
