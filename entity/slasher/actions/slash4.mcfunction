# INIT
scoreboard players set @s[tag=beginAction] actionTimer 6
execute @s[tag=beginAction] ~ ~ ~ playsound minecraft:entity.player.attack.sweep hostile @a[r=16] ~ ~ ~ 1 0.5

# PLAY
scoreboard players add @s faceRY 40
scoreboard players add @s[score_actionTimer=3] faceRX 15
function do:query/dir/mod
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["doKill","slasherMarker"]}
scoreboard players operation @e[type=armor_stand,tag=slasherMarker] motionRY = @s faceRY
scoreboard players operation @e[type=armor_stand,tag=slasherMarker] motionRX = @s faceRX
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ function do:move/circletp/1
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle crit ~ ~1 ~ 0.1 0.3 0.1 0 3
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle explode ~ ~0.5 ~ 0.1 0.3 0.1 0 1
execute @s[score_actionTimer_min=1,score_actionTimer=1] ~ ~ ~ execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle sweepAttack ~ ~1 ~ 0.2 0 0.2 0 3
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~-0.5 ~ ~-0.5 execute @a[dx=1,dy=1,dz=1] ~ ~ ~ function do:effect/hurt/3
