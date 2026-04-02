execute unless score @s[tag=!cwm_fix] cwm.leave matches 1.. run function cwm:config/new_player

execute if score @s cwm.leave matches 1.. run function cwm:config/new_player
