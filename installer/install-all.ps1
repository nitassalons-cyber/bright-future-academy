Write-Host "===================================="
Write-Host " Bright Future Academy Installer"
Write-Host "===================================="


Write-Host ""
Write-Host "Installing project structure..."


.\installer\install-engine.ps1

.\installer\install-data.ps1

.\installer\install-templates.ps1


Write-Host ""
Write-Host "Installation process complete."