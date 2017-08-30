# DODGE SCRIPT

# Init
scoreboard players set @s[tag=beginSequence] actionTimer 105
function do:effect/move/normal if @s[tag=beginSequence]
function do:action/clearContext if @s[tag=beginSequence]
effect @s[tag=beginSequence] minecraft:speed 1 15 true
scoreboard players tag @s[tag=beginSequence] add iFrame

# Clear iFrame
scoreboard players tag @s[score_actionTimer=100,tag=iFrame] remove iFrame

# Run Action
function do:effect/move/freeze if @s[score_actionTimer=100,score_actionTimer_min=100]
scoreboard players set @s[score_actionTimer=100,score_actionTimer_min=100] actionTimer 12

# Clean Up
function do:effect/move/normal if @s[score_actionTimer=4,score_actionTimer_min=1]
