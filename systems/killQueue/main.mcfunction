tp @e[tag=doDisappear] ~ -500 ~
kill @e[tag=doDisappear]
kill @e[tag=doKill]

scoreboard players tag @a[tag=doKill] remove doKill
scoreboard players tag @a[tag=doDisappear] remove doDisappear
