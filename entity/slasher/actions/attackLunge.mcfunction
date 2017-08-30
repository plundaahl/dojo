# INIT
function do:effect/move/freeze if @s[tag=beginAction]
function do:query/dir/getMotion if @s[tag=beginAction]
function do:move/slide/shortish if @s[tag=beginAction]
scoreboard players set @s[tag=beginAction] actionTimer 10

# Play action
