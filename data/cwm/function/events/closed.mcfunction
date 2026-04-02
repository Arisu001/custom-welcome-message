playsound block.stone_button.click_off master @s ~ ~ ~ 1000 0 0

scoreboard players set $cm_close tms.var 0
scoreboard players set $cm_open tms.var 1

advancement revoke @s only cwm:settings/close custom_message
