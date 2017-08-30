# INIT
scoreboard players set @s[tag=beginAction] actionTimer 20

# GET ROTATION
function do:query/dir/getFace if @s[score_actionTimer_min=8]
scoreboard players remove @s[score_actionTimer_min=8] faceRY 180
scoreboard players set @s[score_actionTimer_min=8] faceRX -45
function do:query/dir/mod if @s[score_actionTimer_min=8]

# PLAY ACTION
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["doKill","slasherMarker"]}
scoreboard players operation @e[type=armor_stand,tag=slasherMarker] motionRY = @s faceRY
scoreboard players operation @e[type=armor_stand,tag=slasherMarker] motionRX = @s faceRX
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ function do:move/circletp/1
execute @e[type=armor_stand,tag=slasherMarker,c=1] ~ ~ ~ particle crit ~ ~1.25 ~ 0 0 0 0 1
