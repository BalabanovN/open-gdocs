@echo off
setlocal
for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "(Get-Content '%~1' | ConvertFrom-Json).url"`) do set "url=%%A"
if defined url (
    start "" "%url%"
) else (
    echo Не удалось извлечь ссылку из файла: %~1
    pause
)

