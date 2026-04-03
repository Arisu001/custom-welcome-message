function cwm:hud/clear
function cwm:hud/screen/is__weclcome
function cwm:hud/chat/ic__welcome
execute unless entity @s[tag=has_spawn] run function cwm:player/position
function cwm:__class__/entity/c_spawn

execute at @e[tag=cwm_spwn_trg, type=#cwm:__class] run function cwm:config/new_player/join
scoreboard players reset @s cwm.leave
