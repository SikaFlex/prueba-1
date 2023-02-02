
for $libro in doc("book.xml")/bib/libro
where $libro/empty(autor)
return concat(($libro/titulo),"-->",($libro/@anyo))



(:7. Listar año y título de los libros que carecen de autor 
(solo texto, separados por " -> ").:)