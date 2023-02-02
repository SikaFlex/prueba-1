for $libro in doc("book.xml")/bib/libro
order by $libro/@anyo
return   <libro>{data($libro/@anyo)}{$libro/titulo}</libro>
