# Figure out what the player is holding, so we know what to do
stats entity @s set AffectedItems @s AffectedItems
clear @s potion 0 0 {display:{Name:"Health Potion"}}
scoreboard players tag @s add isHoldingGlassBottle {SelectedItem:{id:"minecraft:glass_bottle",Count:1b}}
scoreboard players tag @s add isHoldingGlassBottle {Inventory:[{Slot:-106b,id:"minecraft:glass_bottle",Count:1b}]}

# This code should shuffle one healing potion into the player's main hand, or
clear @s[tag=isHoldingGlassBottle,score_AffectedItems_min=1] potion 0 1 {display:{Name:"Health Potion"}}
function systems:potionshuffle/shuffleMainHand if @s[tag=potionInMainhand]
function systems:potionshuffle/shuffleOffHand if @s[tag=potionInOffhand]
give @s[tag=isHoldingGlassBottle] glass_bottle 1 0

# Reset scores and tags
scoreboard players set @s usedPotion 0
scoreboard players set @s AffectedItems 0
scoreboard players tag @s[tag=isHoldingGlassBottle] remove isHoldingGlassBottle
