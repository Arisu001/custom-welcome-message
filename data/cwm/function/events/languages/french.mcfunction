playsound block.note_block.xylophone master @a ~ ~ ~ 1000 .33 0

scoreboard players set $lang_en tms.var 0
scoreboard players add $lang_fr tms.var 1

tag @s remove lang_en
tag @s add lang_fr

advancement revoke @s only cwm:settings/languages/french selected
