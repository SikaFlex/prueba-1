for $libro in doc("book.xml")/bib/libro
where $libro/precio=65.95
return $libro