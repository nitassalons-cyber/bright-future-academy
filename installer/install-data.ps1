Write-Host "Installing Bright Future Academy databases..."


$dataPath = ".\database"


if (!(Test-Path $dataPath)) {
    New-Item -ItemType Directory -Path $dataPath
}


Write-Host "Database folder ready."
Write-Host "Next: database files will be installed."