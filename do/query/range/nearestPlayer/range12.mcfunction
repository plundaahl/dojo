# Testfor players within range
testfor @e[type=player,tag=!processingNearestPlayer,r=12]
scoreboard players set @s[score_stats_min=1] range 12
