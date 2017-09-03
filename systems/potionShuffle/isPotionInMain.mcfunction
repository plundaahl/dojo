scoreboard players tag @a[tag=potionInOffhand] remove potionInOffhand
scoreboard players tag @a[tag=potionInMainhand] remove potionInMainhand
scoreboard players tag @a add potionInOffhand {Inventory:[{Slot:-106b,id:"minecraft:potion",tag:{display:{Name:"Health Potion"}}}]}
scoreboard players tag @a add potionInMainhand {SelectedItem:{id:"minecraft:potion",tag:{display:{Name:"Health Potion"}}}}
scoreboard players tag @a[tag=potionInMainhand] remove potionInOffhand
