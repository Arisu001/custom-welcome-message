# English
data merge storage cwm:player { \
    lang: { \
        english: [ \
            { \
                name: [ "Languages", "Help", "Custom ", "Message", "Uninstall" ], \
                languages: { \
                    name: [ "English", "French" ], \
                    lore: [ "Right-click to change language", "French" ] \
                }, \
                help: { \
                    lore: "Right-click to open help" \
                }, \
                custom_message: { \
                    lore: "Right-click to open settings" \
                }, \
                set_spawn: { \
                    name: "Set ", \
                    lore: "Right-click to set spawn" \
                }, \
                get_spawn: { \
                    name: "Get ", \
                    lore: "Right-click to get your spawn" \
                }, \
                test_spawn: { \
                    name: "Test ", \
                    lore: "Right-click to test your spawn" \
                }, \
                undo: { \
                    name: "Undo", \
                    lore: "Right-click to go back" \
                }, \
                remove_spawn: { \
                    name: "Remove ", \
                    lore: "Right-click to remove your spawn" \
                }, \
                uninstall: { \
                    name: [ "Uninstall ", "DataPack" ], \
                    lore: [ "instant double right-click", "   to uninstall it" ] \
                } \
            }, \
            "Right-click", "Actual", "Nothing", "Opened", "Closed", "Activated", "Uninstalled", "Spawn" \
        ] \
    } \
}

# French    
data merge storage cwm:player { \
    lang: { \
        french: [ \
            { \
                name: [ "Langues", "Aide", "Message ", "Personaliser", "Désinstaller" ], \
                languages: { \
                    name: [ "Anglais", "Français" ], \
                    lore: [ "Clic-droit pour changer de langue", "Anglais" ] \
                }, \
                help: { \
                    lore: "Clic-droit pour ouvrir les aides" \
                }, \
                custom_message: { \
                    lore: "Clic-droit pour ouvrir les paramètres" \
                }, \
                set_spawn: { \
                    name: "Créer un ", \
                    lore: "Clic-droit pour créer un point d'apparition" \
                }, \
                get_spawn: { \
                    name: "Voir le ", \
                    lore: "Clic-droit pour voir votre point d'apparition" \
                }, \
                test_spawn: { \
                    name: "Tester le", \
                    lore: "Clic-droit pour tester votre point d'apparition" \
                }, \
                undo: { \
                    lore: "Clic-droit pour revenir en arrière" \
                }, \
                remove_spawn: { \
                    name: "Supprimer le ", \
                    lore: "Clic-droit pour supprimer votre point d'apparition" \
                }, \
                uninstall: { \
                    name: [ "Désinstaller ", "DataPack" ], \
                    lore: [ "Double clic-droit instantané", "   pour le désinstaller" ] \
                } \
            }, \
            "Clic-droit", "Actuel", "Rien", "Ouvert", "Fermé", "Activé", "Désintallé", "Point d'Apparition" \
        ] \
    } \
}

# Remove Spawn
execute unless score $root tms.var matches 1 run data remove storage cwm:player spawn
