# DODGE SCRIPT

# Init
function do:effect/move/normal if @s[score_actionTimer=-1]
effect @s[score_actionTimer=-1] minecraft:speed 1 15 true
function do:action/clearContext if @s[score_actionTimer=-1]
scoreboard players set @s[score_actionTimer=-1] actionTimer 105

# Run Action
# execute @s[score_actionTimer_min=5] ~ ~ ~ particle happyVillager ~ ~1 ~ 0.5 0.5 0.5 0 5
function do:effect/move/freeze if @s[score_actionTimer=100,score_actionTimer_min=100]
scoreboard players set @s[score_actionTimer=100,score_actionTimer_min=100] actionTimer 8

# Clean Up
function do:effect/move/normal if @s[score_actionTimer=1,score_actionTimer_min=1]

# Run Action Map
function entity:player/actions/default/actionMap
