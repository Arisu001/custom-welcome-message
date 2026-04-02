playsound block.note_block.xylophone master @a ~ ~ ~ 1000 .33 0

scoreboard players set $lang_fr tms.var 0
scoreboard players add $lang_en tms.var 1

tag @s remove lang_fr
tag @s add lang_en

advancement revoke @s only cwm:settings/languages/english selected
