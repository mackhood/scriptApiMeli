# scriptApiMeli
Exercise to know how to use the api of MercadoLibre


1. Recorrer todos los ítems publicados por el seller_id = 81644614 del
site_id = "MLA"
2. Generar un archivo de LOG que contenga los siguientes datos de
cada ítem:
a. "id" del ítem, "title" del item, "category_id" donde está
publicado, "name" de la categoría.



El script puede recibir como parametros los seller_id , dentro del script se encuentra como constante el site_id MLA como 
no pedia variaciones de site la deje constante. 
#Comando para ejecutar 
ruby scriptMeli.rb o ruby scriptMeli.rb NNNNN NNNNN NNNNNN (siendo NNNNN numeros de seller_id)
por default trae el 81644614.En caso de no pasar ninguno por parametro mostraria las publicaciones de ese vendedor.
