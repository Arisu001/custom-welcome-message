# Handler
execute store result score $nb_handler tms.var if entity @a[tag=handler]
execute store result score $nb_handler_fix tms.var if entity @a[tag=handler_fix]

execute if score $nb_handler tms.var matches 2.. run function cwm:error/adm-1001
execute if score $nb_handler_fix tms.var matches 2.. run function cwm:error/adm-1001
