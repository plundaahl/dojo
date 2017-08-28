# DODGE SCRIPT

# Init
scoreboard players set @s[tag=makeDecision] actionTimer 105
function do:effect/move/normal if @s[tag=makeDecision]
function do:action/clearContext if @s[tag=makeDecision]
effect @s[tag=makeDecision] minecraft:speed 1 15 true

# Run Action
function do:effect/move/freeze if @s[score_actionTimer=100,score_actionTimer_min=100]
scoreboard players set @s[score_actionTimer=100,score_actionTimer_min=100] actionTimer 8

# Clean Up
function do:effect/move/normal if @s[score_actionTimer=1,score_actionTimer_min=1]
