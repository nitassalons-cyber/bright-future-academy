Write-Host "Installing Bright Future Academy Engine..."


$enginePath = ".\engine"


if (!(Test-Path $enginePath)) {
    New-Item -ItemType Directory -Path $enginePath
}


$files = @(
    "randomEngine.js",
    "templateEngine.js",
    "answerEngine.js",
    "questionEngine.js",
    "difficultyEngine.js"
)


foreach ($file in $files) {

    $filePath = Join-Path $enginePath $file

    if (!(Test-Path $filePath)) {

        New-Item -ItemType File -Path $filePath | Out-Null

        Write-Host "Created: $file"

    }
    else {

        Write-Host "Exists: $file"

    }

}


Write-Host "Engine installation complete."