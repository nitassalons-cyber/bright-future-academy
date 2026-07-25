Write-Host "Installing Bright Future Academy Engine..."


$enginePath = ".\engine"


if (!(Test-Path $enginePath)) {
    New-Item -ItemType Directory -Path $enginePath
}


Write-Host "Engine folder ready."
Write-Host "Next: engine files will be installed."