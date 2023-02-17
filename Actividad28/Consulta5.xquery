(:5. Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con <lib2005><titulo>...</titulo><autor>...</autor>.:)
for $libro in doc("Libreria.xml")/bookstore/book
where $libro/year
return <lib2005><titulo>{data($libro/title)}</titulo><Autor>{data($libro/author)}</Autor></lib2005>