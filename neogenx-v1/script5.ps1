# Define the download URL and the output file path
$discordDownloadUrl = "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x64"
$outputPath = "$env:USERPROFILE\Downloads\discord_installer.exe"

# Output where the file is going to be saved
Write-Host "Downloading Discord installer..."

# Download Discord installer
try {
    Invoke-WebRequest -Uri $discordDownloadUrl -OutFile $outputPath -ErrorAction Stop
    Write-Host "Discord installer has been downloaded successfully to $outputPath."
} catch {
    Write-Host "Error: Failed to download the Discord installer. $_"
    exit 1
}

# Check if the file exists
if (-not (Test-Path -Path $outputPath)) {
    Write-Host "Error: The installer was not downloaded properly."
    exit 1
}

# Confirm and run the installer silently
Write-Host "Running the Discord installer..."
Start-Process -FilePath $outputPath -ArgumentList "/silent" -NoNewWindow -Wait

Write-Host "Discord installation has started."
