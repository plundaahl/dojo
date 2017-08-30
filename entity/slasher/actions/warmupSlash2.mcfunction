# INIT
scoreboard players set @s[tag=beginAction] actionTimer 20

# GET ROTATION
function do:query/dir/getFace if @s[score_actionTimer_min=8]
scoreboard players add @s[score_actionTimer_min=8] faceRY 150
scoreboard players add @s[score_actionTimer_min=8] faceRX 30
function do:query/dir/mod if @s[score_actionTimer_min=8]

# PLAY ACTION
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["doKill","slasherMarker"]}
scoreboard players operation @e[type=armor_stand,tag=slasherMarker] motionRY = @s faceRY
scoreboard players operation @e[type=armor_stand,tag=slasherMarker] motionRX = @s faceRX
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ function do:move/circletp/2
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle crit ~ ~1 ~ 0.2 0 0.2 0 3
# execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle explode ~ ~0.75 ~ 0 0 0 0 1
