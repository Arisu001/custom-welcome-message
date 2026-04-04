advancement revoke @s only cwm:settings/set_spawn set_spawn
advancement revoke @s only cwm:settings/test_spawn test_spawn

scoreboard players reset $wtg_clk tms.var
scoreboard players reset $tmp_clk tms.value

tag @s remove set_spwn
tag @s remove tst_spwn
