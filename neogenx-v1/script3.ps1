# Define the download URL and the output file path
$chromeDownloadUrl = "https://dl.google.com/chrome/install/375.126/chrome_installer.exe"
$outputPath = "$env:USERPROFILE\Downloads\chrome_installer.exe"

# Output where the file is going to be saved
Write-Host "Downloading Google Chrome installer..."

# Download Chrome installer
Invoke-WebRequest -Uri $chromeDownloadUrl -OutFile $outputPath

# Confirm download
Write-Host "Google Chrome installer has been downloaded successfully to $outputPath."

# Optionally, run the installer silently
Write-Host "Running the installer..."
Start-Process -FilePath $outputPath -ArgumentList "/silent" -NoNewWindow -Wait

Write-Host "Google Chrome installation has started."
