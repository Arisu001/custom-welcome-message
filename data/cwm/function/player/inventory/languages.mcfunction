# Remove Help + Custom Message
clear @s #cwm:settings[custom_data={help: 1b, cwm: 1b}]
clear @s #cwm:settings[custom_data={custom_message: 1b, cwm: 1b}]

# English
execute store result storage cwm:inventory lang.english byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.lang.english 1
execute store result score $nb_lang_en tms.var run clear @s #cwm:settings[custom_data={lang: {english: 1b}, cwm: 1b}] 0
execute if score $lang_en tms.var matches 0 unless data storage cwm:inventory {lang: {english: 1b}} run item replace entity @s hotbar.4 with red_banner[custom_data={lang: {english: 1b}, cwm: 1b}] 1
execute if score $nb_lang_en tms.var matches 2.. run clear @s #cwm:settings[custom_data={lang: {english: 1b}, cwm: 1b}]
execute if score $lang_en tms.var matches 0 run item modify entity @s hotbar.4 cwm:settings/languages/english

# French
execute store result storage cwm:inventory lang.french byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.lang.french 1
execute store result score $nb_lang_fr tms.var run clear @s #cwm:settings[custom_data={lang: {french: 1b}, cwm: 1b}] 0
execute if score $lang_fr tms.var matches 0 unless data storage cwm:inventory {lang: {french: 1b}} run item replace entity @s hotbar.4 with blue_banner[custom_data={lang: {french: 1b}, cwm: 1b}] 1
execute if score $nb_lang_fr tms.var matches 2.. run clear @s #cwm:settings[custom_data={lang: {french: 1b}, cwm: 1b}]
execute if score $lang_fr tms.var matches 0 run item modify entity @s hotbar.4 cwm:settings/languages/french
