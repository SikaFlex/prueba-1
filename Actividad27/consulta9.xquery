
for $libro in doc("book.xml")/bib/libro

return <result>data({$libro/titulo}{$libro/autor})</result>



 


(:9. Por cada libro, listar agrupado en un elemento
 <result> su título y autores (XML con sus respectivas
  etiquetas).:)