(:6. Mostrar los años de publicación, primero con “for” y después con “let” para comprobar la diferencia entre ellos. Etiquetar la salida con <publicación>.:)
for $libro in doc("Libreria.xml")/bookstore/book
let $a := data ($libro/year)
let $b := data($libro/title)
return <publicacion> {$a} - {$b} </publicacion>