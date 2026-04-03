function cwm:player/inventory/init
function cwm:hud/chat/ic__remove_spawn


execute at @e[tag=cwm_spwn] run particle dust{color: [1, 0, 0], scale: 1} ~ ~ ~ .05 100 .05 .1 1000 force @s 
playsound block.respawn_anchor.deplete master @s ~ ~ ~ 1000 1 0

data remove storage cwm:player spawn{}

scoreboard players enable @s old_spawn

tag @s remove has_spawn
tag @s add no_spawn

kill @e[tag=cwm_spwn]

advancement revoke @s only cwm:settings/remove_spawn remove_spawn
