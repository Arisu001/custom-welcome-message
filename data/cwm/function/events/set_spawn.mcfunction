function cwm:player/position
function cwm:hud/chat/ic__set_spawn


kill @e[tag=cwm_spwn]
summon marker ~ ~ ~ {Tags: ["cwm_spwn", "cwm"]}

particle wax_off ~ ~ ~ .05 100 .05 .1 1000 force @s
playsound entity.player.levelup master @s ~ ~ ~ 1000 2 0

advancement revoke @s only cwm:settings/set_spawn set_spawn
