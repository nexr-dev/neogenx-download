# Define the download URL and the output file path
$obsDownloadUrl = "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-31.0.1-Windows-Installer.exe"
$outputPath = "$env:USERPROFILE\Downloads\OBS-Studio-Installer.exe"

# Output where the file is going to be saved
Write-Host "Downloading OBS Studio installer..."

# Download OBS Studio installer
try {
    Invoke-WebRequest -Uri $obsDownloadUrl -OutFile $outputPath -ErrorAction Stop
    Write-Host "OBS Studio installer has been downloaded successfully to $outputPath."
} catch {
    Write-Host "Error: Failed to download the OBS Studio installer. $_"
    exit 1
}

# Check if the file exists
if (-not (Test-Path -Path $outputPath)) {
    Write-Host "Error: The installer was not downloaded properly."
    exit 1
}

# Confirm and run the installer silently
Write-Host "Running the OBS Studio installer..."
Start-Process -FilePath $outputPath -ArgumentList "/S" -NoNewWindow -Wait

Write-Host "OBS Studio installation has started."
