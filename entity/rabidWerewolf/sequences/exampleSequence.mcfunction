scoreboard players set @s[tag=beginSequence] actionSelect 4

function entity:rabidwerewolf/actions/warmup if @s[score_actionSelect_min=4,score_actionSelect=4]
function entity:rabidwerewolf/actions/attack if @s[score_actionSelect_min=3,score_actionSelect=3]
function entity:rabidwerewolf/actions/cooldown if @s[score_actionSelect_min=2,score_actionSelect=2]
function entity:rabidwerewolf/actions/cleanup if @s[score_actionSelect_min=1,score_actionSelect=1]
