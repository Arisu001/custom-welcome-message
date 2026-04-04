execute store result entity @s Pos[0] double 1 run scoreboard players get $cwm_pos-ox tms.var
execute store result score $cwm_tmp_ tms.var run data get entity @s Pos[0] 1000
scoreboard players add $cwm_tmp_ tms.var 500
execute store result entity @s Pos[0] double .001 run scoreboard players get $cwm_tmp_ tms.var
execute store result entity @s Pos[1] double 1 run scoreboard players get $cwm_pos-oy tms.var
execute store result score $cwm_tmp_ tms.var run data get entity @s Pos[1] 1000
scoreboard players add $cwm_tmp_ tms.var 500
execute store result entity @s Pos[1] double .001 run scoreboard players get $cwm_tmp_ tms.var
execute store result entity @s Pos[2] double 1 run scoreboard players get $cwm_pos-oz tms.var
execute store result score $cwm_tmp_ tms.var run data get entity @s Pos[2] 1000
scoreboard players add $cwm_tmp_ tms.var 500
execute store result entity @s Pos[2] double .001 run scoreboard players get $cwm_tmp_ tms.var
execute store result entity @s Rotation[0] float 1 run scoreboard players get $cwm_rot-olr tms.var
