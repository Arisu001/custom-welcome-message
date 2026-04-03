# Confirm uninstall datapack
tellraw @s {"text": "═══════════════════════════════", "color": "#19df5", "bold": true}
tellraw @s ""
tellraw @s [{"text": "[", "color": "white", "bold": false}, {"text": "TMS", "color": "aqua"}, {"text": "] "}, {"text": "> ", "color": "yellow"},  {"text": "Custom Welcome Message", "color": "light_purple"}, {"text": "'s succefully uninstalled", "color": "green"}]
tellraw @s ""
tellraw @s {"text": "═══════════════════════════════", "color": "#19df5", "bold": true}

# Remove all scoreboard
scoreboard objectives remove tms.const
scoreboard objectives remove tms.temp
scoreboard objectives remove tms.value
scoreboard objectives remove tms.var
scoreboard objectives remove cwm.leave

# Remove all tags
tag @s remove lang_en
tag @s remove lang_fr
tag @s remove close
tag @s remove open
tag @s remove no_spawn
tag @s remove has_spawn
tag @s remove cwm_fix
tag @s remove handler
tag @s remove handler_fix

# Clear handler
clear @s #cwm:settings[custom_data={languages: 1b, cwm: 1b}]
clear @s #cwm:settings[custom_data={help: 1b, cwm: 1b}]
clear @s #cwm:settings[custom_data={custom_message: {close: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={custom_message: {open: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={spawn: {set: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={spawn: {get: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={spawn: {test: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={spawn: {undo: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={spawn: {remove: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={spawn: {uninstall: 1b}, cwm: 1b}]
clear @s #cwm:settings[custom_data={uninstall: 1b, cwm: 1b}]

# Remove all storage 
data remove storage cwm:inventory help
data remove storage cwm:inventory custom_message
data remove storage cwm:inventory uninstall
data remove storage cwm:inventory spawn
data remove storage cwm:inventory languages
data remove storage cwm:inventory lang
data remove storage cwm:player lang
data remove storage cwm:player spawn

# Kill all entities
kill @e[tag=cwm, type=#cwm:__class]


# Disable datapack
datapack disable "file/custom-welcome-message"
datapack disable "file/master-custom-welcome-message"
datapack disable "file/main-custom-welcome-message"
