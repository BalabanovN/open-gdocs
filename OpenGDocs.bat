@echo off
setlocal

rem === 0. Check if we received a file argument (.gdoc / .gsheet / .gslides) ===
if "%~1"=="" (
    rem nothing passed — exit silently
    exit /b 0
)

rem === 1. Run everything inside PowerShell ===
rem IMPORTANT: we assume the file path does not contain a single quote '
rem (which almost never appears in normal file names)

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$p = '%~1';" ^
  "if(-not (Test-Path -LiteralPath $p)){ exit 1 }" ^
  "$json = Get-Content -LiteralPath $p -Raw;" ^
  "try { $u = (ConvertFrom-Json $json).url } catch { $u = $null }" ^
  "if($u){ Start-Process $u }"

endlocal
