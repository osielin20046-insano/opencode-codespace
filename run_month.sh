#!/bin/bash
# Genera un reporte DOF por día (noviembre 2026) en reportes_noviembre/.
# Un archivo por día: reporte_dof_2026-11-DD.json
# Se salta los días que ya tienen archivo (reanudable).
# Modelo: el de opencode.json (opencode/deepseek-v4.1-flash-free); la cuota gratis se reseteó el 2026-11-20 por la noche.
# Se para al primer "Free usage limit reached": el reset del 2026-11-20 solo dio para 2 días y el guion anterior quemó 25 intentos fallidos.
# Sube cada día al repo al terminarlo. Corre en segundo plano con nohup.
cd /workspaces/opencode-codespace || exit 1
mkdir -p reportes_noviembre
LOG="reportes_noviembre/progreso.log"
# El reporte del 20 ya existe en la raíz del repo; reutilizarlo en la carpeta.
if [ -f "reporte_dof_2026-11-20.json" ] && [ ! -f "reportes_noviembre/reporte_dof_2026-11-20.json" ]; then
  cp reporte_dof_2026-11-20.json reportes_noviembre/reporte_dof_2026-11-20.json
  echo "== día 20 reutilizado del archivo existente ==" | tee -a "$LOG"
fi
for DD in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do
  F="reportes_noviembre/reporte_dof_2026-11-$DD.json"
  if [ -f "$F" ]; then
    echo "== día $DD ya existe, se salta ==" | tee -a "$LOG"
    continue
  fi
  echo "== día $DD inicio $(date -u '+%H:%M:%S UTC') ==" | tee -a "$LOG"
  PROMPT="Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. FECHA_INICIO: 2026-11-$DD. FECHA_FIN: 2026-11-$DD. ENTIDADES_FEDERATIVAS: vacío. Genera el reporte y guárdalo en el archivo reportes_noviembre/reporte_dof_2026-11-$DD.json; el archivo debe contener EXCLUSIVAMENTE el objeto JSON, sin Markdown ni texto fuera de él. Si ese día no hay edición del DOF, genera el reporte con estado sin_publicaciones y registra el aviso en mensajes. No imprimas el JSON completo en la terminal, solo un resumen corto de cuántas ediciones, publicaciones y tarjetas generó."
  timeout 1500 opencode run "$PROMPT" < /dev/null > /tmp/dof_dia_$DD.log 2>&1
  DIA_EXIT=$?
  cat /tmp/dof_dia_$DD.log >> "$LOG"
  echo "== día $DD fin exit=$DIA_EXIT $(date -u '+%H:%M:%S UTC') ==" | tee -a "$LOG"
  if grep -q "Free usage limit reached" /tmp/dof_dia_$DD.log; then
    echo "== LÍMITE GRATIS ALCANZADO en día $DD: se para el guion para no quemar intentos. Los días ya hechos quedan guardados. ==" | tee -a "$LOG"
    break
  fi
  git add reportes_noviembre >> "$LOG" 2>&1
  git commit -m "Reporte DOF 2026-11-$DD" >> "$LOG" 2>&1 || true
  git push origin main >> "$LOG" 2>&1 || true
done
echo "== MES COMPLETO $(date -u '+%Y-%m-%d %H:%M:%S UTC') ==" | tee -a "$LOG"
git add reportes_noviembre >> "$LOG" 2>&1
git commit -m "Progreso reportes DOF noviembre 2026" >> "$LOG" 2>&1 || true
git push origin main >> "$LOG" 2>&1 || true
