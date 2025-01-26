# Define the download URL and the output file path for WinRAR
$winrarDownloadUrl = "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701.exe"
$winrarOutputPath = "$env:USERPROFILE\Downloads\winrar_installer.exe"

# Output where the file is going to be saved
Write-Host "Downloading WinRAR..."

# Download WinRAR installer
Invoke-WebRequest -Uri $winrarDownloadUrl -OutFile $winrarOutputPath

# Confirm download
Write-Host "WinRAR installer has been downloaded successfully to $winrarOutputPath."

# Optionally, run the installer silently
Write-Host "Running the WinRAR installer..."
Start-Process -FilePath $winrarOutputPath -ArgumentList "/silent" -NoNewWindow -Wait

Write-Host "WinRAR installation has started."
