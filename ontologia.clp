;;Clases

(defclass PETICION (is-a INITIAL-OBJECT)
(multislot ingredientes
(type SYMBOL))
(slot nombre_estilo
(type SYMBOL)
(default null))
)

(defclass BUSQUEDA (is-a INITIAL-OBJECT)
(slot id_receta
(type INTEGER))
(slot contado
(type SYMBOL)
(allowed-values si no)
(default no))
)

(defclass RESULTADO (is-a INITIAL-OBJECT)
(slot id_receta
(type INTEGER))
(multislot ingredientes
(type SYMBOL))
(slot nombre_estilo
(type SYMBOL)
(default null))
(slot impreso
(type SYMBOL)
(allowed-values si no)
(default no))
(slot imprimir_paso
(type INTEGER))
)

(defclass RECETA (is-a INITIAL-OBJECT)
(slot id_receta
(type INTEGER))
(slot num_ingr
(type INTEGER))
(slot nombre
(type STRING))
(slot contado
(type SYMBOL)
(allowed-values si no)
(default no))
)

(defclass INGREDIENTE (is-a INITIAL-OBJECT)
(slot id_ingrediente
(type INTEGER))
(slot nombre
(type SYMBOL))
(slot id_receta
(type INTEGER))
(slot cantidad
(type INTEGER))
(slot metrica_cantidad
(type SYMBOL)
(allowed-values gr ml))
)

(defclass ESTILO (is-a INITIAL-OBJECT)
(slot id_receta
(type INTEGER))
(slot nombre_estilo
(type SYMBOL))
)
(defclass PASO (is-a INITIAL-OBJECT)
(slot id_receta
(type INTEGER))
(slot orden
(type INTEGER))
(slot descripcion
(type STRING))
(slot nombre_ingrediente
(type SYMBOL))
)

(defclass CONTADOR (is-a INITIAL-OBJECT)
(slot total-ingredientes
(type INTEGER)
(default 0))
(slot total-recetas
(type INTEGER)
(default 0))
(slot orden
(type INTEGER)
(default 0)))

(defclass BUSQUEDAIN (is-a BUSQUEDA)
(slot id_ingrediente
(type INTEGER))
(slot nombre
(type SYMBOL))

)
(defclass BUSQUEDAES (is-a BUSQUEDA)
(slot nombre_estilo
(type SYMBOL))
)

(defclass RESULTADO-INVENTADO (is-a RESULTADO))
(defclass RESULTADO-ENCONTRADO (is-a RESULTADO))

(defclass APERITIVO (is-a RECETA))
(defclass PRIMERO (is-a RECETA))
(defclass SEGUNDO (is-a RECETA))
(defclass POSTRE (is-a RECETA))
(defclass INFUSION (is-a RECETA))
(defclass VEGETAL (is-a INGREDIENTE))
(defclass HOJA (is-a VEGETAL))
(defclass HORTALIZA (is-a VEGETAL))
(defclass VINAGRE (is-a VEGETAL))
(defclass FRUTO-SECO (is-a VEGETAL))
(defclass SEMILLA (is-a VEGETAL))
(defclass FLOR (is-a VEGETAL))
(defclass LEGUMBRE (is-a VEGETAL))
(defclass FRUTA (is-a VEGETAL))
(defclass ACEITE (is-a VEGETAL))
(defclass CEREAL (is-a VEGETAL))
(defclass TUBERCULO (is-a VEGETAL))
(defclass ESPECIA (is-a VEGETAL))
(defclass MARGARINA (is-a VEGETAL))
(defclass SOJA (is-a VEGETAL))
(defclass CHOCOLATE (is-a VEGETAL))
(defclass SIROPE (is-a VEGETAL))
(defclass ANIMAL (is-a INGREDIENTE))
(defclass EMBUTIDO (is-a ANIMAL))
(defclass MARISCO (is-a ANIMAL))
(defclass HUEVO (is-a ANIMAL))
(defclass PESCADO (is-a ANIMAL))
(defclass CARNE (is-a ANIMAL))
(defclass LACTEO (is-a ANIMAL))
(defclass HONGO (is-a INGREDIENTE))
(defclass MINERAL (is-a INGREDIENTE))
(defclass AZUCAR (is-a MINERAL))
(defclass SAL (is-a MINERAL))
(defclass SINTETICO (is-a INGREDIENTE))
(defclass CHUCHERIA (is-a SINTETICO))
(defclass COLORANTE (is-a SINTETICO))
(defclass SALSA (is-a SINTETICO))
(defclass ASIATICA (is-a ESTILO))
(defclass AMERICANA (is-a ESTILO))
(defclass AFRICANA (is-a ESTILO))
(defclass EUROPEA (is-a ESTILO))
(defclass OCEANICA (is-a ESTILO))

