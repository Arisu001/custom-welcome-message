function cwm:hud/chat/ic__restore_old_spawn
function cwm:player/inventory/init


execute as @e[tag=cwm_spwn] at @s run function cwm:data/modify/entity/mc_spawn_old
execute at @e[tag=cwm_spwn] run particle wax_off ~ ~ ~ .05 100 .05 .1 1000 force @s
execute as @e[tag=cwm_spwn] at @s run function cwm:data/modify/entity/mc_spawn

playsound minecraft:block.chorus_flower.grow master @s ~ ~ ~ 1000 2 0

execute store result storage cwm:player spawn.coords.x int 1 run scoreboard players get $cwm_pos-ox tms.var 
execute store result storage cwm:player spawn.coords.y int 1 run scoreboard players get $cwm_pos-oy tms.var 
execute store result storage cwm:player spawn.coords.z int 1 run scoreboard players get $cwm_pos-oz tms.var 
execute store result storage cwm:player spawn.coords.lr int 1 run scoreboard players get $cwm_rot-olr tms.var 

tag @s remove has_undo
tag @s add no_undo

advancement revoke @s only cwm:settings/undo undo
