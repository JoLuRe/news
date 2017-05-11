# news

## TeLoCuento.com

**TeLoCuento.com** es una web de noticias de actualidad de las que casi nadie más se hace eco. Aquí no encontrarás noticias _"normales"_.
Usa _Bootstrap_ y _jQuery_ aunque se ha adaptado parcialmente el bootstrap estándar a las necesidades concretas.
La web sigue las especificaciones de las tarea, las dos primeras noticias enlazan a páginas individuales con contenido ampliado de la respectiva noticia.
También usa _json_ para almacenar las noticias adicionales y _RSS_ para suscribirse

## Origen de las noticias
Todas las noticias tienen una base real, pero parte del texto redactado por mí se ha modificado y/o inventado.

## Pruebas
A la hora de hacer las pruebas se debe comentar lo siguiente:

* el comportamiento observado con **Mozilla Firefox** y con **Google Chrome** es distinto
* también es distinto el comportamiento observado entre almacenar la página en local o hacerlo en GitHub / rawgit
* por último, también máquinas diferentes producen resultados diferentes, a pesar de usar idéntico navegador y versión y comparar almacenamiento local entre sí o almacenamiento en servidor entre sí
* todo lo anterior hace que haya sido extremadamente complejo testear la aplicación, existen demasiadas variables si tenemos en cuenta equipo concreto, navegador, versión y tipo de almacenamiento
* a continuación se resumen los entornos comprobados y el comportamiento observado en todos estos entornos (y en alguno más) en función de que se haga scroll hasta el final de la página o se haga clic en el botón de recarga de noticias, al pie de la página. Se ha invertido mucho tiempo en las pruebas y esto va en detrimento de lo que se ha podido poner en las páginas

### Los entornos probados son:

1. Firefox v 53.0.2 (32bit) ejecutado localmente
2. Firefox developer v 54.0a2 (2017-04-18) (32bit)
3. Chrome v 58.0.3029.96 ejecutado localmente
4. Chrome v 58.0.3029.110 ejecutado localmente 
5. el mismo que 1 almacenado en GitHub
6. el mismo que 2 almacenado en GitHub
7. el mismo que 3 almacenado en GitHub
8. el mismo que 4 almacenado en GitHub

### La casuística probada incluye:

cargar más noticias usando el botón de recarga (BOTÓN) o bien haciendo scroll hasta el final de la página (SCROLL)

9. forzar la primera recarga con BOTÓN y a segunda recarga con BOTÓN
10. forzar la primera recarga con BOTÓN y a segunda recarga con SCROLL
11. forzar la primera recarga con SCROLL y a segunda recarga con BOTÓN
12. forzar la primera recarga con SCROLL y a segunda recarga con BOTÓN

### Los resultados obtenidos son:

En general, se consigue que el sistema funcione cuando se ejecuta desde servidor pero no lo hace en local (hasta que he decubierto esto he perdido mucho tiempo en pruebas que inicialmente realizaba en local)
Mozilla Firefox se comporta mejor que Chrome, en local responde a los eventos mientras que Chrome no
Cambiando de máquina (he probado hasta 4 PCs) se obtienen resultados diferentes (desde el "no hace nada de nada" hasta el "funciona bien) lo cual todavía me deja más desconcertado
