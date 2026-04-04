function cwm:hud/clear


tellraw @s [{text: "════════[ ", color: "#19df5", bold: true}, {text: "REMOVE SPAWN", color: "red"}, {text: " ]════════"}]
tellraw @s ""
tellraw @s [{text: "[", color: "white"}, {text: "TMS", color: "dark_aqua"}, {text: "] "}, {text: "> ", color: "yellow"}, {text: "Spawn has been removed in ", color: "red"}]
tellraw @s ["           ", {text: "x: ", extra: [{storage: "cwm:player", nbt: "spawn.coords.x", color: "gold"}, ", y:", {storage: "cwm:player", nbt: "spawn.coords.y", color: "gold"}, ", z:", {storage: "cwm:player", nbt: "spawn.coords.z", color: "gold"}, {text: "  |  ", color: "white"}, "orientiation: ", {storage: "cwm:player", nbt: "spawn.coords.dir", color: "gold"}], color: "aqua"}]
tellraw @s ""
tellraw @s ""
tellraw @s {text: "══════════════════════════════", color: "#19df5", bold: true}
