execute if score $nb_handler tms.var matches 2.. run tag @a[tag=!handler_fix] remove handler
execute if score $nb_handler_fix tms.var matches 2.. run tag @a[tag=!handler] remove handler_fix
