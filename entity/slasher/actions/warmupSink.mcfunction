entitydata @s[tag=beginAction] {NoGravity:1b}
scoreboard players set @s[tag=beginAction] actionTimer 20

tp @s ~ ~-0.01 ~

entitydata @s[score_actionTimer=1] {NoGravity:0b}
