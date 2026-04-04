# Instant double righ-click
execute if score $inst_dbl_rc tms.var matches 1 run scoreboard players add $tmp_dbl_rc tms.value 1
execute if score $tmp_dbl_rc tms.value matches 3.. run function cwm:tools/uninstall/setup
execute if score $tmp_dbl_rc tms.value matches 10.. unless score $inst_dbl_rc tms.var matches 2 run function cwm:events/uninstall/cancel


# Temporary right-click
execute if score $wtg_clk tms.var matches 1 run scoreboard players add $tmp_clk tms.value 1


# Languages
# Open
execute if entity @s[tag=close] if score $tmp_clk tms.value matches 2.. run function cwm:events/languages/open
# Close
execute if entity @s[tag=open] if score $tmp_clk tms.value matches 2.. run function cwm:events/languages/close


# Spawn = Wait 20s to reuse
# Set
execute if entity @s[tag=set_spwn] if score $tmp_clk tms.value matches 10.. run function cwm:events/can_reuse
# Test
execute if entity @s[tag=tst_spwn] if score $tmp_clk tms.value matches 10.. run function cwm:events/can_reuse


# Verify storage
execute if data storage cwm:player spawn.coords{} run function cwm:events/set_spawn/added
execute unless data storage cwm:player spawn.coords{} run function cwm:events/set_spawn/removed
