# INIT
scoreboard players set @s[tag=beginSequence] actionSelect 2

# MAIN SEQUENCE
function entity:slasher/actions/strafe if @s[score_actionSelect_min=2,score_actionSelect=2]
function entity:slasher/actions/cleanup if @s[score_actionSelect_min=1,score_actionSelect=1]

# OVERRIDES
scoreboard players operation @s[score_actionSelect=2,score_actionSelect_min=2,tag=beginAction] actionTimer = @r[type=armor_stand,name=number,score_value_min=20,score_value=60] value
