#!/bin/bash
# Descarga las 12 diapositivas FLORECE en alta calidad
set -e
mkdir -p FLORECE_12_Diapositivas && cd FLORECE_12_Diapositivas
USER=fc727e5c-2002-409c-80be-544cb78605e3
BASE=https://assets.grok.com/users/$USER/generated

declare -A SLIDES=(
  ["01_Portada_Titulo.jpg"]="00c23c12-4429-43c3-9208-60fc0854d98c"
  ["02_Versiculo_Quote.jpg"]="a2168701-388a-49e2-b612-ef81c750051c"
  ["03_Estadisticas.jpg"]="c3d8f3bf-5544-43f0-a2ad-80ad736edc1a"
  ["04_Tips_para_Florecer.jpg"]="b86cccaa-cf35-41f5-b571-4e81496f28ea"
  ["05_Temas_del_Congreso.jpg"]="faf05ff5-b36c-427b-bc1c-8b4a7ebb00a1"
  ["06_Es_tu_tiempo_de_florecer.jpg"]="dd28245d-33a9-4aa5-a6ae-edf0827acae9"
  ["07_Bienvenida.jpg"]="584a9c8d-72f2-469d-b39a-24d7375a3173"
  ["08_Testimonios.jpg"]="51167836-330c-4307-b9a9-a6a043e35956"
  ["09_Tiempo_de_Oracion.jpg"]="6380121c-f90d-4f2e-af92-0190c4ccb5d3"
  ["10_Nuestro_Equipo.jpg"]="f22d736a-2a8e-46fd-abe3-10e6a42d099b"
  ["11_Horario_del_Congreso.jpg"]="c0dd0035-48aa-4d25-9d3c-c0c38c5519b7"
  ["12_Gracias_Cierre.jpg"]="5f3a8f65-8c45-4c0a-b876-a2a9576aa1d4"
)

for name in $(echo "${!SLIDES[@]}" | tr ' ' '\n' | sort); do
  id="${SLIDES[$name]}"
  echo "⬇️  $name"
  curl -fsSL -o "$name" "$BASE/$id/image.jpg"
done
echo ""
echo "✅ Listo! 12 diapositivas en: $(pwd)"
echo "💜 FLORECE — @florece.mujeres"
