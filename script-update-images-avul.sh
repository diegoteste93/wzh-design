#!/bin/bash

# Diretório onde os arquivos serão salvos/substituídos
diretorio_destino="/usr/share/wazuh-dashboard/src/core/server/core_app/assets/logos"

# URL base do GitHub para o commit específico no modo raw
url_base="https://raw.githubusercontent.com/diegoteste93/avul-wazuh-design/49f738f5c9be4d80d703d9e4246136ac16f40286"

# Lista dos arquivos para baixar e substituir
arquivos=(
  "icon_dark.svg"
  "icon_light.svg"
  "opensearch.svg"
  "opensearch_center_mark.svg"
  "opensearch_center_mark_dark.svg"
  "opensearch_dashboards_on_dark.svg"
  "opensearch_dashboards_on_light.svg"
  "opensearch_mark.svg"
  "opensearch_mark_on_dark.svg"
  "opensearch_mark_on_light.svg"
  "opensearch_on_dark.svg"
  "opensearch_on_light.svg"
  "opensearch_spinner.svg"
  "opensearch_spinner_on_dark.svg"
  "opensearch_spinner_on_light.svg"
  "wazuh_dashboard_login_background.svg"
  "wazuh_dashboard_login_mark.svg"
)

# Faz o download e substitui cada arquivo
for arquivo in "${arquivos[@]}"; do
  echo "Baixando $arquivo..."
  curl -o "$diretorio_destino/$arquivo" "$url_base/$arquivo"
done

echo "Download e substituição concluídos."

