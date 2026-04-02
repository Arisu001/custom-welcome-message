# Remove Help
clear @s #cwm:settings[custom_data={help: 1b, cwm: 1b}]

# Set spawn
execute store result storage cwm:inventory spawn.set byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.spawn.set 1
execute store result score $nb_spawn-set tms.var run clear @s #cwm:settings[custom_data={spawn: {set: 1b}, cwm: 1b}] 0
execute unless data storage cwm:inventory {spawn: {set: 1b}} run item replace entity @s hotbar.0 with compass[custom_data={spawn: {set: 1b}, cwm: 1b}] 1
execute if score $nb_spawn-set tms.var matches 2.. run clear @s #cwm:settings[custom_data={spawn: {set: 1b}, cwm: 1b}]
item modify entity @s hotbar.0 cwm:settings/set_spawn

# Get spawn
execute store result storage cwm:inventory spawn.get byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.spawn.get 1
execute store result score $nb_spawn-get tms.var run clear @s #cwm:settings[custom_data={spawn: {get: 1b}, cwm: 1b}] 0
execute unless data storage cwm:inventory {spawn: {get: 1b}} run item replace entity @s hotbar.1 with recovery_compass[custom_data={spawn: {get: 1b}, cwm: 1b}] 1
execute if score $nb_spawn-get tms.var matches 2.. run clear @s #cwm:settings[custom_data={spawn: {get: 1b}, cwm: 1b}]
item modify entity @s hotbar.1 cwm:settings/get_spawn

# Test spawn
execute store result storage cwm:inventory spawn.test byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.spawn.test 1
execute store result score $nb_spawn-test tms.var run clear @s #cwm:settings[custom_data={spawn: {test: 1b}, cwm: 1b}] 0
execute unless data storage cwm:inventory {spawn: {test: 1b}} run item replace entity @s hotbar.2 with nether_star[custom_data={spawn: {test: 1b}, cwm: 1b}] 1
execute if score $nb_spawn-test tms.var matches 2.. run clear @s #cwm:settings[custom_data={spawn: {test: 1b}, cwm: 1b}]
item modify entity @s hotbar.2 cwm:settings/test_spawn

# Close settings
execute store result storage cwm:inventory custom_message.close byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.custom_message.close 1
execute store result score $nb_cm_close tms.var run clear @s #cwm:settings[custom_data={custom_message: {close: 1b}, cwm: 1b}] 0
execute if score $cm_open tms.var matches 0 unless data storage cwm:inventory {custom_message: {close: 1b}} run item replace entity @s hotbar.4 with breeze_rod[custom_data={custom_message: {close: 1b}, cwm: 1b}] 1
execute if score $nb_cm_close tms.var matches 2.. run clear @s #cwm:settings[custom_data={custom_message: {close: 1b}, cwm: 1b}]
execute if score $cm_open tms.var matches 0 run item modify entity @s hotbar.4 cwm:settings/close
