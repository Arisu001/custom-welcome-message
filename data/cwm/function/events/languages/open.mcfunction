tag @s add open

playsound block.stone_button.click_on master @s ~ ~ ~ 1000 2 0

advancement revoke @s only cwm:settings/languages open_and_close

scoreboard players reset $wtg_clk tms.var
scoreboard players reset $tmp_clk tms.value

tag @s remove close
