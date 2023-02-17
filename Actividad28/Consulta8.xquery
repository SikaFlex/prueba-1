(:8. Mostrar cuántos libros hay, y etiquetarlo con <total>.:)
for $libro in doc("Libreria.xml")/bookstore
return <total> {count($libro/book)} </total>

