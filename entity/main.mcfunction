# ENTITY IMPORT FILE
# ==================
# Use functions with conditionals to call the "main" function of the entity
# you wish to import.

function entity:player/main if @s[type=player]
function entity:testenemy/main if @s[tag=typeTestEnemy]
function entity:slasher/main if @s[tag=typeSlasher]
function entity:rabidwerwolf/main if @s[tag=typeRabidWerewolf]
