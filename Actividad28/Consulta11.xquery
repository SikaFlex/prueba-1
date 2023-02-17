(:11. Mostrar el título del libro, su precio y precio con IVA incluido, cada uno con su propia etiqueta. Ordénelos por precio con IVA.:)

for $libro in doc("Libreria.xml")/bookstore/book
let $a := $libro/price * 1.21
order by $a , $libro/price  descending

return  (  "Con IVA",$a,"Precio Sin IVA",data($libro/price)," 
")

