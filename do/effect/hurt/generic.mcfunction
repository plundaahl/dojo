function do:query/misc/detectUndead if @s[tag=!isCheckedForUndead]
effect @s[tag=!iFrame] resistance 0 0 true
effect @s[tag=iFrame] resistance 1 99 true
scoreboard players tag @s add doClearResistance
