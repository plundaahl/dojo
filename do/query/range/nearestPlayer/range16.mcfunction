# Testfor players within range
testfor @e[type=player,m=2,tag=!processingNearestPlayer,r=16]
scoreboard players set @s[score_stats_min=1] range 16
