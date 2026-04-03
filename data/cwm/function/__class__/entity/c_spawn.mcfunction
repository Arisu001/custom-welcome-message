summon marker ~ ~ ~ {Tags: ["cwm_spwn", "cwm"]}
summon marker ~ ~ ~ {Tags: ["cwm_spwn_trg", "cwm"]}

execute as @e[tag=cwm_spwn_trg] at @s run function cwm:data/modify/entity/mc_spawn
