# Sustos Halloween

Una web para ponerle sonido a una noche de Halloween: fondo de casa encantada, ruidos nocturnos que aparecen solos y 10 sustos que disparas con un clic, una tecla o un botón del Stream Deck.

Es un único archivo HTML con todo el sonido dentro. Funciona sin internet, sin servidor y sin instalar nada.

**[Descargar sustos-halloween.zip](https://github.com/marcbenito/sustos-halloween/releases/latest/download/sustos-halloween.zip)**

## Pruébala en 30 segundos

1. Descarga el ZIP y descomprímelo con un doble clic.
2. Haz doble clic en `index.html`. Se abre en tu navegador.
3. Cuando ponga «Todo listo», pulsa Espacio para el fondo y las teclas de `1` a `0` para los sustos.

Para pararlo todo, pulsa `Z`.

## Ayuda

La guía completa va en el ZIP como `ayuda.html`, y también se abre desde el enlace Ayuda de la web. Explica cómo conectar un altavoz Bluetooth en macOS, configurar el Stream Deck con acciones Hotkey, ver la tabla de teclas, usar tus propios audios y cambiar las teclas.

## Mantenimiento

Para traer una versión nueva de la aplicación y volver a poner su enlace a la ayuda:

```sh
scripts/importar-app.sh ruta/al/index.html
```

Para generar `dist/sustos-halloween.zip`, el archivo que se sube a cada Release:

```sh
scripts/crear-zip.sh
```

El repositorio ya está listo para GitHub Pages: en Settings › Pages, elige Deploy from a branch, rama `main` y carpeta raíz.

## Licencia

Código con licencia [MIT](LICENSE), de Marc Benito.
