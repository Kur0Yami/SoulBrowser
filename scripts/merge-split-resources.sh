#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SPLITS_DIR="${ROOT_DIR}/splits"

if [[ ! -d "${SPLITS_DIR}" ]]; then
  echo "No splits directory found, skipping resource merge"
  exit 0
fi

echo "Merging density-specific resources from split APKs..."
shopt -s nullglob
for split_apk in "${SPLITS_DIR}"/config.*.apk "${SPLITS_DIR}"/split_config.*.apk; do
  [[ -f "${split_apk}" ]] || continue

  mapfile -t entries < <(unzip -Z1 "${split_apk}" 'res/*' 2>/dev/null | grep -v '/$' || true)
  if [[ ${#entries[@]} -eq 0 ]]; then
    continue
  fi

  echo "  merging ${#entries[@]} resources from $(basename "${split_apk}")"
  for entry in "${entries[@]}"; do
    case "${entry}" in
      *.9.png) continue ;;
    esac
    target="${ROOT_DIR}/app/${entry}"
    if [[ -f "${target}" ]]; then
      continue
    fi
    mkdir -p "$(dirname "${target}")"
    unzip -p "${split_apk}" "${entry}" > "${target}"
  done
done
shopt -u nullglob
