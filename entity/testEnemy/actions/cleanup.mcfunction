# Re-clear all moves and effects that get used by this entity.
# Try keeping a generic script here and copying all clears to it.

say cleanup!

function do:effect/move/normal

scoreboard players tag @s remove interruptable
