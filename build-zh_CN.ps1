$ErrorActionPreference = "Stop"

$miktexBin = Join-Path $env:LOCALAPPDATA "Programs\MiKTeX\miktex\bin\x64"
if (Test-Path $miktexBin) {
  $env:Path = "$miktexBin;$env:Path"
}

$date = Get-Date -Format "yyyy-MM-dd"
$name = "$([char]0x6881)$([char]0x5409)"
$resume = "$([char]0x7b80)$([char]0x5386)"
$outputPdf = "${name}_${resume}_$date.pdf"
$jobName = "resume-zh_CN-build"

xelatex -interaction=nonstopmode "-jobname=$jobName" resume-zh_CN.tex
xelatex -interaction=nonstopmode "-jobname=$jobName" resume-zh_CN.tex

Copy-Item -LiteralPath "$jobName.pdf" -Destination $outputPdf -Force
Remove-Item -LiteralPath "$jobName.pdf" -Force

Write-Host "Done: $outputPdf"
