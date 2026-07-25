Write-Host "Installing Bright Future Academy question templates..."


$templatePath = ".\templates"


if (!(Test-Path $templatePath)) {
    New-Item -ItemType Directory -Path $templatePath
}


$mathPath = ".\templates\mathematics\money"


if (!(Test-Path $mathPath)) {
    New-Item -ItemType Directory -Path $mathPath -Force
}


Write-Host "Templates folder ready."
Write-Host "Mathematics Money templates location prepared."