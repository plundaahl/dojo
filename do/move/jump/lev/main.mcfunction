effect @e[tag=doClearLevJump] levitation 0 0 true

scoreboard players tag @e[tag=levJumpNotCleared] remove levJumpNotCleared
scoreboard players tag @e[tag=doClearLevJump] add levJumpNotCleared {ActiveEffects:[{Id:25b}]}

scoreboard players tag @e[tag=!levJumpNotCleared] remove doClearLevJump {Tags:["doClearLevJump"]}
