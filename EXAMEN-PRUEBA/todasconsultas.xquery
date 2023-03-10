for $libro in doc("academia1.xml")/academia/clases

return  concat(($libro/nombre-profesor),($libro/baile),($libro/precio/cuota))

(:Nombre de los profesores, el baile que hacen y el precio de la clase :)


(: 2. Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la cláusula “where”.:)
for $libro in doc("Libreria.xml")/bookstore/book
where $libro/price <= 30
return data($libro)


(:3. Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la ruta de XPath.:)
data(doc("Libreria.xml")/bookstore/book[price<=30])



(:4. Mostrar solo el título (sin etiquetas), sin atributos, de los libros que tengan precio menor o igual a 30.:)
data(doc("Libreria.xml")/bookstore/book[price<=30]/title)


(:5. Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con <lib2005><titulo>...</titulo><autor>...</autor>.:)
for $libro in doc("Libreria.xml")/bookstore/book
where $libro/year
return <lib2005><titulo>{data($libro/title)}</titulo><Autor>{data($libro/author)}</Autor></lib2005>


(:6. Mostrar los años de publicación, primero con “for” y después con “let” para comprobar la diferencia entre ellos. Etiquetar la salida con <publicación>.:)
for $libro in doc("Libreria.xml")/bookstore/book
let $a := data ($libro/year)
let $b := data($libro/title)
return <publicacion> {$a} - {$b} </publicacion>


(:7. Mostrar los libros ordenados primero por “category” y después por “title” en una única consulta.:)
for $libro in doc("Libreria.xml")/bookstore/book
order by $libro/@category, $libro/title
return $libro


(:8. Mostrar cuántos libros hay, y etiquetarlo con <total>.:)
for $libro in doc("Libreria.xml")/bookstore
return <total> {count($libro/book)} </total>

(:9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros.:)
for $libro in doc("Libreria.xml")/bookstore
let $a := count($libro/book)

return ("Total: ",count($libro/book) ,data($libro/book/title))


(:10. Mostrar el precio mínimo y máximo de los libros.:)
for $libro in doc("Libreria.xml")/bookstore

return ("Precio Max: ",max($libro/book/price)," Precio Min: " ,min($libro/book/price))



(:11. Mostrar el título del libro, su precio y precio con IVA incluido, cada uno con su propia etiqueta. Ordénelos por precio con IVA.:)

for $libro in doc("Libreria.xml")/bookstore/book
let $a := $libro/price * 1.21
order by $a , $libro/price  descending

return  (  "Con IVA",$a,"Precio Sin IVA",data($libro/price)," 
")