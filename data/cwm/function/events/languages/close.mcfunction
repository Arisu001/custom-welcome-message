tag @s add close

playsound block.stone_button.click_off master @s ~ ~ ~ 1000 0 0

advancement revoke @s only cwm:settings/languages open_and_close

scoreboard players reset $wtg_clk tms.var
scoreboard players reset $tmp_clk tms.value

tag @s remove open
