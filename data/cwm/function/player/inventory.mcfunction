# Languages
execute store result storage cwm:inventory languages byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.languages 1
execute store result score $nb_languages tms.var run clear @s #cwm:settings[custom_data={languages: 1b, cwm: 1b}] 0
execute if score $cm_open tms.var matches 1 unless data storage cwm:inventory {languages: 1b} run item replace entity @s hotbar.0 with tripwire_hook[custom_data={languages: 1b, cwm: 1b}] 1
execute if score $nb_languages tms.var matches 2.. run clear @s #cwm:settings[custom_data={languages: 1b, cwm: 1b}]
item modify entity @s hotbar.0 cwm:settings/languages

# Help
execute store result storage cwm:inventory help byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.help 1
execute store result score $nb_help tms.var run clear @s #cwm:settings[custom_data={help: 1b, cwm: 1b}] 0
execute if score $cm_open tms.var matches 1 unless data storage cwm:inventory {help: 1b} run item replace entity @s hotbar.2 with writable_book[custom_data={help: 1b, cwm: 1b}] 1
execute if score $nb_help tms.var matches 2.. run clear @s #cwm:settings[custom_data={help: 1b, cwm: 1b}]
# item modify entity @s hotbar.2 cwm:settings/help

# Open settings
execute store result storage cwm:inventory custom_message.open byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.custom_message.open 1
execute store result score $nb_cm_open tms.var run clear @s #cwm:settings[custom_data={custom_message: {open: 1b}, cwm: 1b}] 0
execute if score $cm_close tms.var matches 0 unless data storage cwm:inventory {custom_message: {open: 1b}} run item replace entity @s hotbar.4 with blaze_rod[custom_data={custom_message: {open: 1b}, cwm: 1b}] 1
execute if score $nb_cm_open tms.var matches 2.. run clear @s #cwm:settings[custom_data={custom_message: {open: 1b}, cwm: 1b}]
execute if score $cm_close tms.var matches 0 run item modify entity @s hotbar.4 cwm:settings/open

# Uninstall datapack
execute store result storage cwm:inventory uninstall byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.uninstall 1
execute store result score $nb_unins tms.var run clear @s #cwm:settings[custom_data={uninstall: 1b, cwm: 1b}] 0
execute unless data storage cwm:inventory {uninstall: 1b} run item replace entity @s hotbar.8 with barrier[custom_data={uninstall: 1b, cwm: 1b}] 1
execute if score $nb_unins tms.var matches 2.. run clear @s #cwm:settings[custom_data={uninstall: 1b, cwm: 1b}]
item modify entity @s hotbar.8 cwm:settings/uninstall


# Open and close
execute if score $cm_close tms.var matches 1 run function cwm:player/inventory/main_settings
execute if score $cm_open tms.var matches 1 run function cwm:player/inventory/init
execute if entity @s[tag=open] run function cwm:player/inventory/languages
execute if entity @s[tag=close] run function cwm:player/inventory/init
execute unless score $cm_close tms.var matches 1 run tag @s[tag=!open] add close

# Modify interaction with blocks
execute if predicate cwm:this/item-in-hand/settings run attribute @s block_interaction_range base set 0.0
execute unless predicate cwm:this/item-in-hand/settings run attribute @s block_interaction_range base reset

# Kill all item with tag "cwm"
kill @e[nbt={Item: {components: {"minecraft:custom_data": {cwm: 1b}}}}]
