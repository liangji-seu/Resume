$ErrorActionPreference = "Stop"

$miktexBin = Join-Path $env:LOCALAPPDATA "Programs\MiKTeX\miktex\bin\x64"
if (Test-Path $miktexBin) {
  $env:Path = "$miktexBin;$env:Path"
}

xelatex -interaction=nonstopmode resume-zh_CN.tex
xelatex -interaction=nonstopmode resume-zh_CN.tex

Write-Host "Done: resume-zh_CN.pdf"
