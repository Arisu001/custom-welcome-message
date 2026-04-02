function cwm:player/position
function cwm:hud/chat/ic__set_spawn


particle wax_off ~ ~ ~ .5 .5 .5 1 100 force @s
playsound entity.player.levelup master @s ~ ~ ~ 1000 2 0
advancement revoke @s only cwm:settings/set_spawn set_spawn
