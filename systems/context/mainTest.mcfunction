# Test player state detection
execute @a[score_walkCharge_min=1,score_walkCharge=1] ~ ~ ~ tell @p @p is walking
execute @a[score_sneakCharge_min=1,score_sneakCharge=1] ~ ~ ~ tell @p @p is sneaking
execute @a[score_crouchCharge_min=1,score_crouchCharge=1] ~ ~ ~ tell @p @p is crouching
execute @a[score_sprintCharge_min=1,score_sprintCharge=1] ~ ~ ~ tell @p @p is sprinting
execute @a[score_groundCharge_min=1,score_groundCharge=1] ~ ~ ~ tell @p @p is on the ground
execute @a[score_airCharge_min=1,score_airCharge=1] ~ ~ ~ tell @p @p is on airborne
execute @a[score_fallCharge_min=1,score_fallCharge=1] ~ ~ ~ tell @p @p is falling
execute @a[score_jumpCharge_min=1,score_jumpCharge=1] ~ ~ ~ tell @p @p is jumping
execute @a[score_attackHitRaw_min=1] ~ ~ ~ tell @p @p attacked
execute @a[score_hurtRaw_min=1] ~ ~ ~ tell @p @p was hurt
execute @a[score_rcdCharge_min=1,score_rcdCharge=1] ~ ~ ~ tell @p @p right clicked
