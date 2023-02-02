for $libro in doc("book.xml")/bib/libro
where $libro/count(autor)>1
return concat(($libro/titulo),"-->",($libro/@anyo))





(:6. Listar año y título de los libros que tienen más de un autor
 (solo texto, separados por " -> ").:)