function cwm:player/position
function cwm:hud/chat/ic__set_spawn


kill @e[tag=cwm_spwn]
summon marker ~ ~ ~ {Tags: ["cwm_spwn", "cwm"]}

particle wax_off ~ ~ ~ .05 100 .05 .1 1000 force @s
playsound entity.player.levelup master @s ~ ~ ~ 1000 2 0

tag @s add set_spwn

scoreboard players add $wtg_clk tms.var 1
