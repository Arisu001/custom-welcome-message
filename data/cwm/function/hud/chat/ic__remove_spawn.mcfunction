function cwm:hud/clear


tellraw @s [{text: "════════[ ", color: "#19df5", bold: true}, {text: "REMOVE SPAWN", color: "red"}, {text: " ]════════"}]
tellraw @s ""
tellraw @s [{text: "[", color: "white"}, {text: "TMS", color: "dark_aqua"}, {text: "] "}, {text: "> ", color: "yellow"}, {text: "Spawn has been removed in ", color: "red"}]
tellraw @s ["           ", {text: "x: ", extra: [{storage: "cwm:player", nbt: "spawn.coords.x", color: "gold"}, ", y:", {storage: "cwm:player", nbt: "spawn.coords.y", color: "gold"}, ", z:", {storage: "cwm:player", nbt: "spawn.coords.z", color: "gold"}, {text: "  |  ", color: "white"}, "orientiation: ", {storage: "cwm:player", nbt: "spawn.coords.dir", color: "gold"}], color: "aqua"}]
tellraw @s ""
tellraw @s [{text: "[", color: "white"}, {text: "TMS", color: "dark_aqua"}, {text: "] "}, {text: "> ", color: "yellow"}, "[", {text: "Restore", click_event: {action: "run_command", command: "/trigger old_spawn"}, hover_event: {action: "show_text", value: [{text: "INFO", extra: [{text: ":\n\n", color: "yellow", underlined: false}], color: "blue", bold: true, underlined: true}, {text: "- ", extra: [{text: "Click to restore your previous spawn", color: "dark_purple"}], color: "white", bold: false, italic: true, underlined: false}]}, color: "green"}, "]"]
tellraw @s ""
tellraw @s {text: "══════════════════════════════", color: "#19df5", bold: true}
