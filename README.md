# Server

Este es el servidor de la API. No logré que funcionara como lo quería, la idea era hacer una petición TheMovieDB con los datos del actor que sacaría de la petición enviada por el frontend pero nunca logré que descargara el JSON. Posteriormente haría otra petición a TheMovieDB con la ID del actor y descargaría sus películas. Por default, TheMovieDB regresa la lista de películas en orden de popularidad, con el Backend las ordenaría por fecha.

Intenté meter todo esto en /lib/server.ex pero en ninguno de mis intentos logré obtener respuesta de la petición. Este es el último.
No usa Phoenix.


## Installation

`mix deps.get`

Para ejecutar, yo uso `mix run --no-halt`.
