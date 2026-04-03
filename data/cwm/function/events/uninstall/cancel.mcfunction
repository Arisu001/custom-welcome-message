function cwm:hud/chat/ic__uninstall_canceled


advancement revoke @s only cwm:settings/uninstall datapack

particle dust{color: [0.0, 0.0, 0.0], scale: 1.0} ~ ~ ~ 1 1 1 .1 1000 force @s
playsound entity.villager.no master @s ~ ~ ~ 1000 .33 0

scoreboard players reset $inst_dbl_rc tms.var
scoreboard players reset $tmp_dbl_rc tms.value
