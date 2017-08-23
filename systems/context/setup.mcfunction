tellraw @s "  Context System"

# GLOBAL INPUT LAG
# This creates a lag in the state detection. It helps solve connection hiccups
# and prevents users from accidentally letting go of sneak for a fraction of a
# second and being punished for it.

scoreboard objectives add inputLagWindow dummy
scoreboard players set GLOBAL inputLagWindow 3

# PLAYER WALK DETECTION SCORES
scoreboard objectives add walkRaw stat.walkOneCm
scoreboard objectives add walkLagged dummy
scoreboard objectives add walkCharge dummy
tellraw @s {"text":"    Walk Detection","italic":true,"color":"gray"}

# SNEAK DETECTION SCORES
scoreboard objectives add sneakRaw stat.sneakTime
scoreboard objectives add sneakLagged dummy
scoreboard objectives add sneakCharge dummy
tellraw @s {"text":"    Sneak Detection","italic":true,"color":"gray"}

# PLAYER CROUCH DETECTION SCORES
scoreboard objectives add crouchRaw stat.crouchOneCm
scoreboard objectives add crouchLagged dummy
scoreboard objectives add crouchCharge dummy
tellraw @s {"text":"    Crouch Detection","italic":true,"color":"gray"}

# PLAYER SPRINT DETECTION SCORES
scoreboard objectives add sprintRaw stat.sprintOneCm
scoreboard objectives add sprintLagged dummy
scoreboard objectives add sprintCharge dummy
tellraw @s {"text":"    Sprint Detection","italic":true,"color":"gray"}

# PLAYER GROUND DETECTION SCORES
scoreboard objectives add groundRaw dummy
scoreboard objectives add groundLagged dummy
scoreboard objectives add groundCharge dummy
tellraw @s {"text":"    Ground Detection","italic":true,"color":"gray"}

# PLAYER AIR DETECTION SCORES
scoreboard objectives add airRaw dummy
scoreboard objectives add airLagged dummy
scoreboard objectives add airCharge dummy
tellraw @s {"text":"    Airborne Detection","italic":true,"color":"gray"}

# PLAYER FALLING DETECTION SCORES
scoreboard objectives add fallRaw dummy
scoreboard objectives add fallLagged dummy
scoreboard objectives add fallCharge dummy
tellraw @s {"text":"    Falling Detection","italic":true,"color":"gray"}

# PLAYER JUMP DETECTION SCORES
scoreboard objectives add jumpRaw dummy
scoreboard objectives add jumpLagged dummy
scoreboard objectives add jumpCharge dummy
tellraw @s {"text":"    Jump Detection","italic":true,"color":"gray"}

# PLAYER ATTACK HIT DETECTION SCORES
scoreboard objectives add attackHitRaw stat.damageDealt
scoreboard objectives add attackHitLagged dummy
tellraw @s {"text":"    Attack hit Detection","italic":true,"color":"gray"}

# PLAYER HURT DETECTION SCORES
scoreboard objectives add hurtRaw stat.damageTaken
scoreboard objectives add hurtLagged dummy
tellraw @s {"text":"    Hurt Detection","italic":true,"color":"gray"}

# RIGHT CLICK DETECTION
scoreboard objectives add rcdRaw stat.useItem.minecraft.carrot_on_a_stick
scoreboard objectives add rcdLagged dummy
scoreboard objectives add rcdCharge dummy
tellraw @s {"text":"    Right Click Detection","italic":true,"color":"gray"}

# SETUP MESSAGE
tellraw @s {"text":"    State Detection","italic":true,"color":"gray"}
