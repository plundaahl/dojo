# TEST FOR NEARBY PLAYERS
function do:query/range/nearestplayer

# ROLL SOME DICE
scoreboard players set @s varA 0
scoreboard players operation @s[score_range=7] varA = @r[type=armor_stand,name=number,score_value_min=1,score_value=100] value

# ACTIONS
scoreboard players set @s[score_varA_min=30,score_varA=40] nextSequence 20
scoreboard players set @s[score_varA_min=40,score_varA=50] nextSequence 21
scoreboard players set @s[score_varA_min=50,score_varA=60] nextSequence 22
scoreboard players set @s[score_varA_min=60,score_varA=70] nextSequence 23
scoreboard players set @s[score_varA_min=70,score_varA=80] nextSequence 25
scoreboard players set @s[score_varA_min=80,score_varA=90] nextSequence 30
scoreboard players set @s[score_varA_min=90,score_varA=100] nextSequence 31

# ELSE WAIT
scoreboard players set @s[score_nextSequence_min=0,score_nextSequence=0] actionTimer -20
scoreboard players reset @s varA
