function cwm:hud/chat/ic__restore_old_spawn
function cwm:data/modify/storage/player_spawn

kill @e[tag=cwm_spwn]

summon marker ~ ~ ~ {Tags: ["cwm_spwn", "cwm"]}
execute as @e[tag=cwm_spwn] at @s run function cwm:data/modify/entity/mc_spawn

execute at @e[tag=cwm_spwn] run particle wax_off ~ ~ ~ .05 100 .05 .1 1000 force @s
playsound entity.player.levelup master @s ~ ~ ~ 1000 2 0

scoreboard players reset @s old_spawn
