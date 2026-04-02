particle portal ~ ~ ~ 1 1 1 .1 1000 force @s
playsound entity.illusioner.mirror_move master @s ~ ~ ~ 1000 1 0

tp @s @e[tag=spwn_trg, limit=1]
tag @s add cwm_fix

kill @e[tag=spwn_trg]
