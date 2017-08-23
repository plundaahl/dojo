# Testfor players within range
testfor @e[type=player,tag=!processingNearestPlayer,r=1]
scoreboard players set @s[score_stats_min=1] range 1
