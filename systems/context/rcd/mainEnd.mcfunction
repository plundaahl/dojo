# RIGHT CLICK DETECTION END
# This is an elementary detection function for detecting attributes related to
# players right clicking the carrot_on_a_stick item. Note that this is the
# cleanup function, and must be called at the end of the main loop in order for
# rcdStart to work properly.

scoreboard players set @a[score_rcdLagged=0] rcdCharge 0
scoreboard players set @a[score_rcdRaw_min=1] rcdRaw 0
