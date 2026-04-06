#!/bin/zsh

set -euo pipefail

SCRIPT_DIR="${0:A:h}"
REPO_ROOT="${SCRIPT_DIR}/../../.."
BUILD_DIR="${SCRIPT_DIR}/build"
PDF_OUT_DIR="${REPO_ROOT}/assets/pdfs"

mkdir -p "${BUILD_DIR}" "${PDF_OUT_DIR}"

ASSEMBLED_MD="${BUILD_DIR}/book-v3-assembled.md"
BODY_TEX="${BUILD_DIR}/body.tex"

sources=(
  "${REPO_ROOT}/_includes/book-src-v3/preface.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch01.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch02.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch03.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch04.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch05.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch06.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch07.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch08.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch09.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch10.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch11.md"
  "${REPO_ROOT}/_includes/book-src-v3/ch12.md"
  "${REPO_ROOT}/_includes/book-src-v3/epilogue.md"
  "${REPO_ROOT}/_includes/book-src-v3/appendix-sheets.md"
)

: > "${ASSEMBLED_MD}"
for file in "${sources[@]}"; do
  cat "${file}" >> "${ASSEMBLED_MD}"
  printf '\n\n' >> "${ASSEMBLED_MD}"
done

pandoc "${ASSEMBLED_MD}" \
  --from=gfm+footnotes+pipe_tables \
  --to=latex \
  --top-level-division=chapter \
  --wrap=none \
  --output="${BODY_TEX}"

cd "${SCRIPT_DIR}"
latexmk -xelatex -interaction=nonstopmode -halt-on-error -outdir=build main.tex

cp "${BUILD_DIR}/main.pdf" "${PDF_OUT_DIR}/book-v3-typeset.pdf"

echo "Generated: ${PDF_OUT_DIR}/book-v3-typeset.pdf"
