# news

**TeLoCuento.com** es una web de noticias de actualidad de las que casi nadie más se hace eco. Aquí no encontrarás noticias _"normales"_.
Usa _Bootstrap_ y _jQuery_ aunque se ha adaptado parcialmente el bootstrap estándar a las necesidades concretas.
La web sigue las especificaciones de las tarea, las dos primeras noticias enlazan a páginas individuales con contenido ampliada de la respectiva noticia.
También usa json para almacenar las noticias adicionales y RSS para suscribirse

Todas las noticias tienen una base real, pero parte del texto redactado por mí se ha modificado y/o inventado.

A la hora de hacer las pruebas se debe comentar lo siguiente:

*el comportamiento observado con **Mozilla Firefox** y con **Google Chrome** es distinto
*también es distinto el comportamiento observado entre almacenar la página en local o hacerlo en GitHub / rawgit
*por último, también máquinas diferentes producen resultados diferentes, a pesar de usar idéntico navegador y versión y comparar almacenamiento local entre sí o almacenamiento en servidor entre sí
*todo lo anterior hace que haya sido extremadamente complejo testear la aplicación, existen demasiadas variables si tenemos en cuenta equipo concreto, navegador, versión y tipo de almacenamiento
*a continuación se resumen los entornos comprobados y el comportamiento observado en todos estos entornos (y en alguno más) en función de que se haga scroll hasta el final de la página o se haga clic en el botón de recarga de noticias, al pie de la página. Se ha invertido mucho tiempo en las pruebas y esto va en detrimento de lo que se ha podido poner en las páginas

Los entornos probados son:

1 Firefox v 53.0.2 (32bit) ejecutado localmente
2 Firefox developer v 54.0a2 (2017-04-18) (32bit)
3 Chrome v 58.0.3029.96 ejecutado localmente
4 Chrome v 58.0.3029.110 ejecutado localmente 
