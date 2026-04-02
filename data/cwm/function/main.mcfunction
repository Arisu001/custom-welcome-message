function cwm:debug/root
function cwm:config/root


execute unless score $root tms.var matches 1 run function cwm:config/new_handler
execute if entity @s[tag=handler] run function cwm:core/root
