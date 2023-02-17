for $libro in doc("Libreria.xml")/bookstore/book
return<titulo>{data($libro/title)}</titulo>
 (:Mostrar los títulos de los libros con la etiqueta <titulo>.:)