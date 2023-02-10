for $libro in doc("academia1.xml")/academia/clases

return  concat(($libro/nombre-profesor),($libro/baile),($libro/precio/cuota))
