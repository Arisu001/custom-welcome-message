function cwm:hud/clear


execute unless entity @s[advancements={cwm:settings/get_spawn=true}] run function cwm:hud/chat/_spawn/ic__set
execute unless entity @s[advancements={cwm:settings/set_spawn=true}] run function cwm:hud/chat/_spawn/ic__get
tellraw @s ""
tellraw @s [{"text": "[", "color": "white"}, {"text": "TMS", "color": "dark_aqua"}, {"text": "] "}, {"text": "> ", "color": "yellow"}, {"text": "Coordinates", "color": "gray"}, {"text": ": ", "color": "yellow"}, {"text": "X="}, {"score": {"name": "$cwm_pos-x", "objective": "tms.var"}, "color": "gold"}, "  ", {"text": "Y="}, {"score": {"name": "$cwm_pos-y", "objective": "tms.var"}, "color": "gold"}, "  ", {"text": "Z="}, {"score": {"name": "$cwm_pos-z", "objective": "tms.var"}, "color": "gold"}]
function cwm:player/view
tellraw @s ""
tellraw @s {"text": "═══════════════════════════════", "color": "#19df5", "bold": true}
 