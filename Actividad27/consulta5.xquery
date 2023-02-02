for $libro in doc("book.xml")/bib/libro
order by $libro/@anyo
where $libro/editorial="Addison-Wesley" and $libro/@anyo>1992
return  concat(($libro/titulo),"-->",($libro/@anyo))




(:Listar año y título de los libros publicados por 
Addison-Wesley después del año 1992 (solo texto, 
separados por " -> ").:)