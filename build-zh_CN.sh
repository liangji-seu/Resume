#!/usr/bin/env bash
set -euo pipefail

job_name="resume-zh_CN-build"
date_stamp="$(date +%Y-%m-%d)"
output_pdf="梁吉_简历_${date_stamp}.pdf"

xelatex -interaction=nonstopmode -jobname="${job_name}" resume-zh_CN.tex
xelatex -interaction=nonstopmode -jobname="${job_name}" resume-zh_CN.tex

cp "${job_name}.pdf" "${output_pdf}"
rm -f "${job_name}.pdf"

echo "Done: ${output_pdf}"
