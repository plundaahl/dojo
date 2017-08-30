# INIT
scoreboard players set @s[tag=beginAction] varA 0
scoreboard players set @s[tag=beginAction] actionTimer 8

# PLAY
execute @s[score_actionTimer_min=6,score_actionTimer=6] ~ ~ ~ playsound minecraft:entity.player.attack.sweep hostile @a[r=16] ~ ~ ~ 1 0.5

# Flip faceRY when the arc hits 90 degrees straight up
scoreboard players set @s[score_faceRX=-90,score_varA=0] varA 1
scoreboard players add @s[score_varA_min=1,score_varA=1] faceRY 180
function do:query/dir/mod if @s[score_varA_min=1,score_varA=1]
scoreboard players set @s[score_varA_min=1,score_varA=1] varA 2

# PLAY
scoreboard players remove @s[score_varA=0] faceRX 30
scoreboard players add @s[score_varA_min=2] faceRX 30
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["doKill","slasherMarker"]}
scoreboard players operation @e[type=armor_stand,tag=slasherMarker] motionRY = @s faceRY
scoreboard players operation @e[type=armor_stand,tag=slasherMarker] motionRX = @s faceRX
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ function do:move/circletp/1
execute @s[score_actionTimer=3] ~ ~ ~ execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ function do:move/circletp/1
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle crit ~ ~1.5 ~ 0 0.5 0 0 5
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle explode ~ ~1.25 ~ 0 0.5 0 0 5
execute @s[score_actionTimer_min=3,score_actionTimer=3] ~ ~ ~ execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle sweepAttack ~ ~1 ~ 0 0 0 0 1
execute @s[score_actionTimer_min=3,score_actionTimer=3] ~ ~ ~ execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle largeexplode ~ ~ ~ 0.3 0 0.3 0 3
execute @s[score_actionTimer_min=3,score_actionTimer=3] ~ ~ ~ playsound minecraft:entity.zombie.attack_iron_door hostile @a[r=30] ~ ~ ~ 0.8
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~-0.5 ~ ~-0.5 execute @a[dx=1,dy=2,dz=1] ~ ~ ~ function do:effect/hurt/4
