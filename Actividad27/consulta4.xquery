for  $libro in doc("book.xml")/bib/libro
where $libro/@anyo<2000
return $libro/titulo