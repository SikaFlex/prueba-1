(:7. Mostrar los libros ordenados primero por “category” y después por “title” en una única consulta.:)
for $libro in doc("Libreria.xml")/bookstore/book
order by $libro/@category, $libro/title
return $libro