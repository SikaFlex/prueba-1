(:. Mostrar los apellidos de los autores que aparecen
 en el documento, sin repeticiones, ordenados 
 alfabéticamente (solo texto).:)
 
for $libro in distinct-values(doc("book.xml")/bib/libro/autor/apellido)
order by ($libro)
return data($libro)
