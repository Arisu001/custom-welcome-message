execute store result entity @s Pos[0] double 1 run data get storage cwm:player spawn.coords.x 1
execute store result score $cwm_tmp_ tms.var run data get entity @s Pos[0] 1000
scoreboard players add $cwm_tmp_ tms.var 500
execute store result entity @s Pos[0] double .001 run scoreboard players get $cwm_tmp_ tms.var
execute store result entity @s Pos[1] double 1 run data get storage cwm:player spawn.coords.y 1
execute store result score $cwm_tmp_ tms.var run data get entity @s Pos[1] 1000
scoreboard players add $cwm_tmp_ tms.var 500
execute store result entity @s Pos[1] double .001 run scoreboard players get $cwm_tmp_ tms.var
execute store result entity @s Pos[2] double 1 run data get storage cwm:player spawn.coords.z 1
execute store result score $cwm_tmp_ tms.var run data get entity @s Pos[2] 1000
scoreboard players add $cwm_tmp_ tms.var 500
execute store result entity @s Pos[2] double .001 run scoreboard players get $cwm_tmp_ tms.var
execute store result entity @s Rotation[0] float 1 run data get storage cwm:player spawn.coords.lr
