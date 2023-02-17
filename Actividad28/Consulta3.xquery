(:3. Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la ruta de XPath.:)
data(doc("Libreria.xml")/bookstore/book[price<=30])
