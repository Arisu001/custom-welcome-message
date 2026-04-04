# Register old spawn
execute unless score $cwm_pos-x tms.var = $cwm_pos-ox tms.var unless score $cwm_pos-y tms.var = $cwm_pos-oy tms.var unless score $cwm_pos-z tms.var = $cwm_pos-oz tms.var run function cwm:player/position/old

# Get player position
execute store result score $cwm_pos-x tms.var run data get entity @s Pos[0] 1
execute store result score $cwm_pos-y tms.var run data get entity @s Pos[1] 1
execute store result score $cwm_pos-z tms.var run data get entity @s Pos[2] 1
execute store result score $cwm_rot-lr tms.var run data get entity @s Rotation[0] 1

# Modify storage "spawn.coords"
# New spawn
execute store result storage cwm:player spawn.coords.x int 1 run scoreboard players get $cwm_pos-x tms.var 
execute store result storage cwm:player spawn.coords.y int 1 run scoreboard players get $cwm_pos-y tms.var 
execute store result storage cwm:player spawn.coords.z int 1 run scoreboard players get $cwm_pos-z tms.var 
execute store result storage cwm:player spawn.coords.lr int 1 run scoreboard players get $cwm_rot-lr tms.var 
# Old spawn
execute store result storage cwm:player spawn.coords.ox int 1 run scoreboard players get $cwm_pos-ox tms.var 
execute store result storage cwm:player spawn.coords.oy int 1 run scoreboard players get $cwm_pos-oy tms.var 
execute store result storage cwm:player spawn.coords.oz int 1 run scoreboard players get $cwm_pos-oz tms.var 
execute store result storage cwm:player spawn.coords.olr int 1 run scoreboard players get $cwm_rot-olr tms.var 

# Register new spawn
spawnpoint @s ~ ~ ~ ~ ~
setworldspawn ~ ~ ~ ~ ~
