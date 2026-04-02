# Remove spawn items
clear @s #cwm:settings[custom_data={spawn: {set: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={spawn: {get: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={spawn: {text: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={lang: {english: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={lang: {french: 1b}, cwm: 1b}]

execute if score $cm_close tms.var matches 1 run tag @s remove close
