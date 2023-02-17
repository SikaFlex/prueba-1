(: 2. Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la cláusula “where”.:)
for $libro in doc("Libreria.xml")/bookstore/book
where $libro/price <= 30
return data($libro)