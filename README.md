### Para traducir texto del portapapeles

Ubica los archivos espaniolIngles y inglesEspaniol donde guste en tu computador, luego crea un atajo de teclado teclado que apunte a cada uno de estos archivos.

Antes debes darle permisos al archivo con `chmod +x archivo`

Por ejemplo

![Español a ingles](./screenshots/espanolaingles.png)
![Ingles a español](./screenshots/inglesaespanol.png)



Luego de esto al seleccionar un texto en ingles y copiarlo (Ctrl + c) y luego pulsar Ctrl+Alt+1 aparecerá algo como

![ngles a español](./screenshots/1.png)

Y en el caso contrario al seleccionar un texto en español y copiarlo (Ctrl + c) y luego pulsar Ctrl+Alt+2 aparecerá algo como (ademas quedará copiado en el portapapeles)

![Español a ingles](./screenshots/2.png)

En caso de no funcionar instalar 

`sudo apt-get install -y zenity`

`sudo apt-get install -y xsel`

En mac es obligatorio instalar

`brew install zenity`

`brew install wget`