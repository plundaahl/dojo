# ENTITY IMPORT FILE
# ==================
# Use functions with conditionals to call the "main" function of the entity
# you wish to import.

function entity:player/main if @s[type=player,m=2]
function entity:testmob/main if @s[tag=typeTestMob]
