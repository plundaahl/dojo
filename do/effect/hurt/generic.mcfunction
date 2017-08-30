function do:query/misc/detectUndead if @s[tag=!isCheckedForUndead]
effect @s resistance 0 0 true
scoreboard players tag @s add doClearResistance
