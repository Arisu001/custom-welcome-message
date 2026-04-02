playsound block.stone_button.click_on master @s ~ ~ ~ 1000 2 0

scoreboard players set $cm-open tms.var 0
scoreboard players set $cm-close tms.var 1


advancement revoke @s only cwm:settings/open custom_message
