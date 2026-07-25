Write-Host "===================================="
Write-Host " Bright Future Academy Verification"
Write-Host "===================================="


$folders = @(
    "engine",
    "database",
    "templates",
    "curriculum",
    "generator",
    "output"
)


foreach ($folder in $folders) {

    if (Test-Path $folder) {
        Write-Host "OK Folder: $folder"
    }
    else {
        Write-Host "MISSING Folder: $folder"
    }

}


$files = @(
    "package.json",
    "app.js",
    ".gitignore"
)


foreach ($file in $files) {

    if (Test-Path $file) {
        Write-Host "OK File: $file"
    }
    else {
        Write-Host "MISSING File: $file"
    }

}


Write-Host ""
Write-Host "Verification complete."