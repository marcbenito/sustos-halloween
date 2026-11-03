#!/bin/sh
# Genera dist/sustos-halloween.zip, el archivo que se sube a la Release.
set -eu
cd "$(dirname "$0")/.."

rm -rf dist
mkdir -p dist/sustos-halloween
cp index.html ayuda.html LICENSE dist/sustos-halloween/
for extra in CREDITOS.md *.streamDeckProfile; do
  if [ -e "$extra" ]; then cp "$extra" dist/sustos-halloween/; fi
done
cat > dist/sustos-halloween/LEEME.txt <<'LEEME'
SUSTOS HALLOWEEN

1. Haz doble clic en index.html. Se abre en tu navegador.
2. Espera a que terminen de prepararse los sonidos.
3. Pulsa Espacio para el fondo, las teclas 1 a 0 para los sustos y V, M, N, J, C y B para las voces.

No necesita internet ni instalar nada. La guía completa está en ayuda.html.
LEEME
(cd dist && zip -qrX sustos-halloween.zip sustos-halloween)
unzip -l dist/sustos-halloween.zip
