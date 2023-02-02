(:Por cada libro, obtener su título y el número de autores,
 agrupados en un elemento <libro> (XML con sus respectivas
etiquetas).:)


for $libro in doc("book.xml")/bib/libro
return <libro>{$libro/titulo}{count($libro/autor)}</libro>