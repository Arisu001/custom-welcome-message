kill @e[tag=cwm, type=#cwm:__class]

scoreboard players reset * tms.const
scoreboard players reset * tms.temp
scoreboard players reset * tms.value
scoreboard players reset * tms.var
scoreboard players set $cm-close tms.var 0
scoreboard players set $cm-open tms.var 1
scoreboard players set $lang-en tms.var 1
scoreboard players set $lang-fr tms.var 0

advancement revoke @s only cwm:settings/close custom_message
advancement revoke @s only cwm:settings/languages open_and_close
advancement revoke @s only cwm:settings/open custom_message
advancement revoke @s only cwm:settings/set_spawn set_spawn
advancement revoke @s only cwm:settings/get_spawn get_spawn
advancement revoke @s only cwm:settings/test_spawn test_spawn
advancement revoke @s only cwm:settings/uninstall datapack

tag @s remove open
tag @s add close

data merge storage cwm:player {lang: {english: [{name: ["Languages", "Help", "Custom ", "Message", "Uninstall"], languages: {name: ["English", "French"], lore: ["Right-click to change language", "French"]}, help: {lore: "Right-click to open help"}, custom_message: {lore: "Right-click to open settings"}, set_spawn: {name: ["Set ", "Spawn"], lore: "Right-click to set spawn"}, get_spawn: {name: ["Get ", "Spawn"], lore: "Right-click to get your spawn"}, test_spawn: {name: ["Test ", "Spawn"], lore: "Right-click to test your spawn"}, uninstall: {name: ["Uninstall ", "DataPack"], lore: ["instant double right-click", "   to uninstall it"]}}, "Right-click", "Actual", "Nothing", "Opened", "Closed", "Possible", "Impossible", "Activated", "Uninstalled"]}}
data merge storage cwm:player {lang: {french: [{name: ["Langues", "Aide", "Message ", "Personaliser", "Désinstaller"], languages: {name: ["Anglais", "Français"], lore: ["Clic-droit pour changer de langue", "Anglais"]}, help: {lore: "Clic-droit pour ouvrir les aides"}, custom_message: {lore: "Clic-droit pour ouvrir les paramètres"}, set_spawn: {name: ["Créer ", " Point d'Apparition"], lore: "Clic-droit pour créer uin point d'apparition"}, get_spawn: {name: ["Voir ", "Point d'Apparition"], lore: "Clic-droit pour voir votre point d'apparition"}, test_spawn: {name: ["Tester ", "Point d'Apparition"], lore: "Clic-droit pour tester votre point d'apparition"}, uninstall: {name: ["Désinstaller ", "DataPack"], lore: ["Double clic-droit instantané", "   pour le désinstaller"]}}, "Clic-droit", "Actuel", "Rien", "Ouvert", "Fermé", "Possible", "Impossible", "Activé", "Désintallé"]}}
