(:9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros.:)
for $libro in doc("Libreria.xml")/bookstore
let $a := count($libro/book)

return ("Total: ",count($libro/book) ,data($libro/book/title))