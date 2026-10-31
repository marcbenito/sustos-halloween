#!/bin/sh
# Copia el index.html de la aplicación al repo y le añade el enlace a la ayuda.
# Uso: scripts/importar-app.sh ruta/al/index.html
set -eu
ORIGEN=$1
cd "$(dirname "$0")/.."

# Abre otra pestaña para que la web siga sonando; rel="opener" deja a la ayuda volver cerrándose
export ENLACE='<a id="ayuda-link" href="ayuda.html" target="_blank" rel="opener" style="position:absolute;top:5px;right:9px;z-index:6;color:var(--brass);font:italic 15px/1.2 var(--text)">Ayuda</a>'

grep -q '<header class="crest">' "$ORIGEN" || { echo "No encuentro <header class=\"crest\"> en $ORIGEN" >&2; exit 1; }
perl -pe 'print "  $ENV{ENLACE}\n" if /<header class="crest">/ && !$hecho++' "$ORIGEN" > index.html
echo "index.html importado desde $ORIGEN con el enlace a la ayuda."