;;Instancias
(definstances recetas
(of PRIMERO (id_receta 0) (num_ingr 3) (nombre "arroz a la cubana"))
(of SEGUNDO (id_receta 1) (num_ingr 4) (nombre "bacalao abra"))
(of APERITIVO (id_receta 2) (num_ingr 2) (nombre "bocata de jamon"))
(of POSTRE (id_receta 3) (num_ingr 2) (nombre "melon con jamon"))
(of SEGUNDO (id_receta 4) (num_ingr 3) (nombre "pollo con manzana"))
(of SEGUNDO (id_receta 5) (num_ingr 4) (nombre "huevos rellenos de salmon"))
(of POSTRE (id_receta 6) (num_ingr 2) (nombre "chocolate de setas magicas"))
(of POSTRE (id_receta 7) (num_ingr 3) (nombre "helados de yogur y fruta"))
(of PRIMERO (id_receta 8) (num_ingr 8) (nombre "Dolmas"))
(of APERITIVO (id_receta 9) (num_ingr 2) (nombre "calamares a la romana"))
(of PRIMERO (id_receta 10) (num_ingr 4) (nombre "kebab griego"))
(of PRIMERO (id_receta 11) (num_ingr 3) (nombre "sushi de atún"))
(of SEGUNDO (id_receta 12) (num_ingr 4) (nombre "hamburguesa con chile"))
(of APERITIVO (id_receta 13) (num_ingr 3) (nombre "langostinos con salsa rosa"))
(of APERITIVO (id_receta 14) (num_ingr 2) (nombre "Hummus con queso"))
)
(definstances ingredientes
(of CEREAL (id_ingrediente 0) (nombre arroz ) (id_receta 0) (cantidad 1000) (metrica_cantidad gr))
(of PESCADO (id_ingrediente 1) (nombre bacalao) (id_receta 1) (cantidad 1000) (metrica_cantidad gr))
(of CEREAL (id_ingrediente 2) (nombre pan) (id_receta 2) (cantidad 500) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 3) (nombre tomate) (id_receta 0) (cantidad 500) (metrica_cantidad ml))
(of EMBUTIDO (id_ingrediente 4) (nombre jamon) (id_receta 2) (cantidad 250) (metrica_cantidad gr))
(of HORTALIZA (id_ingrediente 5) (nombre lechuga) (id_receta 1) (cantidad 300) (metrica_cantidad gr))
(of HUEVO (id_ingrediente 6) (nombre huevo-gallina) (id_receta 0) (cantidad 200) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 7) (nombre aceituna) (id_receta 1) (cantidad 50) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 8) (nombre melon) (id_receta 3) (cantidad 2000) (metrica_cantidad gr))
(of CARNE (id_ingrediente 9) (nombre pollo) (id_receta 4) (cantidad 5000) (metrica_cantidad gr))
(of EMBUTIDO (id_ingrediente 10) (nombre jamon) (id_receta 3) (cantidad 700) (metrica_cantidad gr))
(of HUEVO (id_ingrediente 11) (nombre huevo-avestruz) (id_receta 1) (cantidad 200) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 12) (nombre manzana) (id_receta 4) (cantidad 200) (metrica_cantidad gr))
(of HORTALIZA (id_ingrediente 13) (nombre cebolla) (id_receta 4) (cantidad 550) (metrica_cantidad gr))
(of HUEVO (id_ingrediente 14) (nombre huevo-gallina) (id_receta 5) (cantidad 400) (metrica_cantidad gr))
(of PESCADO (id_ingrediente 15) (nombre salmon-ahumado) (id_receta 5) (cantidad 250) (metrica_cantidad gr))
(of MARISCO (id_ingrediente 16) (nombre langostino) (id_receta 5) (cantidad 300) (metrica_cantidad gr))
(of SALSA (id_ingrediente 17) (nombre besamel) (id_receta 5) (cantidad 300) (metrica_cantidad ml))
(of SALSA (id_ingrediente 18) (nombre mahonesa) (id_receta 5) (cantidad 150) (metrica_cantidad ml))
(of HONGO (id_ingrediente 19) (nombre seta) (id_receta 6) (cantidad 300) (metrica_cantidad gr))
(of CHOCOLATE (id_ingrediente 20) (nombre tableta-chocolate) (id_receta 6) (cantidad 500) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 21) (nombre fresa) (id_receta 7) (cantidad 200) (metrica_cantidad gr))
(of LACTEO (id_ingrediente 22) (nombre yogur) (id_receta 7) (cantidad 500) (metrica_cantidad gr))
(of AZUCAR (id_ingrediente 23) (nombre azucar-integral) (id_receta 7) (cantidad 50) (metrica_cantidad gr))
(of CARNE (id_ingrediente 24) (nombre tenera) (id_receta 8) (cantidad 250) (metrica_cantidad gr))
(of HORTALIZA (id_ingrediente 25) (nombre cebolla) (id_receta 8) (cantidad 75) (metrica_cantidad gr))
(of CEREAL (id_ingrediente 26) (nombre arroz) (id_receta 8) (cantidad 75) (metrica_cantidad gr))
(of SAL (id_ingrediente 27) (nombre sal-marina) (id_receta 8) (cantidad 100) (metrica_cantidad gr))
(of ESPECIA (id_ingrediente 28) (nombre pimienta-negra) (id_receta 8) (cantidad 20) (metrica_cantidad gr))
(of ACEITE (id_ingrediente 29) (nombre aceite-oliva-virgen) (id_receta 8) (cantidad 100) (metrica_cantidad ml))
(of FRUTA (id_ingrediente 30) (nombre naranja) (id_receta 8) (cantidad 60) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 31) (nombre hojas-parra) (id_receta 8) (cantidad 200) (metrica_cantidad gr))
(of MARISCO (id_ingrediente 32) (nombre calamares) (id_receta 9) (cantidad 500) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 33) (nombre limon) (id_receta 9) (cantidad 30) (metrica_cantidad ml))
(of CEREAL (id_ingrediente 34) (nombre pan) (id_receta 10) (cantidad 500) (metrica_cantidad gr))
(of CARNE (id_ingrediente 35) (nombre cordero) (id_receta 10) (cantidad 300) (metrica_cantidad gr))
(of HORTALIZA (id_ingrediente 36) (nombre lechuga) (id_receta 10) (cantidad 100) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 37) (nombre tomate) (id_receta 10) (cantidad 50) (metrica_cantidad gr))
(of CEREAL (id_ingrediente 38) (nombre arroz) (id_receta 11) (cantidad 500) (metrica_cantidad gr))
(of PESCADO (id_ingrediente 39) (nombre atun) (id_receta 11) (cantidad 100) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 40) (nombre aguacate) (id_receta 11) (cantidad 100) (metrica_cantidad gr))
(of CEREAL (id_ingrediente 41) (nombre pan) (id_receta 12) (cantidad 300) (metrica_cantidad gr))
(of CARNE (id_ingrediente 42) (nombre ternera) (id_receta 12) (cantidad 400) (metrica_cantidad gr))
(of FRUTA (id_ingrediente 43) (nombre chile) (id_receta 12) (cantidad 200) (metrica_cantidad ml))
(of FRUTA (id_ingrediente 44) (nombre tomate) (id_receta 12) (cantidad 50) (metrica_cantidad gr))
(of MARISCO (id_ingrediente 45) (nombre langostino) (id_receta 13) (cantidad 200) (metrica_cantidad gr))
(of SALSA (id_ingrediente 46) (nombre ketchup) (id_receta 13) (cantidad 25) (metrica_cantidad gr))
(of SALSA (id_ingrediente 47) (nombre mayonesa) (id_receta 13) (cantidad 25) (metrica_cantidad gr))
(of LEGUMBRE (id_ingrediente 48) (nombre garbanzo) (id_receta 14) (cantidad 300) (metrica_cantidad gr))
(of LACTEO (id_ingrediente 49) (nombre queso) (id_receta 14) (cantidad 150) (metrica_cantidad gr))
)

