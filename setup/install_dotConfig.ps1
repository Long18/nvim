# Util function for output
function Write-Start {
    param($msg)
    Write-Host (">> " + $msg) -ForegroundColor Green; Write-Host
}

function Write-Done {
    Write-Host ("Done!") -ForegroundColor Blue; Write-Host
}

$ConfigPath = "$env:USERPROFILE\.config"
if (-not (Test-Path $ConfigPath)) {
    New-Item -Path $ConfigPath -ItemType Directory -Force
}
Copy-Item -Path ".\config\*" -Destination $ConfigPath -Force -Recurse
Write-Done