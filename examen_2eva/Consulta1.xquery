for $libro in doc("Libreria.xml")/clinica/servicios
let $a:= concat("Empleados: ",$libro/empleados,"Servicios: ", $libro/servicio, "Horarios:", $libro/horario )

return  data($a)

