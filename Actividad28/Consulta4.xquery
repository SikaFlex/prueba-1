(:4. Mostrar solo el título (sin etiquetas), sin atributos, de los libros que tengan precio menor o igual a 30.:)
data(doc("Libreria.xml")/bookstore/book[price<=30]/title)