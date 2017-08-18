scoreboard players tag @s add processCurrent

function game:processLoop

scoreboard players tag @s remove processCurrent
scoreboard players tag @s remove processQueued

execute @e[tag=processQueued,c=1] ~ ~ ~ function systems:processloop/iteration
