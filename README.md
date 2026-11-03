# Sustos Halloween

Una web para ponerle sonido a una noche de Halloween: fondo de casa encantada, ruidos nocturnos que aparecen solos, 10 sustos y 6 frases con voz grave que disparas con un clic, una tecla o un botón del Stream Deck.

Es un único archivo HTML con todo el sonido dentro: la mayoría se sintetiza en la propia página, trueno, cadenas, tacones y latido son grabaciones reales con licencia libre, y las frases salen de una voz libre de Piper. Funciona sin internet, sin servidor y sin instalar nada.

**[Descargar sustos-halloween.zip](https://github.com/marcbenito/sustos-halloween/releases/latest/download/sustos-halloween.zip)**

## Pruébala en 30 segundos

1. Descarga el ZIP y descomprímelo con un doble clic.
2. Haz doble clic en `index.html`. Se abre en tu navegador.
3. Cuando ponga «Todo listo», pulsa Espacio para el fondo y las teclas de `1` a `0` para los sustos. Las voces van con `V`, `M`, `N`, `J`, `C` y `B`.

Pulsar un sonido que ya suena lo detiene. Para cortarlo todo, pulsa `Z`: en segundo y medio, más o menos, queda en silencio.

## Ayuda

La guía completa va en el ZIP como `ayuda.html`, y también se abre desde el enlace Ayuda de la web. Explica cómo conectar un altavoz Bluetooth en macOS, configurar el Stream Deck con acciones Hotkey, ver la tabla de teclas, elegir el fondo (Silencio, Viento o Música) y ajustar la mezcla, usar tus propios audios y cambiar las teclas.

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

Código con licencia [MIT](LICENSE), de Marc Benito. Las cuatro grabaciones reales conservan su marca CC0 y las voces salen de un modelo libre; los orígenes están en [CREDITOS.md](CREDITOS.md).