(definstances pasos
(of PASO (id_receta 0) (orden 0) (descripcion cuece) (nombre_ingrediente arroz))
(of PASO (id_receta 0) (orden 1) (descripcion agrega) (nombre_ingrediente tomate))
(of PASO (id_receta 0) (orden 2) (descripcion rehoga) (nombre_ingrediente arroz))
(of PASO (id_receta 0) (orden 3) (descripcion frie) (nombre_ingrediente huevo-gallina))
(of PASO (id_receta 0) (orden 4) (descripcion junta) (nombre_ingrediente arroz))
(of PASO (id_receta 1) (orden 0) (descripcion frie) (nombre_ingrediente bacalao))
(of PASO (id_receta 1) (orden 1) (descripcion anyade) (nombre_ingrediente lechuga))
(of PASO (id_receta 1) (orden 2) (descripcion corta) (nombre_ingrediente aceituna))
(of PASO (id_receta 1) (orden 3) (descripcion anyade) (nombre_ingrediente aceituna))
(of PASO (id_receta 1) (orden 4) (descripcion junta) (nombre_ingrediente bacalao))
(of PASO (id_receta 1) (orden 5) (descripcion junta) (nombre_ingrediente huevo-avestruz))
(of PASO (id_receta 2) (orden 0) (descripcion corta) (nombre_ingrediente pan))
(of PASO (id_receta 2) (orden 1) (descripcion anyade) (nombre_ingrediente jamon))
(of PASO (id_receta 3) (orden 0) (descripcion corta) (nombre_ingrediente melon))
(of PASO (id_receta 3) (orden 1) (descripcion trocea) (nombre_ingrediente jamon))
(of PASO (id_receta 3) (orden 2) (descripcion anyade) (nombre_ingrediente jamon))
(of PASO (id_receta 4) (orden 0) (descripcion sazona) (nombre_ingrediente pollo))
(of PASO (id_receta 4) (orden 1) (descripcion trocea) (nombre_ingrediente cebolla))
(of PASO (id_receta 4) (orden 2) (descripcion corta) (nombre_ingrediente manzana))
(of PASO (id_receta 4) (orden 3) (descripcion junta) (nombre_ingrediente pollo))
(of PASO (id_receta 5) (orden 0) (descripcion cuece) (nombre_ingrediente huevo-gallina))
(of PASO (id_receta 5) (orden 1) (descripcion mezcla) (nombre_ingrediente salmon-ahumado))
(of PASO (id_receta 5) (orden 2) (descripcion mezcla) (nombre_ingrediente mahonesa))
(of PASO (id_receta 5) (orden 3) (descripcion rellena) (nombre_ingrediente huevo-gallina))
(of PASO (id_receta 5) (orden 4) (descripcion junta) (nombre_ingrediente besamel))
(of PASO (id_receta 5) (orden 5) (descripcion anyade) (nombre_ingrediente langostino))
(of PASO (id_receta 6) (orden 0) (descripcion secar) (nombre_ingrediente seta))
(of PASO (id_receta 6) (orden 1) (descripcion corta) (nombre_ingrediente seta))
(of PASO (id_receta 6) (orden 2) (descripcion desmenuza) (nombre_ingrediente tableta-chocolate))
(of PASO (id_receta 6) (orden 3) (descripcion derrite) (nombre_ingrediente tableta-chocolate))
(of PASO (id_receta 6) (orden 4) (descripcion anyade) (nombre_ingrediente seta))
(of PASO (id_receta 7) (orden 0) (descripcion trocea) (nombre_ingrediente fresa))
(of PASO (id_receta 7) (orden 1) (descripcion mezcla) (nombre_ingrediente yogur))
(of PASO (id_receta 7) (orden 2) (descripcion anyade) (nombre_ingrediente azucar-integral))
(of PASO (id_receta 7) (orden 3) (descripcion bate) (nombre_ingrediente yogur))
(of PASO (id_receta 8) (orden 0) (descripcion lava) (nombre_ingrediente hoja-parra))
(of PASO (id_receta 8) (orden 1) (descripcion hierve) (nombre_ingrediente hoja-parra))
(of PASO (id_receta 8) (orden 2) (descripcion vierte) (nombre_ingrediente aceite-oliva-virgen))
(of PASO (id_receta 8) (orden 3) (descripcion anyade) (nombre_ingrediente cebolla))
(of PASO (id_receta 8) (orden 4) (descripcion muele) (nombre_ingrediente ternera))
(of PASO (id_receta 8) (orden 5) (descripcion anyade) (nombre_ingrediente ternera))
(of PASO (id_receta 8) (orden 6) (descripcion anyade) (nombre_ingrediente sal))
(of PASO (id_receta 8) (orden 7) (descripcion anyade) (nombre_ingrediente pimienta-negra))
(of PASO (id_receta 8) (orden 8) (descripcion sofrie) (nombre_ingrediente ternera))
(of PASO (id_receta 8) (orden 9) (descripcion incorpora) (nombre_ingrediente arroz))
(of PASO (id_receta 8) (orden 10) (descripcion rellena) (nombre_ingrediente hoja-parra))
(of PASO (id_receta 8) (orden 11) (descripcion envuelve) (nombre_ingrediente hoja-parra))
(of PASO (id_receta 9) (orden 0) (descripcion frie) (nombre_ingrediente calamares))
(of PASO (id_receta 9) (orden 1) (descripcion anyade) (nombre_ingrediente limon))
(of PASO (id_receta 10) (orden 0) (descripcion hornea) (nombre_ingrediente cordero))
(of PASO (id_receta 10) (orden 1) (descripcion anyade) (nombre_ingrediente lechuga))
(of PASO (id_receta 10) (orden 2) (descripcion tuesta) (nombre_ingrediente pan))
(of PASO (id_receta 10) (orden 3) (descripcion trocea) (nombre_ingrediente tomate))
(of PASO (id_receta 10) (orden 4) (descripcion anyade) (nombre_ingrediente tomate))
(of PASO (id_receta 11) (orden 0) (descripcion cuece) (nombre_ingrediente arroz))
(of PASO (id_receta 11) (orden 1) (descripcion trocea) (nombre_ingrediente atun))
(of PASO (id_receta 11) (orden 2) (descripcion anyade) (nombre_ingrediente aguacate))
(of PASO (id_receta 12) (orden 0) (descripcion frie) (nombre_ingrediente ternera))
(of PASO (id_receta 12) (orden 1) (descripcion corta) (nombre_ingrediente tomate))
(of PASO (id_receta 12) (orden 2) (descripcion junta) (nombre_ingrediente pan))
(of PASO (id_receta 12) (orden 3) (descripcion anyade) (nombre_ingrediente chile))
(of PASO (id_receta 13) (orden 0) (descripcion pela) (nombre_ingrediente langostino))
(of PASO (id_receta 13) (orden 1) (descripcion anyade) (nombre_ingrediente ketchup))
(of PASO (id_receta 13) (orden 2) (descripcion anyade) (nombre_ingrediente mayonesa))
(of PASO (id_receta 14) (orden 0) (descripcion cuece) (nombre_ingrediente garbanzo))
(of PASO (id_receta 14) (orden 1) (descripcion amasa) (nombre_ingrediente garbanzo))
(of PASO (id_receta 14) (orden 2) (descripcion trocea) (nombre_ingrediente queso))
(of PASO (id_receta 14) (orden 3) (descripcion anyade) (nombre_ingrediente queso))
)

(definstances estilos
(of AMERICANA (id_receta 0)(nombre_estilo cubano))
(of EUROPEA (id_receta 1)(nombre_estilo portugues))
(of EUROPEA (id_receta 2)(nombre_estilo espanol))
(of EUROPEA (id_receta 3)(nombre_estilo espanol))
(of EUROPEA (id_receta 4)(nombre_estilo frances))
(of OCEANICA (id_receta 5)(nombre_estilo australiana))
(of AMERICANA (id_receta 6)(nombre_estilo neoyorquina))
(of EUROPEA (id_receta 7)(nombre_estilo noruego))
(of ASIATICA (id_receta 8) (nombre_estilo libanes))
(of EUROPEA (id_receta 9)(nombre_estilo italiano))
(of EUROPEA (id_receta 10)(nombre_estilo griego))
(of ASIATICA (id_receta 11)(nombre_estilo japones))
(of AMERICANA (id_receta 12)(nombre_estilo norteamericano))
(of EUROPEA (id_receta 13)(nombre_estilo espanol))
(of EUROPEA (id_receta 14)(nombre_estilo turco))

)

(definstances cuentaIngredientesRecetas
(of CONTADOR (total-ingredientes 0) (total-recetas 0)))

