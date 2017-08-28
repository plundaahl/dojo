# ENTITY IMPORT FILE
# ==================
# Use functions with conditionals to call the "main" function of the entity
# you wish to import.

# function entity:debug/main if @s[type=player]
function entity:testmob/main if @s[tag=typeTestMob]

execute @a[score_comboSelect_min=30,score_comboSelect=30] ~ ~ ~ say Yes
