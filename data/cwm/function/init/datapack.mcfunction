function cwm:init/storage


# Reset all scores
scoreboard players reset * tms.const
scoreboard players reset * tms.temp
scoreboard players reset * tms.value
scoreboard players reset $cm_open tms.var
scoreboard players reset $lang_en tms.var
scoreboard players reset $lang_fr tms.var
scoreboard players reset $nb_cm_close tms.var
scoreboard players reset $nb_cm_open tms.var
scoreboard players reset $nb_help tms.var
scoreboard players reset $nb_lang_en tms.var
scoreboard players reset $nb_lang_fr tms.var
scoreboard players reset $nb_languages tms.var
scoreboard players reset $nb_spawn_get tms.var
scoreboard players reset $nb_spawn_set tms.var
scoreboard players reset $nb_spawn_test tms.var
scoreboard players reset $nb_spawn_undo tms.var
scoreboard players reset $nb_spawn_remove tms.var
scoreboard players reset $nb_unins tms.var
scoreboard players reset $cm_close tms.var

scoreboard players set $cm_close tms.var 0
scoreboard players set $cm_open tms.var 1
scoreboard players set $lang_en tms.var 1
scoreboard players set $lang_fr tms.var 0

# Revoke all advancements
advancement revoke @s only cwm:settings/close custom_message
advancement revoke @s only cwm:settings/languages open_and_close
advancement revoke @s only cwm:settings/open custom_message
advancement revoke @s only cwm:settings/set_spawn set_spawn
advancement revoke @s only cwm:settings/get_spawn get_spawn
advancement revoke @s only cwm:settings/test_spawn test_spawn
advancement revoke @s only cwm:settings/remove_spawn remove_spawn
advancement revoke @s only cwm:settings/uninstall datapack
advancement revoke @s only cwm:settings/languages/english selected
advancement revoke @s only cwm:settings/languages/french selected

# Reset player
execute unless score $root tms.var matches 1 run tag @s remove has_spawn
tag @s remove lang_fr
tag @s remove open
tag @s add lang_en
tag @s add close

scoreboard players reset @s old_spawn
