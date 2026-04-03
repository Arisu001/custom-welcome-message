execute store result score $cwm_pos-x tms.var run data get entity @s Pos[0] 1
execute store result score $cwm_pos-y tms.var run data get entity @s Pos[1] 1
execute store result score $cwm_pos-z tms.var run data get entity @s Pos[2] 1
execute store result score $cwm_rot-lr tms.var run data get entity @s Rotation[0] 1
function cwm:data/modify/storage/player_spawn
spawnpoint @s ~ ~ ~ ~ ~
setworldspawn ~ ~ ~ ~ ~
 