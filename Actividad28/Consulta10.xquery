(:10. Mostrar el precio mínimo y máximo de los libros.:)
for $libro in doc("Libreria.xml")/bookstore

return ("Precio Max: ",max($libro/book/price)," Precio Min: " ,min($libro/book/price))
