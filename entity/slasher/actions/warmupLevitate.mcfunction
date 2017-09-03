effect @s[tag=beginAction] levitation 9999 0 true
scoreboard players set @s[tag=beginAction] actionTimer 20
execute @s[tag=beginAction] ~ ~ ~ say levitating

effect @s[score_actionTimer=1] levitation 0 0 true
